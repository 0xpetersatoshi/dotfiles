# Aliases
alias ll='eza --icons=always -l'
alias ls='eza --icons=always'
alias tree='eza --icons=always --tree'
alias cat='bat'


# Create an alias for staging gcloud.
alias gstage='bazelisk run //:gcloud -- --project=tally-stage'
# Create an alias for staging kubectl.
alias kstage='bazelisk run //infra/clusters/tally-stage/us-east4-a:kubectl --'

# snowsql
alias snowsql=/Applications/SnowSQL.app/Contents/MacOS/snowsql
[[ "$OSTYPE" == "darwin"* && -f /opt/homebrew/bin/kubectl ]] && source <(kubectl completion zsh)

# nvim
alias vim=nvim
alias v='nvim'

