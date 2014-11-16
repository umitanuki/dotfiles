if [ -e $HOME/.bash_profile.base ]; then
	source $HOME/.bash_profile.base
fi

export PATH=/opt/gcc-4.4.2/bin:/opt/gcc_infrastructure/bin:$PATH
#export PATH=$HOME/local/protobuf-c-0.15/bin:$PATH
export PATH=$HOME/local/hadoop/bin:$HOME/local/hadoop/sbin:$PATH
export DYLD_LIBRARY_PATH=/opt/gcc_infrastructure/lib

# greenplum home and path
export GPROOT=/data
export GPHOME=$GPROOT/greenplum-db
#export PATH=$PATH:$GPHOME/bin
export BLD_ARCH=osx105_x86

# greenplum settings
if [ -e $GPHOME/greenplum_path.sh ]; then
	source $GPHOME/greenplum_path.sh
fi

export MASTER_DATA_DIRECTORY=$GPROOT/gpdata/d/gpseg-1
export PGPORT=5432
export PGHOST=127.0.0.1
#export DFS_NAME=hdfs
#export DFS_URL=localhost:9000/gpsql

alias topmake='HOME=$GPROOT make BLD_CC="ccache gcc" CONFIG_ADDITIONS="-C"'
#alias topmake='HOME=$GPROOT make BLD_CC="ccache gcc" CONFIG_ADDITIONS="-C --enable-dtrace"'
alias slowmake='HOME=$GPROOT make'
alias gpreboot='gpstop -raMimmediate'
alias runcatullus='perl catullus.pl -procdef pg_proc.sql -prochdr pg_proc.h -typedef pg_type.sql -typehdr pg_type.h'
alias runtidycat='perl tidycat.pl -dd ../../../../gpMgmt/bin/gppylib/data/5.0.json -df json *.h'
alias gpscratch='gpstop -ai; \
                 rm -rf d/*; \
                 gpinitsystem -ac gp_init_config; \
                 gp_stop -a && \
                 tar zcf init.tgz && gptart -a'
#alias caqlmake='topmake caql_logquery_FLAGS="-lockcheck -readlock -holdlock -lwl=pg_type,pg_proc,pg_namespace,pg_operator,pg_opclass,pg_amop,pg_am,pg_amproc"'
alias caqlmake='topmake caql_logquery_FLAGS="-logquery_hash"'
alias utilpsql='PGOPTIONS="-c gp_session_role=utility" psql'
alias gpsegconfig='utilpsql -c "select * from gp_segment_configuration"'

function lastlog(){
  find $1/pg_log | grep gpdb- | sort | tail -n 1
}

alias watchng='watch -n1 "ps -e -o \"pid,ppid,command\" 2>/dev/null | grep \"[p]ostgres\|[e]stacion\|[c]ontenido\""'
export ESTACION_ADDRESS=localhost:4343
