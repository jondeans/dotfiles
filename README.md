# dotfiles

New machine configuration.

## X-Code CLI Tools

```shell
xcode-select --install
```

## Homebrew

```shell
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew install gh, python, tree, libomp, cmake
# brew install starship
```

## Prezto

Install configuration framework for Zsh, [Prezto](https://github.com/sorin-ionescu/prezto).

```shell
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
```

Some of the dotfiles will already be created by OS X. 
You may need to append their info to the end of the prezto dotfiles if you want functional symlinks.

```shell
setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done
```

**zpreztorc**
```shell
# Set the Prezto modules to load (browse modules).
# The order matters.
zstyle ':prezto:load' pmodule \
  'environment' \
  'terminal' \
  'editor' \
  'history' \
  'directory' \
  'spectrum' \
  'utility' \
  'completion' \
  'git' \
  'ssh' \
  'homebrew' \
  'osx' \
  'python' \
  'syntax-highlighting' \
  'history-substring-search' \
  'contrib-prompt' \
  'prompt'
```
...
```shell
# Set the prompt theme to load.
# Setting it to 'random' loads a random theme.
# Auto set to 'off' on dumb terminals.
zstyle ':prezto:module:prompt' theme 'spaceship'
```

**zprofile**
```shell
#
# Custom Additions
#

# Added by Toolbox App
export PATH="$PATH:/Users/<username>/Library/Application Support/JetBrains/Toolbox/scripts"

# Added by homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

# Added by me
export PATH="$PATH:/opt/homebrew/opt/python@3.11/libexec/bin"
```

**zshrc**
```shell
#
# Aliases
#
...

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/jondeans/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/jondeans/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/jondeans/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/jondeans/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
```

## Fonts

Download and install favorite fonts:
* [IBM Plex Mono](https://fonts.google.com/specimen/IBM+Plex+Mono)
* [JetBrains Mono](https://fonts.google.com/specimen/JetBrains+Mono)
* [Fira Mono](https://fonts.google.com/specimen/Fira+Mono)

## Terminal

Download and install [iTerm2](https://iterm2.com/).

Make any global changes you want inherited to alternate profiles in the **Default** profile first.

* Profiles > Text > Font > "Favorite Font"
* Profiles > Text > Font > 12
* Profiles > Text > Font > Use ligatures
* Profiles > Window > Transparency > 10 
* Profiles > Window > Blur > 10
* Profiles > Window > Settings for New Windows > Columns > 100
* Profiles > Window > Settings for New Windows > Rows > 60
* Profiles > Terminal > Unlimited Scrollback

Download and install favorite [themes](https://iterm2colorschemes.com/):
* Andromeda
* Ayu Mirage
* ayu light
* BirdsOfParadise
* BlulocoDark
* Calamity
* Chalk
* CLRS
* Darkside
* Firewatch
* Github
* Hopscotch.256
* JetBrains Darcula
* LiquidCarbon
* ManPage
* Mariana
* Material
* MaterialDesignColors
* matrix
* MonokaiSoda
* Night Owlish Light
* OneHalfLight
* PaleNightHC
* Paraiso Dark
* PencilLight
* Piatto Light
* Red Planet
* Smyck
* Snazzy
* Spacedust
* SpaceGray Eighties
* Thayer Bright
* ToyChest
* Ubuntu
* vimbones
* WarmNeon
* Framer
* Arthur
* ChallengerDeep
* Chester
* Dark+
* Galaxy
* idleToes
* SeaShells

