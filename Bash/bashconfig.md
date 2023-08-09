# Bash configs

## Bashrc

Add to end of file
```bash
eval "$(starship init bash)"

alias sys_update='sudo dnf update && flatpak update'
alias myip='curl ipinfo.io/ip && echo'
```

## Starship
Add [starship.toml](starship.toml) to ~/.config
