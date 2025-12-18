# This allows for Bash style Tab completion
Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete

Invoke-Expression (&starship init powershell)
