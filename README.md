1 What is a shell?

A computer program that presents a command line interface that allows you to control your computer using commands entered with keyboard instead of controlling graphical user interfaces. 

2 What are the different types of shells?

Bourne Shell (sh), C Shell (csh), TENEX C Shell (tcsh), KornShell (ksh), Debian Almquiest Shell (dash), Bourne Again Shell (bash), Z Shell (zsh), and Friendly Interactive Shell (fish)

3 Describe five different shell commands and their usage?

```
cd (change directories) 
ls (list files in current directory)
mv (move file), mkdir (make empty directory)
rm (remove one or more file).

```

4 What is a shell script? What is the file extention for a shell script?

A text file containing a sequence of commands for a UNIX-based OS and Linux OS.  

5 What are the advantages of a shell script?

Usefull for repetitive tasks that may be time consuming to execute by typing one line at a time. Execute different commands with a few input data. 

6 What are the disadvantages of a shell script?

Since every command creates a new process, Shell scripts are slow as comparted to compiled programs. Shell scrips are slow because every line creates a new process in the OS and when executing the program it runs as a single process. 

7 What are the different type of shell variables?

```

System-defined variables (environmental variables)

Examples: 	echo $HOME

User-defined variables. 
Syntax:
Variable_name=variable_value
(Don’t use space on either side of ‘=’ sign)
Example: a=5

```

8 How can you delete and declare shell variables?

```
To declare use (export "variable name")
To delete use (unset varialbe_name)
```

9 How can you add comments in a shell script?

With a hash (#) becomes comment.

10 How can you combine multiple strings in a shell?

Using the += command. 

```

mystring="I would like to generate a meaningful output, please. "
mystring+="Not a chance, friend!"
echo "$mystring"

output = I would like to generate a meaningful output, please. Not a chance, friend!

```

11 How can you compare two values in a shell?

Using the == command. 

12 Describe at least two commands for printing shell output.

echo "Hello Work!"
printf "Hello world\n" (\n FORMAT controls teh output as in C printf. \n is use to print new line.)

13 How can you take user input in a shell script?

```
echo "Enter Your Name: "
read my_var
echo "Welcome ${my_var}!"
```

14 What are command line arguments in a shell?

Command-line arguments are parameters that are passed to a script while executing them in the bash shell. 

15 What is a weakly typed language? Does bash fall under this category?

Weakly typed languages have variables that are less tightly coupled to a specific type. variables can be implicitly converted to other data types to permit particular operations which otherwise can not happen. Bash is strong typed language. JavaScript is weakly typed language. 

var intNumbers = 123
var textNumbers = "one two three"
 intNumbers + textNumbers
 "123one two three"

16 How can you declare and access an array variable in a shell?


Indexed arrays - store elements what an index starting from 0

associative arrays - store elements in key-value pairs

```

declare -a indexed_array
indexed_array[0]=value
index_array=(1 2 3 4 5 6)
echo ${index_array[0]} will print individual elements
echo ${assoc_array[@]} will print all the elements
echo ${#index_array[@]} will count the number of elements in an array
OR
declare -A assoc_array
assoc_array[key]=value

To delete 
unset index_array[1]

```

17 What is a conditional statement in programming? Provide an example of each in the shell of your liking. 

Using C++ syntax  
if (myDay == " Sunny")
    {
      // Decision
      Console.WriteLine("Read in the Library");
    }
    // 2nd condition
    else if (myday == "Raining")
    {
      //decision
      Console.WriteLine("Read at Home")
    }
    // 3rd condition
    else if (MyDay == "Cloudy")
    {
      // Decision
      Console.WriteLine("Read in the Garden")
    }

18 What is a loop in programming? Provide an example of each in the shell of your liking. 

Loops are series of commands that rerun until a particular situation is reached. Useful for automating repetitive tasks. 
Using bash 
```
-While loop
while [ <some test> ]
do
<commands>
done
-Until loop 
until [ <some test> ]
do
<commands>
done
-For loop 
for var in <list>
do
<commands>
done

```
-Controlling loops 
Breaks and continue (some files may not have access to read, so continue on to next. Sometimes the disk space get's below a certain level, so it stops/breaks)

19 How can you check if a file exists (or not) in a shell?

20 How can you check if a directory exists (to not) in a shell?

DIR=/tmp/downloads
if [ -d "$DIR" ];
then
    echo "$DIR directory exists."
else
	echo "$DIR directory does not exist."
fi

21 How can a shell script be terminated? Force terminate 

22 How can you make a shell script executable?

bash filename.zsh 

23 Describe five different file options. E.g., “-L“ checks if a file exists and is a symbolic link.

regular, directory, symbolic link, FIFO special, block special. 

24 How can you print a particular line inside an existing file in the shell?

head -x file_name | tail +x
replace x with the line number and file_name with file name

25 How can you find the length of a string in the shell?

```
str="this is a string"
n=${#str}
echo "Length of the string is : $n "
```

26 How can you run multiple shell scripts in parallel?

./script1.sh && ./script2.sh (second script runs only when first has error)

27 What is an environment variable? How can you declare one?

variables and constants 

Environmental variables are dynamic values which affect thte processes or programs on a computer. They exist in every operating system, but types may vary. Environment variables can be created, edited, saved, and deleted and give information about the system behavior. 

28 Write a shell script to print the HOME environment variable. 

```
create a file using vscode (directory.zsh)
Start the script with #! /bin/zsh
Write some code 
Save the script file as filename.zsh

echo $HOME

```

29 How can you debug (or troubleshoot) a problem with a shell script?

#!/bin/bash

read -p "Enter the input: " val
zero_val=0
if [ "$val" -gt "$zero_val" ]
then
   echo "Positive number entered."
else
   echo "The input value is not positive."
fi

 bash -n ./filename.zsh (this command will tell if you the script has any bugs)


30 What is the purpose of the exit status of a shell command?

Exit status is an integer number. 0 exit status means the command was successful without any errors. A non-zero (1-255 values) exit status means command was a failure. 

31 Write a shell script to print the exit status of a command. 

echo $?





Process is anything executing at a given time 
CPU, storage, memory, Unix and linux

Process will execuate until you stop 


Do a pull request in github (put it in )