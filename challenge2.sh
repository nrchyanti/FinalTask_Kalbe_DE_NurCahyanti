source_dir="/local/data/market/daily_market_price.xlsx"

if [[ -d "$source_dir" ]];
then
    cp source_dir "/hdfs/data/data1"
fi

echo "“File Moved Successfully" >> "/hdfs/data/data1.log"


