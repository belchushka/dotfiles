function fish_greeting
	pfetch
end

function nvm
  bass source /opt/homebrew/opt/nvm/nvm.sh --no-use ';' nvm $argv
end


if status is-login
  set -x PATH /opt/homebrew/bin $PATH;

  set -x ANDROID $HOME/Library/Android;
  set -x ANDROID_HOME $ANDROID/sdk;
  set -x GEM_HOME ~/.gems;
  set -x PATH $HOME/.cargo/bin $PATH
  set -x PATH /Applications/Postgres.app/Contents/Versions/latest/bin $PATH;
  set -x PATH $ANDROID_HOME/tools $PATH;
  set -x PATH /opt/flutter/bin $PATH;
  set -x PATH $ANDROID_HOME/tools/bin $PATH;
  set -x PATH $ANDROID_HOME/platform-tools $PATH;
  set -x PATH $ANDROID_HOME/emulator $PATH;
  set -x PATH $HOME/.cargo/env $PATH
  set -x PATH /Users/belchushka/.gem/ruby/2.6.0/bin $PATH
  set -x PATH /opt/bin $PATH
  set -x PATH /opt/nvim/bin $PATH
  set -x PATH $GEM_HOME/bin $PATH
  set -x PATH /Users/belchushka/.local/bin $PATH
  set -x ALACRITTY_THEME rose-pine
  set -x PYTHONDONTWRITEBYTECODE 1
  set -x OPENCV_LIB_DIR /opt/homebrew/Cellar/opencv/4.11.0_1/lib
  set -x OPENCV4NODEJS_DISABLE_AUTOBUILD 1

  pyenv init - fish | source
  nvm use 20
end
