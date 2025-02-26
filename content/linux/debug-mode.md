---
title: Debug Mode in Bash
description: Debug mode in Bash is a useful feature that allows you to trace the execution
  of a script, helping you identify errors, understand the flow, and troubleshoot
  issues.
noindex: false
featured: false
pinned: false
series:
- Scripting
tags:
- bash
- linux
categories:
- Linux
images: []
authors:
- Alimektor
status: final
---


Debug mode in Bash is a useful feature that allows you to trace the execution of a script, helping you identify errors, understand the flow, and troubleshoot issues. When debug mode is enabled, Bash prints each command before executing it, along with the expanded values of variables and expressions.

## Debug Using Trap ##

The magic line to add after shebang so that the script can be debugged in steps:

```bash
#!/usr/bin/env bash
trap 'echo "[DEBUG]# $BASH_COMMAND";read' DEBUG
```

### Debug Process ###

Run the script, before each command is executed the output of what will be executed, then the interpreter begins to wait for the <kbd>ENTER</kbd> key to be pressed.

Если понимаем, что что-то пошло не так, нажимаем <kbd>Ctrl</kbd>+<kbd>C</kbd> и выходим из отладки.

### Recipe ###

- The `trap` command, which can intercept various signals, and in our case, it intercepts the `DEBUG` signal sent before executing a command.
- The `read` command, which can wait for input from the keyboard (in this case, we only need either <kbd>ENTER</kbd> or <kbd>Ctrl</kbd>+<kbd>C</kbd>).
- The environment variable `$BASH_COMMAND`, which is valid inside the `trap` command handler.

## Links ##

- [How to Debug Bash-Scripts Step-By-Step or Possibly the Shortest Programming/Debugging Article on Habr Site in Russian](https://habr.com/ru/post/666982/)
- [Simple bash debugger using trap DEBUG on Just another IT blog Site In English](https://selivan.github.io/2022/05/21/bash-debug.html)

## Option `-x` ##

The `-x` argument allows you to step through each line of the script in debugging mode:

```bash
bash -x script.sh
```

### Example ###

Here's a good example (`cat hello.sh`):

```bash
#!/usr/bin/env bash
echo "Hello World\n"
adding_string_to_number="s"
v=$(expr 5 + $adding_string_to_number)
```

Here is the output of the running program (`./hello.sh`):

```txt
Hello World

expr: non-integer argument
```

This output is not enough. However, using the debug mode (`bash -x hello.sh`), you can get more details:

```txt
+ echo Hello World\n
Hello World
+ adding_string_to_number=s
+ expr 5 + s
expr: non-integer argument
+ v=
```
