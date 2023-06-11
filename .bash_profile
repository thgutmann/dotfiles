# ~/bin
if [ -d ~/bin ]; then
	export PATH=$PATH:~/bin
fi

# source my dotfiles (bash.aliases)
if [ -f ~/src/dotfiles/bash.aliases ]; then
        source ~/src/dotfiles/bash.aliases
fi

export PATH="/Applications/Sublime Text.app/Contents/SharedSupport/bin:$PATH"

eval "$(/opt/homebrew/bin/brew shellenv)"

# include git-prompt
# installed by homebrew
# source: https://github.com/magicmonty/bash-git-prompt
if [ -f "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh" ]; then
  __GIT_PROMPT_DIR=$(brew --prefix)/opt/bash-git-prompt/share
  GIT_PROMPT_ONLY_IN_REPO=1
  source "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh"
fi

# EOF

