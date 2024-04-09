# User's private bin
if [ -d "$HOME/bin" ] ; then
    export PATH="$HOME/bin:$HOME/.local/bin:$PATH"
fi

# MacPorts setup
# See: https://guide.macports.org/chunked/installing.shell.html
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"

# TODO: Remove?
# Virtualenvwrapper setup
# See: http://virtualenvwrapper.readthedocs.io/en/latest/install.html
export VIRTUALENVWRAPPER_PYTHON="/opt/local/bin/python"
source /opt/local/bin/virtualenvwrapper.sh-3.10
export WORKON_HOME="$HOME/.virtualenvs"

# Emacs setup
export EMACS_HOME="~/Projects/Springbok/emacs"
export EDITOR="emacs --no-init"
alias open.Emacs="open -n -a Emacs"
# TODO: Remove?
alias eclimd="/Applications/Eclipse.app/Contents/Eclipse/eclimd"

# Java setup
export JAVA_HOME=$(/usr/libexec/java_home -v 11.0.22)

# Kafka setup
# TODO: Install?
# export KAFKA_HOME="~/Packages/Apache/kafka_2.12-2.5.0"
# export PATH="$KAFKA_HOME/bin:$PATH"

# TODO: Remove?
# AWS setup
AWS_PROFILE="default"

# TODO: Review?
# Version control aliases 
srt="committerdate"
fmt="'%(committerdate:short) %(authorname) %(HEAD) "
fmt+="%(color:red)%(refname:short)%(color:reset) "
fmt+="-- %(contents:subject)'"
alias git.for-each-ref="git for-each-ref --sort=$srt refs/heads/ --format=$fmt"

# TODO: Remove?
# Addgene development aliases
alias cd.addgene-bioinformatics="cd ~/Projects/Addgene/addgene-bioinformatics ; . .venv/bin/activate"

# Springbok development aliases
alias cd.harvest="cd ~/Projects/Springbok/harvest ; . .venv/bin/activate"

# IQT development aliases
alias cq.black="black --diff --check *.py"
alias cq.pylint="pylint --disable=all --enable=unused-import *.py"
alias cq.mypy="mypy --allow-untyped-decorators --ignore-missing-imports --no-warn-return-any --strict --allow-subclassing-any *.py"

alias cd.core="cd ~/Projects/IQT/Multi-Modal/edgetech-core ; . .venv/bin/activate"
alias cd.audio-recorder="cd ~/Projects/IQT/Multi-Modal/edgetech-audio-recorder ; . .venv/bin/activate"
alias cd.auto-orienter="cd ~/Projects/IQT/Multi-Modal/edgetech-auto-orienter ; . .venv/bin/activate"
alias cd.axis-ptz-controller="cd ~/Projects/IQT/Multi-Modal/edgetech-axis-ptz-controller ; . .venv/bin/activate"
alias cd.daisy="cd ~/Projects/IQT/Multi-Modal/edgetech-daisy ; . .venv/bin/activate"
alias cd.daisy-decoder="cd ~/Projects/IQT/Multi-Modal/edgetech-daisy-decoder ; . .venv/bin/activate"
alias cd.object-ledger="cd ~/Projects/IQT/Multi-Modal/edgetech-object-ledger ; . .venv/bin/activate"
alias cd.pingusb-json="cd ~/Projects/IQT/Multi-Modal/edgetech-pingusb-json ; . .venv/bin/activate"
alias cd.test-harness="cd ~/Projects/IQT/Multi-Modal/edgetech-test-harness ; . .venv/bin/activate"
alias cd.yolo-detect="cd ~/Projects/IQT/Multi-Modal/edgetech-yolo-detect ; . .venv/bin/activate"

alias cd.aisonobuoy="cd ~/Projects/IQT/AI-Sonobuoy/AISonobuoy ; . .venv/bin/activate"

alias cd.spinningup="cd ~/Projects/IQT/Maritime-Domain-Awareness/spinningup ; conda activate spinningup"

alias open.PyCharm="open -n -a PyCharm"

export VOXCELEB2_USERNAME="voxceleb1912"
export VOXCELEB2_PASSWORD="0s42xuw6"
# TODO: Remove?
export EDGETECH_CORE_HOME="~/Projects/IQT/Sky-Scan/edgetech-core/core"

alias ssh.skyscan-011=‘ssh skyscan-011’
alias ssh.shipscan-001=‘ssh shipscan-001’
alias ssh.shipscan-003=‘ssh shipscan-003’
alias ssh.collector-kit-001=‘ssh collector-kit-001’

# Added by Miniconda3 4.9.2 installer
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/opt/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/opt/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# Added by Rustup
export PATH="$HOME/.cargo/bin:$PATH"

# >>> coursier install directory >>>
export PATH="$PATH:$HOME/Library/Application Support/Coursier/bin"
# <<< coursier install directory <<<
