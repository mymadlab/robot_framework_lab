# No test cases

This lab did not create any new test cases.  It centered around creating python code.

## Creating a listner

Located at tests/listeners/TimeListener.py. The following steps can be used to test the code.

```bash
cd tests\01-greetings
robot  --pythonpath ../listeners --listener TimeListener .
```

## Creating the test case list script

This is a python script that lists out the test cases,

```bash
cd tests
python ./tools/test_case_list.py  --suite .
```
