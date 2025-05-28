export OMC_DIR=$HOME/.omc

case $SHELL in
	*/bash)
		source $OMC_DIR/shell/bash/.bashrc
		;;
esac
