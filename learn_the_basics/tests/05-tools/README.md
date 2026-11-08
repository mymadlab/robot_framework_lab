# No test cases

This lab did not create any new test cases.  It centered around two commands.

## libdoc

Documentation for your test libraries.

```bash
cd tests
libdoc ./libraries/JSONLibrary.py 05-tools./JSONLibrary.html
```

## robocop

This is a linting and format checking tool for Robot Framework.

### Running a lint

```bash
cd tests/
robocop check .
```

### Listing all the available rules

```bash
robocop list rules
```
