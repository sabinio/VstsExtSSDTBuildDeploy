
try {
    Find-Module -Name "PoshSSDTBuildDeploy"
}
catch {
    Write-Host "No PoshSSDTBuildDeploy" 
    Install-PackageProvider -Name NuGet -Force -Scope CurrentUser
    Install-Module PoshSSDTBuildDeploy -Force -Scope CurrentUser
}
Import-Module PoshSSDTBuildDeploy -Force
Write-Host "PoshSSDTBuildDeploy Imported"
Install-MicrosoftDataToolsMSBuild -WorkingFolder $PSScriptRoot