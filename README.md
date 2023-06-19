# PDF Merger

PDF Merger is a simple command-line tool for merging multiple PDF files into a single PDF. It combines the PDFs in lexicographical order, providing an easy way to merge PDF documents.

## Installation

1. Clone the repository or download the `merger.sh` script.
2. Make the script executable:
   ```shell
   chmod +x merger.sh
3. Move the script to a directory included in your system's PATH. 

## Usage
<pre>
merger.sh /path/to/pdf_directory
</pre>

If the directory argument is not provided, the script will use the current directory.
The merged PDF file will be named merged.pdf and will be placed in the specified directory or the current directory.
The script will merge all the PDF files in the specified directory (or current directory) in lexicographical order.