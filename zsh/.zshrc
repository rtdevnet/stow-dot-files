# Enable command auto-correction
setopt CORRECT

# Enable history file and append mode
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt APPEND_HISTORY
setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY  # Share history across sessions
setopt HIST_IGNORE_ALL_DUPS  # Auto-remove duplicate entries in history
setopt HIST_IGNORE_SPACE  # Ignore commands that start with a space from history
setopt HIST_REDUCE_BLANKS  # Remove blank lines from history

# Improve tab completion experience
autoload -Uz compinit
compinit
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'  # Case-insensitive tab completion
zstyle ':completion:*' rehash true  # Reduce completion delay
zstyle ':completion:*' use-cache on  # Cache completions for faster startup
zstyle ':completion:*' cache-path ~/.zsh/cache
zstyle ':completion:*' menu select  # Enables a menu for completions
zstyle ':completion:*:descriptions' format '%F{yellow}%d%f'  # Highlight descriptions
zstyle ':completion:*' list-colors '=(#b)black=31'  # Colorize matches

# Enable extended globbing (e.g., `ls **/*.txt`)
setopt EXTENDED_GLOB

# Aliases for convenience
alias ll='ls -lh'
alias la='ls -lha'
alias ..='cd ..'
alias ...='cd ../..'
alias gs="git status"
alias brewup="brew update && brew upgrade && brew cleanup"

# Automatically change directory if you type a folder name
setopt AUTO_CD

# Disable flow control (useful for Ctrl-S/Ctrl-Q)
setopt NO_FLOW_CONTROL

# Enable auto-pushd for a directory stack
setopt AUTO_PUSHD
setopt PUSHD_SILENT  # Display the directory stack

# Bind up/down arrows to history search
bindkey '^[[A' history-search-backward
bindkey '^[[B' history-search-forward

# Set environment variables
export CLICOLOR=1  # Improve `ls` readability (macOS)
export LSCOLORS=GxFxCxDxBxegedabagaced
export EDITOR="nvim"
export VISUAL="$EDITOR"
export PAGER="less"

# Set a simple but informative prompt
PROMPT='%F{cyan}%n@%m%f %F{yellow}%~%f %# '

# Enable smart spelling correction for commands
SPROMPT='Correct "%R" to "%r"? [Yes, No, Abort, Edit]'

# Reset colors on line init
zle -N zle-line-init
zle-line-init() {
  echo -n "\e[0m"  # Reset colors
}

# Set a report time for long-running commands
REPORTTIME=10

# Function to edit and source the zshrc file
vizsh() {
  ${EDITOR:-nano} ~/.zshrc && source ~/.zshrc
}

# Set up tmuxifier -- expects tmuxifier project cloned to ~/.tmuxifier/
export PATH="$HOME/.tmuxifier/bin:$PATH"

eval "$(tmuxifier init -)" 
  
  
  
  
  
  
  
  
  
  
  
  
