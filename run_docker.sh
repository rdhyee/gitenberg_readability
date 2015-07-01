set -e
docker build -t rdhyee/gitenberg-readability .
PORT=${1:-8888}
DATA_DIR=${2:-/Users/raymondyee/D/Data/}
# turn off loading of pywikibot user config file
docker run  -d -v `pwd`:/notebooks  -v $DATA_DIR:/data -p $PORT:8888 -e "PASSWORD=$IPN_PW_DEFAULT" rdhyee/gitenberg-readability
