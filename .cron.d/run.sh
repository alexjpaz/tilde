CRONDIR=~/.cron.d
TYPE=$1

function log() {
	echo $(date): $@ 1>> $CRONDIR/logs/all.log 2>> $CRONDIR/logs/error.log
}

if [ -z "$TYPE" ]; then
	log "ERROR: must provide a cron type ($TYPE)"
	exit 1
elif [ ! -d "${CRONDIR}/${TYPE}" ]; then
	log "ERROR: must provide a valid cron type ($TYPE)"
	exit 2
fi

for file in $(ls ${CRONDIR}/${TYPE}); do
	script="${CRONDIR}/${TYPE}/$file"
	if [ -x $script ]; then
		log "DEBUG: runnning $script"
		echo "Running $script"
		$script
	fi
done
