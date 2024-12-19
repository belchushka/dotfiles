function fish_greeting
	pfetch
end

function nvm
  bass source /opt/homebrew/opt/nvm/nvm.sh --no-use ';' nvm $argv
end


if status is-login
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
  set -x PATH /opt/homebrew/bin $PATH;
  set -x PATH $HOME/.cargo/env $PATH
  set -x PATH /Users/belchushka/.gem/ruby/2.6.0/bin $PATH
  set -x PATH /opt/bin $PATH
  set -x PATH /opt/nvim/bin $PATH
  set -x PATH $GEM_HOME/bin $PATH
  set -x PATH /Library/Frameworks/Python.framework/Versions/3.11/bin $PATH
  set -x PATH /Users/belchushka/Library/Python/3.9/bin $PATH
  set -x PATH /Users/belchushka/.local/bin $PATH
  set -x ALACRITTY_THEME rose-pine
  set -x PYTHONDONTWRITEBYTECODE 1

  nvm use 18
end


# Created by `pipx` on 2024-09-12 15:18:50
set PATH $PATH /Users/belchushka/Library/Python/3.9/bin

# Created by `pipx` on 2024-09-12 15:18:51
set PATH $PATH /Users/belchushka/.local/bin

# Setting PATH for Python 3.12
# The original version is saved in /Users/belchushka/.config/fish/config.fish.pysave
set -x PATH "/Library/Frameworks/Python.framework/Versions/3.12/bin" "$PATH"
