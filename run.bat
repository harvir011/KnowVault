@echo off
cd /d "%~dp0"
java --version >nul 2>nul
if errorlevel 1 (
  echo Java 25 or newer is required. Install it and ensure java is on PATH.
  exit /b 1
)
for /f "tokens=3" %%v in ('java -XshowSettings:properties -version 2^>^&1 ^| findstr /c:"java.specification.version"') do set "JAVA_VERSION=%%v"
for /f "tokens=1 delims=." %%m in ("%JAVA_VERSION%") do set "JAVA_MAJOR=%%m"
if not defined JAVA_MAJOR (
  echo Could not determine the Java version. Java 25 or newer is required.
  exit /b 1
)
if %JAVA_MAJOR% LSS 25 (
  echo Java 25 or newer is required. Detected Java %JAVA_MAJOR%.
  exit /b 1
)
where mvn >nul 2>nul
if errorlevel 1 (
  call mvnw.cmd javafx:run
) else (
  mvn javafx:run
)
