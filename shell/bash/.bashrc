if command -v oh-my-posh >/dev/null 2>&1; then
	alias ls='ls --color=auto'
	alias grep='grep --color=auto'
	PS1='[\u@\h \W]\$ '
	eval "$(oh-my-posh init bash --config $OMC_DIR/posh/theme.omp.json)";
else
	echo "Oh My Posh not installed, please run command below to install";
	echo "$ curl -s https://ohmyposh.dev/install.sh | bash -s";
fi

if command -v mise >/dev/null 2>&1; then
	eval "$(mise activate bash)"
else
	echo "Mise not installed, please run command below to install"
	echo "$ curl https://mise.run | sh"
fi

. $OMC_DIR/utils/z/z.sh
