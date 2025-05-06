#!/bin/bash

export GPG_TTY=$(tty)

# Function to generate SHA256 and SHA512 hashes and save them
generate_hashes() {
    local file=$1
    sha256sum "$file"  > "$file.sha256"
    sha512sum "$file"  > "$file.sha512"
}

# Function to sign a file using GPG and save it as a .asc
sign_file() {
    local file=$1
    gpg --batch --yes --armor --detach-sign --output "$file.asc" --yes --default-key "example@example.com" --pa>
}

# Loop through all .json files in the directory and its subdirectories
find . -type f -name "*.json" | while read -r file; do
    echo "Signing: $file"

    # Generate hashes (SHA256, SHA512)
    generate_hashes "$file"

    # Sign the file with GPG and create .asc file
    sign_file "$file"

    echo "Generated: $file.sha256, $file.sha512, $file.asc"
done
