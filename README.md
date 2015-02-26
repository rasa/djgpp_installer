# djgpp_installer [![Flattr this][flatter_png]][flatter]

Download and install [DJGPP][].

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
````

## Contributing

To contribute to this project, please see [CONTRIBUTING.md](CONTRIBUTING.md).

## Bugs

To view existing bugs, or report a new bug, please see [issues](../../issues).

## Changelog

To view the version history for this project, please see [CHANGELOG.md](CHANGELOG.md).

## License

This project is [MIT licensed](LICENSE).

## Contact

This project was created and is maintained by [Ross Smith II][] [![endorse][endorse_png]][endorse]

Feedback, suggestions, and enhancements are welcome.

[Ross Smith II]: mailto:ross@smithii.com "ross@smithii.com"
[flatter]: https://flattr.com/submit/auto?user_id=rasa&url=https%3A%2F%2Fgithub.com%2Frasa%2Fdjgpp_installer
[flatter_png]: http://button.flattr.com/flattr-badge-large.png "Flattr this"
[endorse]: https://coderwall.com/rasa
[endorse_png]: https://api.coderwall.com/rasa/endorsecount.png "endorse"

[DJGPP]: http://www.delorie.com/djgpp