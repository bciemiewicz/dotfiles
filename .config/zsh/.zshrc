autoload -Uz compinit promptinit
compinit
promptinit

# This will set the default prompt to the walters theme
#prompt walters

zstyle ':completion:*' menu select
zstyle ':completion::complete:*' gain-privileges 1

# Define the theme
#prompt_mytheme_setup() {
PROMPT="%F{51}[%n %~]%f "
#RPROMPT=
#}

# Add the theme to promptsys
#prompt_themes+=( mytheme )

# Load the theme
#prompt mytheme

# aliases
[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/shell/aliasrc" ] && source "${XDG_CONFIG_HOME:-$HOME/.config}/shell/aliasrc"

# path
PATH="$PATH:$HOME/.local/bin"
export PATH

# Import the colors.
. "${HOME}/.cache/wal/colors.sh"

# Create the alias.
alias dmen='dmenu_run -nb "$color0" -nf "$color15" -sb "$color1" -sf "$color15"'
