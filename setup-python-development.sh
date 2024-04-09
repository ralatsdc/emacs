#!/bin/zsh

# Print usage
usage() {
    cat << EOF

NAME
    setup-python-development - Setup Springbok's Python development environment

SYNOPSIS
    setup-python-development

DESCRIPTION
    Install development requirements, and configure emacs to use
    flycheck python linters. Note that Python and Conda environemnts
    are assumed to be activated. Python environments are assumed to be
    named ".venv", and Conda environment names are passed as an option
    argument.

OPTIONS 
    -c CONDA_ENV
        Name of the activated conda environment

EOF
}

# Parse command line options
conda_env=""
while getopts ":c:h" opt; do
    case $opt in
        c)
            conda_env=$OPTARG
            ;;
	h)
	    usage
	    exit 0
	    ;;
	\?)
	    echo "Invalid option: -${OPTARG}" >&2
	    usage
	    exit 1
	    ;;
	\:)
	    echo "Option -${OPTARG} requires an argument" >&2
	    usage
	    exit 1
	    ;;
    esac
done

# Parse command line arguments
shift `expr ${OPTIND} - 1`
if [ "$#" -ne 0 ]; then
    echo "No arguments required"
    exit 1
fi

# Activate environment
if [[ -n $conda_env ]]; then
    conda activate $conda_env
else
    . .venv/bin/activate
fi

# Install development requirements
cat <<EOF > .requirements.txt
flake8
ipython
jupyterlab
notebook
pip-tools
poetry
pre-commit
pylint
EOF
python -m pip install -r .requirements.txt

# Set emacs configuration
if [[ -n $conda_env ]]; then
    cat <<EOF > .dir-locals.el
((python-mode
  (flycheck-python-pylint-executable . "$HOME/opt/miniconda3/envs/$conda_env/bin/python"))
  (flycheck-python-flake8-executable . "$HOME/opt/miniconda3/envs/$conda_env/bin/python")))
EOF
else
    cat <<EOF > .dir-locals.el
((python-mode
  (flycheck-python-pylint-executable . "$PWD/.venv/bin/python"))
  (flycheck-python-flake8-executable . "$PWD/.venv/bin/python")))
EOF
fi
