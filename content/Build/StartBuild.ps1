

# .".\InstallMicrosoftDataToolsMSBuild.ps1"
# .".\InvokeMsBuildSSDT.ps1"
# Install-MicrosoftDataToolsMSBuild -WorkingFolder $PSScriptRoot

Install-MicrosoftDataToolsMSBuild -WorkingFolder $PSScriptRoot

try {
    Find-Module -Name "PoshSSDTBuildDeploy"
}
catch {
    Write-Host "No PoshSSDTBuildDeploy" 
    Install-PackageProvider -Name NuGet -Force -Scope CurrentUser
    Install-Module PoshSSDTBuildDeploy -Force -Scope CurrentUser
}
finally {
    Import-Module PoshSSDTBuildDeploy -Force
    Write-Host " PoshSSDTBuildDeploy Imported"
}