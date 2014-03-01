
flags=$1
rest=$2
dest=$3
echo rsync ${flags} stanleyd@scc2.bu.edu:/usr2/postdoc/stanleyd/${rest} ${dest}
rsync ${flags} stanleyd@scc2.bu.edu:/usr2/postdoc/stanleyd/${rest} ${dest}
