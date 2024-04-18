# dotfiles

New machine configuration.

## X-Code CLI Tools

```shell
xcode-select --install
```

## [Homebrew](https://brew.sh/)

```shell
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

Run the commands given by Homebrew that look like the following:
```shell
# (echo; echo 'eval "$(/opt/homebrew/bin/brew shellenv)"') >> /Users/{USERNAME}/.zprofile
# eval "$(/opt/homebrew/bin/brew shellenv)"
```

### Install useful packages
```shell
brew install \
    git \
    gh \
    python \
    libomp \
    cmake \
    wget \
    awscli \
    exa \
    bat \
    starship \
    zsh-autocomplete \
    zsh-autosuggestions \
    zsh-completions \
    zsh-history-substring-search \
    zsh-syntax-highlighting
```

#### Setup completions, suggestions, and syntax, etc.

Add zsh-autosuggestions (at or near the bottom of .zshrc -- but it's at the top right now)
```shell
echo 'source $HOMEBREW_PREFIX/share/zsh-autosuggestions/zsh-autosuggestions.zsh' >> .zshrc
```

Add zsh-autocomplete (at or near the top of .zshrc -- but it's at the top right now)
```shell
echo 'source $HOMEBREW_PREFIX/share/zsh-autocomplete/zsh-autocomplete.plugin.zsh' >> .zshrc
```

Add zsh-completions
```shell
echo 'if type brew &>/dev/null' >> .zshrc
echo 'then' >> .zshrc
echo '  FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"' >> .zshrc
echo '' >> .zshrc
echo '  autoload -Uz compinit' >> .zshrc
echo '  compinit' >> .zshrc
echo 'fi' >> .zshrc
```

Add zsh-history-substring-search (to the end of .zshrc -- but it's near the top right now)
```shell
source $HOMEBREW_PREFIX/share/zsh-history-substring-search/zsh-history-substring-search.zsh
```

Add zsh-syntax-highlighting (to the end of .zshrc -- but it's near the top right now)
```shell
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
```

#### Use homebrew py311 for `python` alias

```shell
echo '' >> .zshrc
echo '# Use homebrew's py311 for `python`' >> .zshrc
echo 'export PATH="$PATH:/opt/homebrew/opt/python@3.11/libexec/bin"' >> .zshrc
```

## [exa](https://github.com/ogham/exa)
```shell
echo '' >> .zshrc
echo '# exa Aliases' >> .zshrc
echo 'alias ls="exa --icons --classify --group-directories-first --oneline"' >> .zshrc
echo 'alias ll="ls --long --group --header --git"' >> .zshrc
echo 'alias lla="ll --all"' >> .zshrc
echo 'alias tree="ls --tree"' >> .zshrc
echo 'alias treel="ll --tree"' >> .zshrc
echo 'alias treela="lla --tree"' >> .zshrc
```

## Miniconda

```shell
mkdir -p ~/miniconda3
curl https://repo.anaconda.com/miniconda/Miniconda3-latest-MacOSX-arm64.sh -o ~/miniconda3/miniconda.sh
bash ~/miniconda3/miniconda.sh -b -u -p ~/miniconda3/
rm -rf ~/miniconda3/miniconda.sh

~/miniconda3/bin/conda init zsh
```

## [Starship](https://starship.rs/)

We just installed it with homebrew, but check their [guides](https://starship.rs/guide/) to install in other OS.

cp the `starship.toml` to the config directory
```sh
cp starship.toml ~/.config/starship.toml
```

Add to the end of **.zshrc**
```shell
echo '' >> .zshrc
echo '# Always at the bottom' >> .zshrc
echo 'eval "$(starship init zsh)"' >> .zshrc
```

## Fonts

Download and install favorite fonts:
* [GeistMono Nerd Font](https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/GeistMono.zip)
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

