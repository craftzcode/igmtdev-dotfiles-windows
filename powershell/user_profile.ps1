# Powershell to UTF-8
[console]::InputEncoding = [console]::OutputEncoding = New-Object System.Text.UTF8Encoding

# Prompt
Import-Module posh-git
$omp_config = Join-Path $PSScriptRoot ".\igmtdev.omp.json"
oh-my-posh --init --shell pwsh --config $omp_config | Invoke-Expression

# Alias
Set-Alias g git
Set-Alias clr clear
Set-Alias -Name vim -Value nvim
Set-Alias tig 'C:\Program Files\Git\usr\bin\tig.exe'
Set-Alias less 'C:\Program Files\Git\usr\bin\less.exe'

# Terminal Icons
Import-Module -Name Terminal-Icons

# Zoxide
Invoke-Expression (& { (zoxide init powershell | Out-String) })

# Eza
function ll {
	eza --color=always --long --git --no-filesize --icons=always --no-time --no-user --no-permissions @args
}
function lt {
	eza --tree @args
}

# PSReadLine
Set-PSReadLineOption -EditMode Emacs
Set-PSReadLineOption -BellStyle None
Set-PSReadLineKeyHandler -Chord 'Ctrl+d' -Function DeleteChar
Set-PSReadLineOption -PredictionSource History

# Fzf
Import-Module PSFzf
Set-PsFzfOption -PSReadlineChordProvider 'Ctrl+f' -PSReadlineChordReverseHistory 'Ctrl+r'

# Utilities
function which ($command) {
  Get-Command -Name $command -ErrorAction SilentlyContinue |
    Select-Object -ExpandProperty Path -ErrorAction SilentlyContinue
}
