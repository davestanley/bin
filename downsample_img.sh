
for f in  `ls *.jpg*`
do
	convert $f -resize 2048 ${f}
done

# Enforces the width be 2048 pixels


