# dotfiles

New machine configuration.

## X-Code CLI Tools

```shell
xcode-select --install
```

## Homebrew

```shell
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew install git gh python tree libomp cmake wget awscli
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

**zpreztorc:30**
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

**zpreztorc:155**
```shell
# Set the prompt theme to load.
# Setting it to 'random' loads a random theme.
# Auto set to 'off' on dumb terminals.
zstyle ':prezto:module:prompt' theme 'spaceship'
```

**zprofile**
*Only for OSX*
```shell
#
# Custom Additions
#

# Added by homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

# Added by me
export PATH="$PATH:/opt/homebrew/opt/python@3.11/libexec/bin"
```

**zshrc**
*Only for OSX*
```shell
echo 'autoload bashcompinit && bashcompinit' >> ~/.zshrc
echo 'complete -C "/opt/homebrew/bin/aws_completer" aws' >> ~/.zshrc
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
* [Ayu Mirage](https://raw.githubusercontent.com/mbadolato/iTerm2-Color-Schemes/master/schemes/Ayu%20Mirage.itermcolors)
* [ayu light](https://raw.githubusercontent.com/mbadolato/iTerm2-Color-Schemes/master/schemes/ayu_light.itermcolors)
* [Calamity](https://raw.githubusercontent.com/mbadolato/iTerm2-Color-Schemes/master/schemes/Calamity.itermcolors)
* [CLRS](https://raw.githubusercontent.com/mbadolato/iTerm2-Color-Schemes/master/schemes/CLRS.itermcolors)
* [Darkside](https://raw.githubusercontent.com/mbadolato/iTerm2-Color-Schemes/master/schemes/Darkside.itermcolors)
* [LiquidCarbon](https://raw.githubusercontent.com/mbadolato/iTerm2-Color-Schemes/master/schemes/LiquidCarbon.itermcolors)
* [MonokaiSoda](https://raw.githubusercontent.com/mbadolato/iTerm2-Color-Schemes/master/schemes/Monokai%20Soda.itermcolors)
* [OneHalfLight](https://raw.githubusercontent.com/mbadolato/iTerm2-Color-Schemes/master/schemes/OneHalfLight.itermcolors)
* [PaleNightHC](https://raw.githubusercontent.com/mbadolato/iTerm2-Color-Schemes/master/schemes/PaleNightHC.itermcolors)
* [Red Planet](https://raw.githubusercontent.com/mbadolato/iTerm2-Color-Schemes/master/schemes/Red%20Planet.itermcolors)
* [Smyck](https://raw.githubusercontent.com/mbadolato/iTerm2-Color-Schemes/master/schemes/Smyck.itermcolors)
* [Snazzy](https://raw.githubusercontent.com/mbadolato/iTerm2-Color-Schemes/master/schemes/Snazzy.itermcolors)
* [Spacedust](https://raw.githubusercontent.com/mbadolato/iTerm2-Color-Schemes/master/schemes/Spacedust.itermcolors)
* [ToyChest](https://raw.githubusercontent.com/mbadolato/iTerm2-Color-Schemes/master/schemes/ToyChest.itermcolors)
* [vimbones](https://raw.githubusercontent.com/mbadolato/iTerm2-Color-Schemes/master/schemes/vimbones.itermcolors)
* [Arthur](https://raw.githubusercontent.com/mbadolato/iTerm2-Color-Schemes/master/schemes/Arthur.itermcolors)
* [Chester](https://raw.githubusercontent.com/mbadolato/iTerm2-Color-Schemes/master/schemes/Chester.itermcolors)
* [idleToes](https://raw.githubusercontent.com/mbadolato/iTerm2-Color-Schemes/master/schemes/idleToes.itermcolors)

## VS Code Themes

* Ayu Mirage Bordered
* Monokai Pro
* Monokai Dark Soda (?)
* Material Theme Darker
* Material Neutral
* Panda
* Baby Panda
* oh-lucy-evening
* Andromeda
* Snazzy Light
* Snazzy Operator Softer
* peacocks-in-space

# To-Do

* Save dotfiles as flatfiles (e.g. `.gitignore` as `gitignore`) then symlink to them.
  * Check out https://github.com/ryanb/dotfiles
* Check against:
  * https://github.com/nicolashery/mac-dev-setup
  * https://www.robinwieruch.de/mac-setup-web-development
  * https://medium.com/@hendurhance/how-to-set-up-m2-macbook-for-software-development-4a5e20a7866a
  * https://betterprogramming.pub/how-to-set-up-your-macbook-for-web-developent-in-2021-a7a1f53f6462

