if [ -z $PATH ]; then
	export PATH=
	export DYLD_LIBRARY_PATH=
	export PYTHONPATH=
	export PYTHONHOME=
	export OPENSSL_CONF=
	export GPHOME=
	export GPHOME_BY_SYMLINK=
	source /etc/profile
fi

if [ -e $HOME/.bash_profile.base ]; then
	source $HOME/.bash_profile.base
fi

export DYLD_LIBRARY_PATH=$HOME/local/xc/lib
export PATH=$HOME/bin:$HOME/local/xc/bin/:$PATH
