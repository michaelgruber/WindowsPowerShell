# Include scripts
$ProfileRoot = (Split-Path -Parent $MyInvocation.MyCommand.Path)
$env:path += ";$ProfileRoot\Scripts"

# Aliases
Set-Alias vim 'C:\Program Files (x86)\Vim\vim74\gvim.exe'

# Color style
. "$ProfileRoot\Config\solarized.ps1"

# Load posh-git
. 'C:\Users\Michael\Src\posh-git\profile.example.ps1'

# General
set-location ~
