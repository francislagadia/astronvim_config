# AstroNvim User Configuration Example

A user configuration template for [AstroNvim](https://github.com/AstroNvim/AstroNvim)


## Prerequisite(s)

1. [pyenv](https://github.com/pyenv/pyenv) virtual env named `neovim`
    - Referenced in `python3_host_prog = ~/.pyenv/versions/neovim/bin/python`

## 🛠️ Installation
#### Make a backup of your current nvim and shared folder

```shell
mv ~/.config/nvim ~/.config/nvim.bak
mv ~/.local/share/nvim ~/.local/share/nvim.bak
```

#### Clone AstroNvim

```shell
git clone https://github.com/AstroNvim/AstroNvim ~/.config/nvim
```

#### Create a new user repository from this template

Press the "Use this template" button above to create a new repository to store your user configuration.

You can also just clone this repository directly if you do not want to track your user configuration in GitHub.

#### Clone the repository

```shell
git clone git@github.com:francislagadia/astronvim_config.git ~/.config/nvim/lua/user
```

#### Start Neovim

```shell
nvim
```
