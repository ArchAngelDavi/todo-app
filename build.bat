@echo off

REM Check for the platform argument
IF "%1"=="" (
    echo Usage: build.bat <platform>
    echo Platforms: android, ios, web
    exit /b
)

SET PLATFORM=%1

IF "%PLATFORM%"=="android" (
    echo Building for Android...
    flutter build apk --release
) ELSE IF "%PLATFORM%"=="ios" (
    echo Building for iOS...
    flutter build ios --release
) ELSE IF "%PLATFORM%"=="web" (
    echo Building for Web...
    flutter build web --release
) ELSE (
    echo Invalid platform specified. Use: android, ios, or web.
    exit /b
)

echo Build completed for %PLATFORM%.
