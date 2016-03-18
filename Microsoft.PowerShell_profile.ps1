# Here
$ProfileRoot = (Split-Path -Parent $MyInvocation.MyCommand.Path)

# Include scripts
$env:path += ";$ProfileRoot\Scripts"

# Aliases
Set-Alias vim gvim

# posh-git
. $ProfileRoot\PoshGit.ps1
