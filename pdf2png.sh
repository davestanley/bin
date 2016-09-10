

find . -type f -name '*.pdf' -print0 |
  while IFS= read -r -d '' file
    do
     convert -verbose -density 150 "${file}" "${file%.*}.jpg"
    echo  convert -verbose -density 150 "${file}" "${file%.*}.jpg"

  done

