# stree - Student Directory Tree Command

**stree** is a command-line tool that mimics the functionality of the `tree` command, displaying the file and directory hierarchy in a detailed "long mode." It prints out the directory structure along with file permissions, user and group ownership, and file sizes, providing a comprehensive view of the filesystem.

## Features

- **Directory Tree Display**: Visualizes the directory tree starting from the current folder by default.
- **Detailed Output**: Lists each file and directory with its permissions, user and group ownership, and size.
- **Special Tree Characters**: Accurately reproduces the special characters used in the standard `tree` command to display the hierarchy.

## Usage

To run **stree**, simply execute the following command from your terminal:

```bash
./stree
```

The output will display the directory structure of the current working directory in a hierarchical format, including detailed information for each file and directory.

### Example Output

```bash
./stree
.
├── [drwxr-xr-x] user group 4096 Jun  6 12:34  directory1
│   ├── [drwxr-xr-x] user group 4096 Jun  6 12:34  subdirectory1
│   └── [-rw-r--r--] user group 1024 Jun  6 12:34  file1.txt
└── [-rw-r--r--] user group 2048 Jun  6 12:34  file2.txt
```

## Implementation Details

- **Directory Traversal**: The tool leverages directory traversal techniques, similar to those demonstrated in the provided examples (`ftw1.c` and `ftw2.c`), to walk through the directory tree and gather information.
- **Output Formatting**: Special care is taken to format the output correctly, using the appropriate tree characters (`|`, `-`, etc.) to represent the hierarchy visually.

## Compilation

To compile the tool, a working Makefile is included. Simply run:

```bash
make
```

This will generate the `stree` executable.

## License

This project is for educational purposes and is not intended for production use.

