export OMC_DIR=$HOME/.omc
export XDG_CONFIG_HOME=$OMC_DIR

case $SHELL in
	*/bash)
		source $OMC_DIR/shell/bash/.bashrc
		;;
esac
