import java.io.File;
import java.io.IOException;
import java.nio.file.*;
import java.nio.file.attribute.BasicFileAttributes;
import java.util.Comparator;

public class DevLaunch {
    public static void main(String[] args) throws Exception {
        Path configDir = Paths.get("config");
        Path overridesConfigDir = Paths.get(".pakku", "client-overrides", "config");

        System.out.println("Wiping root config directory...");
        if (Files.exists(configDir)) {
            Files.walk(configDir)
                 .sorted(Comparator.reverseOrder())
                 .map(Path::toFile)
                 .forEach(File::delete);
        }

        if (Files.exists(overridesConfigDir)) {
            System.out.println("Copying overrides from " + overridesConfigDir + " to " + configDir + "...");
            copyDirectory(overridesConfigDir, configDir);
        } else {
            System.out.println("No overrides found at " + overridesConfigDir + ". Skipping copy.");
        }

        System.out.println("Running pakku fetch...");
        
        String javaExe = System.getenv("INST_JAVA");
        if (javaExe == null || javaExe.isEmpty()) {
            javaExe = "java"; 
        }

        ProcessBuilder pb = new ProcessBuilder(javaExe, "-jar", "pakku.jar", "fetch");
        pb.inheritIO();
        Process p = pb.start();
        
        int exitCode = p.waitFor();
        System.exit(exitCode);
    }

    private static void copyDirectory(Path source, Path target) throws IOException {
        Files.walkFileTree(source, new SimpleFileVisitor<Path>() {
            @Override
            public FileVisitResult preVisitDirectory(Path dir, BasicFileAttributes attrs) throws IOException {
                Path targetDir = target.resolve(source.relativize(dir));
                if (!Files.exists(targetDir)) {
                    Files.createDirectory(targetDir);
                }
                return FileVisitResult.CONTINUE;
            }

            @Override
            public FileVisitResult visitFile(Path file, BasicFileAttributes attrs) throws IOException {
                Files.copy(file, target.resolve(source.relativize(file)), StandardCopyOption.REPLACE_EXISTING);
                return FileVisitResult.CONTINUE;
            }
        });
    }
}