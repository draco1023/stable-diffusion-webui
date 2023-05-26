#!/bin/bash
#########################################################
# Uncomment and change the variables below to your need:#
#########################################################

# Install directory without trailing slash
#install_dir="/home/$(whoami)"

# Name of the subdirectory
#clone_dir="stable-diffusion-webui"

# Commandline arguments for webui.py, for example: export COMMANDLINE_ARGS="--medvram --opt-split-attention"
export CUDA_VISIBLE_DEVICES=-1
export COMMANDLINE_ARGS="--use-cpu all --no-half --precision full --skip-torch-cuda-test --listen --enable-insecure-extension-access"

# python3 executable
#python_cmd="python3"
pip config --user set global.index https://mirrors.aliyun.com/pypi
pip config --user set global.index-url https://mirrors.aliyun.com/pypi/simple
pip config --user set global.trusted-host mirrors.aliyun.com

# git executable
#export GIT="git"
export GITHUB_MIRROR="hub.fgit.ml"
git config --global url."https://${GITHUB_MIRROR}/".insteadOf "https://github.com/"
git config protocol.https.allow always

# python3 venv without trailing slash (defaults to ${install_dir}/${clone_dir}/venv)
#venv_dir="venv"

# script to launch to start the app
#export LAUNCH_SCRIPT="launch.py"

# install command for torch
#export TORCH_COMMAND="pip install torch==1.12.1+cu113 --extra-index-url https://download.pytorch.org/whl/cu113"
export TORCH_COMMAND="pip install torch torchaudio torchvision --extra-index-url https://download.pytorch.org/whl/cpu"

# Requirements file to use for stable-diffusion-webui
#export REQS_FILE="requirements_versions.txt"

# Fixed git repos
export GFPGAN_PACKAGE="git+https://${GITHUB_MIRROR}/TencentARC/GFPGAN.git@8d2447a2d918f8eba5a4a01463fd48e45126a379"
export CLIP_PACKAGE="git+https://${GITHUB_MIRROR}/openai/CLIP.git@a9b1bf5920416aaeaec965c25dd9e8f98c864f16"
export OPENCLIP_PACKAGE="git+https://${GITHUB_MIRROR}/mlfoundations/open_clip.git@bb6e834e9c70d9c27d0dc3ecedeebeaeb1ffad6b"

# Fixed git commits
#export STABLE_DIFFUSION_COMMIT_HASH=""
#export TAMING_TRANSFORMERS_COMMIT_HASH=""
export CODEFORMER_COMMIT_HASH="4724c90b6b9d5183da383f2bdae6ddf9b0bf045d"
#export BLIP_COMMIT_HASH=""
#export K_DIFFUSION_COMMIT_HASH=""

# Uncomment to enable accelerated launch
#export ACCELERATE="True"

# Uncomment to disable TCMalloc
#export NO_TCMALLOC="True"

###########################################
