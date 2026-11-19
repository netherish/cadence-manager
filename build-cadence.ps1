$ErrorActionPreference = "Stop"
$env:JAVA_HOME = "C:\Program Files\Eclipse Adoptium\jdk-17.0.21.9-hotspot"
$env:PATH = "$env:JAVA_HOME\bin;$env:PATH"
$env:ANDROID_HOME = "C:\AndroidSdk"
$env:ANDROID_SDK_ROOT = "C:\AndroidSdk"

Set-Location "C:\Users\Admin\Documents\Default Project\revanced-manager"

Write-Output "Building Cadence Manager release APK..."
.\gradlew.bat assembleRelease --no-daemon

$apk = "app\build\outputs\apk\release\app-release.apk"
if (Test-Path $apk) {
    Copy-Item $apk "..\cadence-manager.apk" -Force
    Write-Output "APK copied to: C:\Users\Admin\Documents\Default Project\cadence-manager.apk"
} else {
    Write-Output "APK not found at expected path."
    Get-ChildItem "app\build\outputs\apk" -Recurse -Filter *.apk -ErrorAction SilentlyContinue | ForEach-Object { $_.FullName }
}
