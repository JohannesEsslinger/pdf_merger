#!/bin/bash

directory=${1:-$(pwd)}
output_file="merged.pdf"

cd "$directory" || exit

input_files=($(ls -1v *.pdf))

# Use the first PDF as the base file
cp "${input_files[0]}" "$output_file"

# Merge remaining PDFs into the base file
for ((i = 1; i < ${#input_files[@]}; i++)); do
    pdfunite "$output_file" "${input_files[i]}" "temp.pdf"
    mv "temp.pdf" "$output_file"
done

echo "PDFs merged successfully into $output_file"