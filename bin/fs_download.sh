#!/bin/bash

# Define the URL and target filename
URL="https://mmseqs.com/foldseek/foldseek-linux-avx2.tar.gz"
TAR_FILE="foldseek-linux-avx2.tar.gz"
EXTRACTION_DIR="foldseek_temp"

# Download the file
wget "$URL" -O "$TAR_FILE"

# Create a temporary directory for extraction
mkdir "$EXTRACTION_DIR"

# Extract the contents
if tar -xzf "$TAR_FILE" -C "$EXTRACTION_DIR"; then
    echo "Extraction successful."
else
    echo "Extraction failed. Exiting."
    rm -f "$TAR_FILE"
    rmdir "$EXTRACTION_DIR"
    exit 1
fi

# Find the executable and move it to the current directory
find "$EXTRACTION_DIR" -type f -executable -exec mv {} . \;

# Clean up: remove the tar file and the temporary directory
rm -f "$TAR_FILE"
rm -rf "$EXTRACTION_DIR"

# Confirm completion
echo "Download, extraction, and cleanup complete."