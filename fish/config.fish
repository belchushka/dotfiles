if status is-interactive
    # Commands to run in interactive sessions can go here
end

function fish_greeting
	pfetch
end

export PATH="$HOME/.cargo/bin:$PATH"

set --export ANDROID $HOME/Library/Android;
set --export ANDROID_HOME $ANDROID/sdk;
set --export GEM_HOME ~/.gems;
set -gx PATH /Applications/Postgres.app/Contents/Versions/latest/bin $PATH;
set -gx PATH $ANDROID_HOME/tools $PATH;
set -gx PATH /opt/flutter/bin $PATH;
set -gx PATH $ANDROID_HOME/tools/bin $PATH;
set -gx PATH $ANDROID_HOME/platform-tools $PATH;
set -gx PATH $ANDROID_HOME/emulator $PATH;
set -gx PATH /opt/homebrew/bin $PATH;
set -gx PATH $HOME/.cargo/env $PATH
set -gx PATH /Users/belchushka/.gem/ruby/2.6.0/bin $PATH
set -gx PATH /opt/bin $PATH
set -gx PATH /opt/nvim/bin $PATH
set -gx PATH $GEM_HOME/bin:$PATH

function nvm
           bass source /opt/homebrew/opt/nvm/nvm.sh --no-use ';' nvm $argv
       end

# Setting PATH for Python 3.11
# The original version is saved in /Users/belchushka/.config/fish/config.fish.pysave
set -x PATH "/Library/Frameworks/Python.framework/Versions/3.11/bin" "$PATH"
