getTime() {

    time="$(($(date +%s%3N) - $start))"
    sec=$(($time/1000))
    nanoSec=$(($time-($sec*1000)))
    case $nanoSec in
while [ $counter -le 50 ]
do
    echo "=================$counter================="
    getTime
    echo "Time:" $result
    res=$(pylonsd tx bank send $MY_TESTING_ACCOUNT_1 $MY_TESTING_ACCOUNT_2 1000000upylon --keyring-backend $KEYRING --yes)
    # get the return code
    resArr=(${res[@]})
    echo "${resArr[0]} ${resArr[1]}"
    ((counter++))
done
