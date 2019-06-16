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

# Paths to directories of NeoVim and Sublime Text 3 configuration files
$env:NVIMDIR = Join-Path $env:LOCALAPPDATA nvim
$env:SUBLDIR = Join-Path $env:APPDATA "Sublime Text 3/Packages/User"

