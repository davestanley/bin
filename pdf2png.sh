

find . -type f -name '*.pdf' -print0 |
  while IFS= read -r -d '' file
    do
    # convert -verbose -density 150 "${file}" "${file%.*}.png"
    echo  convert -verbose -density 150 "${file}" "${file%.*}.png"

  done

