function fish_greeting
	pfetch
end

function nvm
  bass source /opt/homebrew/opt/nvm/nvm.sh --no-use ';' nvm $argv
end

set -gx XDG_CONFIG_HOME $HOME/.config
set -gx XDG_DATA_HOME $HOME/.local/share
set -gx TMUX_CONFIG_DIR $XDG_CONFIG_HOME/tmux
set -gx TMUX_PLUGIN_MANAGER_PATH $TMUX_CONFIG_DIR/plugins/
set -gx TMUX_POWERLINE_CONFIG_FILE $TMUX_CONFIG_DIR/powerline/config.sh

set -gx ANDROID $HOME/Library/Android
set -gx ANDROID_HOME $ANDROID/sdk
set -gx GEM_HOME ~/.gems

set -gx ENABLE_LSP_TOOLS 1
set -gx ALACRITTY_THEME rose-pine
set -gx PYTHONDONTWRITEBYTECODE 1
set -gx OPENCV_LIB_DIR /opt/homebrew/Cellar/opencv/4.12.0/lib
set -gx OPENCV4NODEJS_DISABLE_AUTOBUILD 1

fish_add_path --path \
  /usr/local/go/bin \
  $HOME/.local/bin \
  $HOME/.local/share/nvim/mason/bin \
  $GEM_HOME/bin \
  /opt/nvim/bin \
  /opt/bin \
  $HOME/.gem/ruby/2.6.0/bin \
  $ANDROID_HOME/emulator \
  $ANDROID_HOME/cmdline-tools/latest/bin \
  $ANDROID_HOME/platform-tools \
  $ANDROID_HOME/tools/bin \
  /opt/flutter/bin \
  $ANDROID_HOME/tools \
  /Applications/Postgres.app/Contents/Versions/latest/bin \
  $HOME/.cargo/bin \
  /opt/homebrew/bin \
  $HOME/.antigravity/antigravity/bin

if status is-interactive
  pyenv init - fish | source
  nvm use 20
end
