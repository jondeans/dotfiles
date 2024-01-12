# dotfiles

New machine configuration.

## X-Code CLI Tools

```shell
xcode-select --install
```

## Homebrew

```shell
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew install git gh python tree libomp cmake exa wget rustup
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

Install `prezto-contrib`
```shell
cd $ZPREZTODIR
git clone --recurse-submodules https://github.com/belak/prezto-contrib contrib
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

# Added by homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

# Added by me
export PATH="$PATH:/opt/homebrew/opt/python@3.11/libexec/bin"
```

## Miniconda

Download the latest [shell install script](https://repo.anaconda.com/miniconda/Miniconda3-latest-MacOSX-arm64.sh).

Follow install instructions, etc.

```shell
mkdir -p ~/miniconda3
curl https://repo.anaconda.com/miniconda/Miniconda3-latest-MacOSC-arm64.sh -o ~/miniconda3/miniconda.sh
bash ~/miniconda3/miniconda.sh -b -u -p ~/miniconda3/
rm -rf ~/miniconda3/miniconda.sh

~/miniconda3/bin/conda init zsh
```

## Fonts

Download and install favorite fonts:
* [IBM Plex Mono](https://fonts.google.com/specimen/IBM+Plex+Mono)
* [JetBrains Mono](https://fonts.google.com/specimen/JetBrains+Mono)
* [JetBrains Mono Nerd Font](https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.1/JetBrainsMono.zip)
* [Fira Code](https://fonts.google.com/specimen/Fira+Code)
* [Fira Code Nerd Font](https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.1/FiraCode.zip)

## Terminal

Download and install [iTerm2](https://iterm2.com/).

* Preferences > General > Window > Unselect "Native full screen windows"
* Preferences > Appearance > General > Theme > "Minimal"
* Preferences > Appearance > Windows > Select "Hide scrollbars"
* Preferences > Appearance > Tabs > Unselect "Show tab bar in fullscreen"

Make any changes you want inherited to alternate profiles in the **Default** profile first.
* Preferences > Profiles > Keys > Key Mappings > Presets > "Natural Text Editing"
* Preferences > Profiles > Text > Font > "Favorite Font"
* Preferences > Profiles > Text > Font > 12
* Preferences > Profiles > Text > Font > Use ligatures
* Preferences > Profiles > Window > Transparency > 10 
* Preferences > Profiles > Window > Blur > 10
* Preferences > Profiles > Window > Settings for New Windows > Columns > 120
* Preferences > Profiles > Window > Settings for New Windows > Rows > 60
* Preferences > Profiles > Terminal > Unlimited Scrollback

Download and install favorite [themes](https://iterm2colorschemes.com/):
* Ayu Mirage
* ayu light
* Calamity
* CLRS
* Darkside
* LiquidCarbon
* MonokaiSoda
* OneHalfLight
* PaleNightHC
* Red Planet
* Smyck
* Snazzy
* Spacedust
* ToyChest
* vimbones
* Arthur
* Chester
* idleToes

# To-Do

* Save dotfiles as flatfiles (e.g. `.gitignore` as `gitignore`) then symlink to them. Check out https://github.com/ryanb/dotfiles
