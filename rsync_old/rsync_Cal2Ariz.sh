
src='/media/davestanley/CALCUTTA/Archive/'
dest='/media/davestanley/ARIZONA/Archive/'

rsync_flags='-avri --delete-after'
#rsync_flags='-avri --delete-after' --status --progress
#				Shows additional information on file
#				transfer times. Useful for large files.

echo sudo rsync $rsync_flags ${src} $dest >> ~/rsync_data.out
sudo rsync $rsync_flags ${src} $dest >> ~/rsync_data.out


