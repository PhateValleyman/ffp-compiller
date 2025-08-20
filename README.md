# ffp-compiler

**ffp-compiler** is a tool for building and managing FFP (fonz fun_plug) packages on ZyXEL NSA320 (ARMv5TE).  
It simplifies source downloading, building, version handling, and publishing packages.

## Features
- Package definitions management (`definitions/`)
- Parallel build support
- Automatic source download and caching
- Publishing into a structured repository
- Colored output and detailed logging
- Dry-run mode for testing without real builds

## Installation
Clone the repository and make the script executable:

```bash
git clone https://github.com/PhateValleyman/ffp-compiller.git
cd ffp-compiller
chmod +x ffp-compiler

Optionally, add it to PATH:

export PATH="$PWD:$PATH"

Usage

ffp-compiler [OPTIONS]

Main options

--package <name> Package name to build

--pkg-version <ver> Specific package version

--jobs <N> Parallel jobs (make -jN)

--list List all available packages

--info <pkg> Show information about a package

--system-info Show system information (FFP, architecture)

--publish Publish into release directory

--versions <pkg> List available versions for a package

--autoretry Retry build on failure

--failexit Exit immediately on first error

--dry-run Simulate build without running it

-v, --version Show script version

-h, --help Show help


Examples

# Build latest version of mc
./ffp-compiler --package mc

# Build mc version 4.8.33
./ffp-compiler --package mc --pkg-version 4.8.33

# List all packages
./ffp-compiler --list

# Show package information
./ffp-compiler --info mc

Author

PhateValleyman

Contact: Jonas.Ned@outlook.com


---
