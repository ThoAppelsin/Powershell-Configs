Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete
New-Alias jb jupyter-notebook
New-Alias jn jupyter-notebook
New-Alias nb jupyter-notebook

# $oldOutputEncoding = $OutputEncoding; $oldConsoleEncoding = [Console]::OutputEncoding
# $OutputEncoding = [console]::InputEncoding = [console]::OutputEncoding = New-Object System.Text.Utf8Encoding

Import-Module 'C:\tools\poshgit\dahlbyk-posh-git-9bda399\src\posh-git.psd1'

$GitPromptSettings.DefaultPromptPath = '$(gprompt)'
$GitPromptSettings.EnableWindowTitle = ' ' # Edits title to have repo info without prefix

Import-Module cd-extras

# Hopefully reduces delay, these are already in environment
if (!$env:InclGuard) {
	# Race condition?
	$env:InclGuard = $True
	
	# Paths to directories of configuration files and scripts
	$env:NVIMDIR = Join-Path $env:LOCALAPPDATA nvim
	$env:SUBLDIR = Join-Path $env:APPDATA "Sublime Text 3/Packages/User"
	$env:CMDLETSDIR = Join-Path $env:HOME "cmdlets"

	$env:Path += "$env:CMDLETSDIR;"
}
