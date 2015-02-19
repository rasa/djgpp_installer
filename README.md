# djgpp_installer

djgpp_installer lets you download and install DJGPP, which is
available at http://www.delorie.com/djgpp/.

djgpp_installer also performs the following:

* Adds the following variables to your environment:

  DJGPP=C:\DJGPP

* Appends the following to your user PATH environment variable:

  C:\DJGPP\BIN

djgpp_installer looks in the directory where djgpp_installer.exe is for
any files it needs before attempting to download them. If it does download a
file, it will attempt to save a copy of the file in this same directory.

## Usage

````
djgpp_installer [options]

Options:
/S         Install the application silently with the default options selected
/D=path    Install into the directory 'path'
           (default is C:\DJGPP)
/INSTYPE n Where n is a number between 0 and 4:
           0: Binaries (Default)
           1: Source
           2: Extra Documentation Formats
           3: All
           4: None

/RETRIES n Number of times to retry each download before reporting failure
           (default: 5) (NOT YET IMPLEMENTED)
/PROXY     Set proxy settings (NOT YET IMPLEMENTED)
/ALLUSERS  Install icons for all users (NOT YET IMPLEMENTED)
           This is the default if the user is an administrator
/USER      Install icons for the current user only (NOT YET IMPLEMENTED)
           This is the default if the user is not an administrator
/VERSION   Show the version and quit (NOT YET IMPLEMENTED)
/?         Show this help message and quit (NOT YET IMPLEMENTED)

````

## Contributing

To contribute to this project, please see [CONTRIBUTING.md](CONTRIBUTING.md).

## Bugs

To view existing bugs, or report a new bug, please see the [issues](/issues) page for this project.

## License

This project is [MIT licensed](LICENSE).

## Changelog

Please see [CHANGELOG.md](CHANGELOG.md) for the version history for this project.

## Contact

This project was originally developed by [Ross Smith II](mailto:ross@smithii.com).
Any enhancements and suggestions are welcome.
