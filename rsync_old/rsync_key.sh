

#rsync -avrin --delete-after ${src} ${dest} > rsync1.out

flags="-avri --delete-after"
#src=/media/davestanley/ALGONQUIN/Backup/
#dest=~/

src=~/
dest=/media/davestanley/ALGONQUIN/Backup/


rsync $flags ${src}Ubuntu\ One ${dest} > ~/rsync_key.out
rsync $flags ${src}Dropbox ${dest} >> ~/rsync_key.out
rsync $flags ${src}Other ${dest} >> ~/rsync_key.out

rsync $flags ${src}Anco ${dest} >> ~/rsync_key.out
rsync $flags ${src}From\ pop ${dest} >> ~/rsync_key.out
rsync $flags ${src}Home_new ${dest} >> ~/rsync_key.out
rsync $flags ${src}Nex ${dest} >> ~/rsync_key.out
rsync $flags ${src}Pictures ${dest} >> ~/rsync_key.out
rsync $flags ${src}Raw ${dest} >> ~/rsync_key.out
rsync $flags ${src}Software_new ${dest} >> ~/rsync_key.out

#rsync $flags ${src}bin ${dest} >> ~/rsync_key.out
#rsync $flags ${src}link ${dest} >> ~/rsync_key.out
#rsync $flags ${src}src ${dest}src_orig >> ~/rsync_key.out





