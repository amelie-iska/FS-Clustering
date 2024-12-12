# Download and Extract Script

This folder contains a Bash script (`fs_download.sh`) designed to:

1. Download a compressed tarball file from a specified URL.
2. Extract its contents into a temporary directory.
3. Move the executable file to the current working directory.
4. Clean up by removing the downloaded tarball and temporary directory.

## Usage

```bash
bash fs_download.sh
```

### Expected Output

- The script will download the `foldseek-linux-avx2.tar.gz` file from the specified URL.
- It will extract the tarball into a temporary directory, locate the executable file, and move them to the current directory.
- After successful execution, the downloaded tarball and temporary directory will be removed automatically.

## Notes

- The script is tailored for the specific URL and structure of the `foldseek` package. Adjust the URL or extraction logic if the tarball structure changes.
- The script is intended for Linux environments and will not work on other operating systems.

