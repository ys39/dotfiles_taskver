# ログイン時に1回実
# 環境変数（exportで宣言する変数）
export PATH="$HOME/.local/bin:$PATH"
eval "$(~/.rbenv/bin/rbenv init - bash)"
export PATH="$PATH:/usr/local/go/bin"
export GOPATH='~/.gopath'
export PATH="$PATH:$(go env GOPATH)/bin"
. "$HOME/.cargo/env"
export WASMTIME_HOME="$HOME/.wasmtime"
export PATH="$WASMTIME_HOME/bin:$PATH"
