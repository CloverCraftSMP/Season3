import java.io.File;
import java.io.IOException;
import java.nio.file.*;
import java.nio.file.attribute.BasicFileAttributes;
import java.util.Comparator;

public class DevLaunch {
    public static void main(String[] args) throws Exception {
        Path configDir = Paths.get("config");
        Path commonOverridesDir = Paths.get(".pakku", "overrides", "config");
        Path clientOverridesDir = Paths.get(".pakku", "client-overrides", "config");

        System.out.println("Wiping root config directory...");
        if (Files.exists(configDir)) {
            Files.walk(configDir)
                 .sorted(Comparator.reverseOrder())
                 .map(Path::toFile)
                 .forEach(File::delete);
        }

        if (Files.exists(commonOverridesDir)) {
            System.out.println("Copying common overrides from " + commonOverridesDir + " to " + configDir + "...");
            copyDirectory(commonOverridesDir, configDir);
        } else {
            System.out.println("No common overrides found at " + commonOverridesDir + ". Skipping copy.");
        }

        if (Files.exists(clientOverridesDir)) {
            System.out.println("Copying client overrides from " + clientOverridesDir + " to " + configDir + "...");
            copyDirectory(clientOverridesDir, configDir);
        } else {
            System.out.println("No client overrides found at " + clientOverridesDir + ". Skipping copy.");
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