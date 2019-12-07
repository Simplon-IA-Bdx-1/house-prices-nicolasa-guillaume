#!/bin/bash

PIDFile=./.notebook.pid
EXEC_NAME="notebook.sh"


getpid (){
    if [[ -f "$PIDFile" ]]; then
	pid=$(cat $PIDFile)
	if [[ ! -f "/proc/${pid}" ]]; then
	    echo 'stale pid'
	    dump
	    unset pid
	elif [[ ! -f "/proc/${pid}/cwd/${EXEC_NAME}" ]]; then
	    echo 'pid has been recycled'
	    dump
	    unset pid
	fi
    fi
}

start (){
    getpid
    if [[ -f "/proc/${pid}" && -z "${pid+x}" ]]; then
	echo 'notebook already started'
    else
	echo 'starting notebook'
	set -a
	if [[ -f ".env" ]]; then
	    source ./.env
	fi
	
	jupyter notebook </dev/null &>/dev/null &
	echo $! > $PIDFile
    fi
}

stop (){
    if [[ -f "$PIDFile" ]]; then
	echo 'stopping notebook'
	kill $(cat $PIDFile)
	rm $PIDFile
    else
	echo 'notebook not started'
    fi
}

restart (){
    stop
    start
}



dump (){
    rm $PIDFile
}

install (){
    pip install -r ./requirements.txt
    jupyter contrib nbextension install --user
    jupyter nbextensions_configurator enable --user
}


usage (){
  echo './notebook.sh {start|stop|restart|install|dump}'
}


case "$1" in
    start)
	start
	;;
    stop)
	stop
	;;
    restart)
	restart
	;;
    dump)
	dump
	;;
    install)
	install
	;;
    *)
	usage
	;;
esac
