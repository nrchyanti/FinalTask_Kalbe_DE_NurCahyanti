data1="/hdfs/data/data1"

if [ ! -d "$data1" ];
then
    mkdir -p "$data1"
	echo "$data1 Directory Not Exists!"
else
    echo "There is $data1 Directory Exists!"
fi

0 2 * * * /scripts/script.sh

