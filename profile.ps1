#
# GENERAL
#

# Include scripts
$ProfileRoot = (Split-Path -Parent $MyInvocation.MyCommand.Path)
$env:path += ";$ProfileRoot\Scripts"

# Add Git\bin to this PowerShell session
$env:path += ";" + (Get-Item "Env:ProgramFiles(x86)").Value + "\Git\bin"

# Aliases
Set-Alias vim 'C:\Vim74\gvim.exe'


#
# PROMPT
#

set-location C:\

# Posh-git
. 'C:\tools\poshgit\dahlbyk-posh-git-3874a02\profile.example.ps1' # load profile

# Posh-hg
if(Test-Path Function:\Prompt) {Rename-Item Function:\Prompt PrePoshHGPrompt -Force}
if(!(Test-Path function:\TabExpansion)) { New-Item function:\Global:TabExpansion -value '' | Out-Null }

. 'C:\Chocolatey\lib\Posh-HG.1.1.0.20120528\JeremySkinner-posh-hg-2cabd74\profile.example.ps1' # load profile

Rename-Item Function:\Prompt PoshHGPrompt -Force
function Prompt() {if(Test-Path Function:\PrePoshHGPrompt){++$global:poshScope; New-Item function:\script:Write-host -value "param([object] `$object, `$backgroundColor, `$foregroundColor, [switch] `$nonewline) " -Force | Out-Null;$private:p = PrePoshHGPrompt; if(--$global:poshScope -eq 0) {Remove-Item function:\Write-Host -Force}}PoshHGPrompt}