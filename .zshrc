# User's private bin
if [ -d "$HOME/bin" ] ; then
    export PATH="$HOME/bin:$HOME/.local/bin:$PATH"
fi

# MacPorts setup
# See: https://guide.macports.org/chunked/installing.shell.html
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"

# NVM setup
source /opt/local/share/nvm/init-nvm.sh

# TODO: Remove?
# Virtualenvwrapper setup
# See: http://virtualenvwrapper.readthedocs.io/en/latest/install.html
# export VIRTUALENVWRAPPER_PYTHON="/opt/local/bin/python"
# source /opt/local/bin/virtualenvwrapper.sh-3.10
# export WORKON_HOME="$HOME/.virtualenvs"

# Emacs setup
export EMACS_HOME="~/Projects/Springbok/emacs"
export EDITOR="emacs --no-init"
alias open.Emacs="open -n -a Emacs"
# TODO: Remove?
alias eclimd="/Applications/Eclipse.app/Contents/Eclipse/eclimd"

# Java setup after MacPorts installation of OpenJDK
export JAVA_HOME=$(/usr/libexec/java_home -v 21)
alias set.java.8="export JAVA_HOME=$(/usr/libexec/java_home -v 8); java -version"
alias set.java.11="export JAVA_HOME=$(/usr/libexec/java_home -v 11); java -version"
alias set.java.21="export JAVA_HOME=$(/usr/libexec/java_home -v 21); java -version"

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
autoload -Uz compinit && compinit

# Home development aliases
alias cd.supplies="cd ~/Projects/Home/Supplies/supplies ; . .venv/bin/activate"
alias cd.speakup="cd ~/Projects/Home/Toastmasters/Speak-Up-Cambridge/speakup ; . .venv/bin/activate"

# Springbok development aliases
alias cd.harvest="cd ~/Projects/Springbok/harvest ; . .venv/bin/activate"

# IQT development aliases
alias cq.black='black --diff --check *.py'
alias cq.pylint='pylint --disable=all --enable=unused-import *.py'
alias cq.mypy='mypy --allow-untyped-decorators --ignore-missing-imports --no-warn-return-any --strict --allow-subclassing-any *.py'
alias cd.springbok-multimodal="cd ~/Projects/IQT/Multi-Modal/springbok-multimodal ; . .venv/bin/activate"

alias cd.audio-recorder="cd ~/Projects/IQT/Multi-Modal-Forks/edgetech-audio-recorder ; . .venv/bin/activate"
alias cd.auto-orienter="cd ~/Projects/IQT/Multi-Modal-Forks/edgetech-auto-orienter ; . .venv/bin/activate"
alias cd.axis-ptz-controller="cd ~/Projects/IQT/Multi-Modal-Forks/edgetech-axis-ptz-controller ; . .venv/bin/activate"
alias cd.daisy="cd ~/Projects/IQT/Multi-Modal-Forks/edgetech-daisy ; . .venv/bin/activate"
alias cd.daisy-decoder="cd ~/Projects/IQT/Multi-Modal-Forks/edgetech-daisy-decoder ; . .venv/bin/activate"
alias cd.object-ledger="cd ~/Projects/IQT/Multi-Modal-Forks/edgetech-object-ledger ; . .venv/bin/activate"
alias cd.pingusb-json="cd ~/Projects/IQT/Multi-Modal-Forks/edgetech-pingusb-json ; . .venv/bin/activate"
alias cd.test-harness="cd ~/Projects/IQT/Multi-Modal-Forks/edgetech-test-harness ; . .venv/bin/activate"
alias cd.yolo-detect="cd ~/Projects/IQT/Multi-Modal-Forks/edgetech-yolo-detect ; . .venv/bin/activate"

alias cd.aisonobuoy="cd ~/Projects/IQT/AI-Sonobuoy/AISonobuoy ; . .venv/bin/activate"

alias cd.spinningup="cd ~/Projects/IQT/Maritime-Domain-Awareness/spinningup ; conda activate spinningup"

alias open.PyCharm="open -n -a PyCharm"

export VOXCELEB2_USERNAME="voxceleb1912"
export VOXCELEB2_PASSWORD="0s42xuw6"
# TODO: Remove?
export EDGETECH_CORE_HOME="~/Projects/IQT/Sky-Scan/edgetech-core/core"

alias ssh.skyscan-011="ssh skyscan-011"
alias ssh.shipscan-001="ssh shipscan-001"
alias ssh.shipscan-003="ssh shipscan-003"
alias ssh.collector-kit-001="ssh collector-kit-001"

# NIH-NLM development environment variables, and aliases
export SECRET_KEY="2@_oovalu#^=jo0%lbbtas02yh65mi0%epb4a+75&)%k@v4ae4"
export ARANGO_DB_HOME="/Users/raymondleclair/Projects/NIH-NLM/Cell-KN/cell-kn-mvp-etl-results/cell-kn-mvp-etl-ontologies/data/arangodb"
export ARANGO_DB_APPS="/Users/raymondleclair/Projects/NIH-NLM/Cell-KN/cell-kn-mvp-etl-results/cell-kn-mvp-etl-ontologies/data/arangodb-apps"
export ARANGO_DB_HOST="127.0.0.1"
export ARANGO_DB_PORT="8529"
export ARANGO_DB_NAME="Cell-KN"
export ARANGO_DB_SCHEMA_NAME="Cell-KN-Schema"
export ARANGO_DB_USER="root"
export ARANGO_DB_PASSWORD="7mtgagy6hFx46ASX"

alias cd.cell-kn-mvp-etl-ontologies="cd ~/Projects/NIH-NLM/Cell-KN/cell-kn-mvp-etl-results/cell-kn-mvp-etl-ontologies ; . .venv/bin/activate"
alias cd.cell-kn-mvp-etl-results="cd ~/Projects/NIH-NLM/Cell-KN/cell-kn-mvp-etl-results ; . .venv/bin/activate"
alias cd.nlm-ckn-etl="cd ~/Projects/NIH-NLM/Cell-KN/nlm-ckn-etl ; . python/.venv/bin/activate"
alias cd.kgx="cd ~/Projects/NIH-NLM/Cell-KN/kgx ; . python/.venv/bin/activate"


alias cd.cell-kn-mvp-ui-build="cd ~/Projects/NIH-NLM/Cell-KN/cell-kn-mvp-etl-results/cell-kn-mvp-ui ; . .venv/bin/activate"
alias cd.cell-kn-mvp-ui-run="cd ~/Projects/NIH-NLM/Cell-KN/cell-kn-mvp-etl-results/cell-kn-mvp-ui ; . .venv/bin/activate ; . arango_api/.env"
alias cd.cell-kn-mvp-ui-docker="cd ~/Projects/NIH-NLM/Cell-KN/cell-kn-mvp-ui-docker"
alias cd.cell-kn="cd ~/Projects/NIH-NLM/Cell-KN/cell-kn"

alias cd.cell-kn-schema='cd ~/Projects/NIH-NLM/Cell-KN/cell-kn-schema'
alias cd.cell-kn-gencode-data='cd ~/Projects/NIH-NLM/Cell-KN/cell-kn-gencode-data ; eval $(poetry env activate)'
alias cd.cell-kn-open-targets-data='cd ~/Projects/NIH-NLM/Cell-KN/cell-kn-open-targets-data ; eval $(poetry env activate)'

alias cd.NSForest="cd ~/Projects/NIH-NLM/Cell-KN/springbok-cell-kn-demos/NSForest"
alias cd.nsforest-docker="cd ~/Projects/NIH-NLM/Cell-KN/nsforest-docker"

alias cd.springbok-cell-kn-demos="cd ~/Projects/NIH-NLM/Cell-KN/springbok-cell-kn-demos ; . .venv/bin/activate"
alias cd.springbok-cell-kn-tex="cd ~/Projects/NIH-NLM/Cell-KN/springbok-cell-kn-tex"
alias cd.springbok-drug-resource-comparison="cd ~/Projects/NIH-NLM/Cell-KN/springbok-drug-resource-comparison ; . .venv/bin/activate"

alias cd.cellxgene-harvester="cd ~/Projects/NIH-NLM/Cell-KN/cellxgene-harvester ; . .venv/bin/activate"

export PATH=$PATH:/Users/raymondleclair/Projects/NIH-NLM/Cell-KN/relation-graph/cli/target/universal/stage/bin

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
export PATH=/Users/raymondleclair/edirect:${PATH}

# Created by `pipx` on 2025-07-28 15:20:25
# export PATH="$PATH:/Users/raymondleclair/.local/bin"  # Created above
export POETRY_PYPI_MIRROR_URL="https://pypi-proxy.myorg.com/repository/pypi-all/simple"

# Created by `pipx` on 2025-07-29 14:57:29
export PATH="$PATH:/Users/raymondleclair/Library/Python/3.11/bin"
