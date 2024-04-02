# Bash configs

## Bashrc

Add to end of file, changing Repos to your repo directory
And Editor to default editor (has been tested with vscode and neovim)

````bash
# User specific aliases and functions

Repos=''
Editor=''

eval "$(starship init bash)"

alias sys_update=''
alias myip='curl ipinfo.io/ip && echo'

## Starship
Make sure to download a nerd font before use.
[FiraCode Nerd Font](https://github.com/ryanoasis/nerd-fonts/releases)

Add [starship.toml](starship.toml) to ~/.config

## Neovim
```bash
sudo dnf install nvim
````

Follow [NvChad](https://nvchad.com/docs/quickstart/install) guide

Default works fine.
