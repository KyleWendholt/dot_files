# Bash configs

## Bashrc

Add to end of file, changing Reopos to your repo directory
```bash
# User specific aliases and functions

Repos="$HOME/Repos"


eval "$(starship init bash)"

alias sys_update='sudo dnf update && flatpak update'
alias myip='curl ipinfo.io/ip && echo'
alias dev="{ code $Repos & google-chrome github.com & disown -r & flatpak run io.github.shiftey.Desktop & disown; } >/dev/null 2>&1"
```

## Starship
Add [starship.toml](starship.toml) to ~/.config
