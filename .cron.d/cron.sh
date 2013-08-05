if [ "$1" != "" ]
then
    pushd ~/.cron.d/$1 &> /dev/null
    for job in $(ls ~/.cron.d/$1)
    do
        echo "executing $job"
        if [ -x ~/.cron.d/$1/$job ]
        then
            ~/.cron.d/$1/$job &
        fi
    done
    popd &> /dev/null
fi
