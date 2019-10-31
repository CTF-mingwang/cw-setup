#!/bin/bash

if ! hash wget 2>/dev/null; then
	echo "You need git to run this script"
	exit 1
fi

CONFIG_DIR=~/config
if [ ! -d "$CONFIG_DIR" ]; then
	mkdir $CONFIG_DIR
fi

ZSHRC_DIR=$CONFIG_DIR/zsh
if [ ! -d "$ZSHRC_DIR" ]; then
	mkdir $ZSHRC_DIR
fi

wget -P $ZSHRC_DIR/ https://raw.githubusercontent.com/theniceboy/.config/master/zsh/zshrc

zsh	deploy-zim.sh

echo "source $ZSHRC_DIR/zshrc" >> ~/.zshrc

cp .Xmodmap ~/
cp .Xmodmap-cn ~/
