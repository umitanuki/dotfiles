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

export GOROOT=$HOME/local/go
export GOPATH=$HOME/local/gopath0
export PATH=$GOROOT/bin:$PATH
export DYLD_LIBRARY_PATH=$HOME/local/pgsql/lib
export PATH=$HOME/bin:$HOME/local/pgsql/bin:$PATH
export PGDATA=$HOME/local/pgsql/data
export PGDATABASE=test

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
