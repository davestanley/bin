

local=$HOME/Gdrive
syncfolder="16giganator"
directionality=$1
use_scc=$2
extra_flags=$3


# Rsync flags
flags="-avriz --stats --progress --delete-after ${extra_flags}"


if [ $use_scc == "scc" ]
then
  echo Using scc
  myremote="stanleyd@scc2.bu.edu:/usr2/postdoc/stanleyd"

else
  echo Using pendrive
  myremote="${HOME}/media/PENDRIVE"
  #myremote="${HOME}/deleteme"
fi


if [ $directionality == "push" ]
then
  echo Pushing to remote
  src=${local}/${syncfolder}
  dest=$myremote
else
  echo Pulling from remote
  src=$myremote/${syncfolder}
  dest=$local
fi

echo rsync ${flags} ${src} ${dest}
rsync ${flags} ${src} ${dest}

# Make sure flags are set correctly
#find ~/16giganator -type d -print0 | xargs -0 chmod 755
#find ~/16giganator -type f -print0 | xargs -0 chmod 644

