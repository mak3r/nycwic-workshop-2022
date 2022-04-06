## Linux fundamentals
**If you are comfortable with Linux you can skip to the next step.**

If you are not familiar with linux, the following are some fundamental commands to get you started. the user named 'ubuntu'. You can get super powers by typing `sudo` before any command. This also means you can break things. With great power comes great responsibility :-). Good luck. Have fun. 

List (`ls`) files in the directory your are in
```ctr:developer
ls
```

Create a new directory (`mkdir`)
```ctr:developer
mkdir app
```

Change directory (`cd`) into your new directory
```ctr:developer
cd app
```

### More apps

There are more exectuables on the system and most of them are in a directory called `bin` - but there are several `bin` locations. You can find all the `bin` directories with this command
```ctr:developer
sudo find / -type d -name "bin"
```

### Learning more

Most executables have some sort of help builtin which you can access with the -h flag or --help parameter. 
```ctr:developer
find --help
```

You can also use the manual pages to get very detailed information.
```ctr:developer
man find
```

[NEXT](./step02.md)