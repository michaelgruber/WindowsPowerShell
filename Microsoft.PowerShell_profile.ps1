# Here
$ProfileRoot = (Split-Path -Parent $MyInvocation.MyCommand.Path)

# Include scripts
$env:path += ";$ProfileRoot\Scripts"

# Aliases
Set-Alias vim nvim
Set-Alias pass gopass

# posh-git
. $ProfileRoot\PoshGit.ps1
