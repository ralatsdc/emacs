# User's private bin
if [ -d "$HOME/bin" ] ; then
    export PATH="$HOME/bin:$HOME/.local/bin:$PATH"
fi

# MacPorts setup
# See: https://guide.macports.org/chunked/installing.shell.html
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"

# Kafka setup
# TODO: Install?
# export KAFKA_HOME="~/Packages/Apache/kafka_2.12-2.5.0"
# export PATH="$KAFKA_HOME/bin:$PATH"

# Added by Miniconda3 4.9.2 installer
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('{{HOME}}/opt/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "$HOME/opt/miniconda3/etc/profile.d/conda.sh" ]; then
        . "$HOME/opt/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="$HOME/opt/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# Added by Rustup
export PATH="$HOME/.cargo/bin:$PATH"

# >>> coursier install directory >>>
export PATH="$PATH:$HOME/Library/Application Support/Coursier/bin"
# <<< coursier install directory <<<
