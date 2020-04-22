$ErrorActionPreference = "Stop"
Import-Module "$env:ChocolateyInstall\helpers\chocolateyInstaller.psm1"

$Bash = 'C:\Program Files\Git\bin\bash.exe'
$KubectxHome = & $Bash -c "cygpath -u '$PSScriptRoot'"

Install-BinFile -Name kubectl-ctx -Path $Bash -Command "$KubectxHome/kubectx-win32-wrapper"
Install-BinFile -Name kubectl-ns -Path $Bash -Command "$KubectxHome/kubens-win32-wrapper"
