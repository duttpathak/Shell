1 What is a shell?

A computer program that presents a command line interface that allows you to control your computer using commands entered with keyboard instead of controlling graphical user interfaces. 

2 What are the different types of shells?

Bourne Shell (sh), C Shell (csh), TENEX C Shell (tcsh), KornShell (ksh), Debian Almquiest Shell (dash), Bourne Again Shell (bash), Z Shell (zsh), and Friendly Interactive Shell (fish)

3 Describe five different shell commands and their usage?

```
cd (change directories) (ex. cd <directory>)
ls (list files in current directory) (ex. ls)
mv (move file) (mv <file/directory>  <file/directory>)
mkdir (make empty directory) (mkdir <filename>)
rm (remove one or more file) (rm <filename>)

```

4 What is a shell script? What is the file extention for a shell script?

```

A text file containing a sequence of commands for a UNIX-based OS and Linux OS. 
.sh(Bourne or Korn shell) or.csh(C shell).

```

5 What are the advantages of a shell script?

Usefull for repetitive tasks that may be time consuming to execute by typing one line at a time. Execute different commands with a few input data. 

6 What are the disadvantages of a shell script?

Since every command creates a new process, Shell scripts are slow as compared to compiled programs. Shell scrips are slow because every line creates a new process in the OS and when executing the program it runs as a single process. 

7 What are the different type of shell variables?

```

System-defined variables (environmental variables)
Example: echo $HOME

HOME (It contains location of the home directory of the user
cd<Enter> command will always take the user to home whose value is stored in this variable)
PATH (It contains the list of path name of directories separated with colon ‘:’ These directories are searched for an executable program. The directories are searched in the same order as specified in the variable).
PS1 (It contains the shell prompt settings)
SHELL (It stores the default shell of the user)


User-defined variables.
Example: var=3
         echo ${var}rd
Output:  3rd

```

8 How can you delete and declare shell variables?

```
To declare use (export "variable name")
To delete use (unset "variable name")

```

9 How can you add comments in a shell script?

```

With a hash (#) becomes comment.

```

10 How can you combine multiple strings in a shell?

```

Example 1
Using the += command. 

mystring="I would like to generate a meaningful output, please. "
mystring+="Not a chance, friend!"
echo "$mystring"

output = I would like to generate a meaningful output, please. Not a chance, friend!

echo "string  1 + string 2"

Example 2
#Declare first string
string1="Welcome"
#Declare second string
string2=" everyone "
#Combine first and second string
string3=$string1$string2
# Print the third string by combining with other string
echo "$string3 to our site"

output = Welcome everyone  to our site

```

11 How can you compare two values in a shell?

```

Using the == command. 

```

12 Describe at least two commands for printing shell output.

```

echo "Hello Work!"
printf "Hello world" 

```

13 How can you take user input in a shell script?

```
echo "Enter Your Name: "
read my_var
echo "Welcome ${my_var}!"
```

14 What are command line arguments in a shell?

Command-line arguments are parameters that are passed to a script while executing them in the bash shell. 

````
bash script 
echo "Script Name: $0"
echo "First Parameter of the script is $1"
echo "The second Parameter is $2"
echo "The complete list of arguments is $@"
echo "Total Number of Parameters: $#"
echo "The process ID is $$"
echo "Exit code for the script: $?"

Output

Script Name: ./command_line_arg.zsh
First Parameter of the script is 
The second Parameter is 
The complete list of arguments is 
Total Number of Parameters: 0
The process ID is 2702
Exit code for the script: 0

```


15 What is a weakly typed language? Does bash fall under this category?

Weakly typed languages have variables that are less tightly coupled to a specific type. variables can be implicitly converted to other data types to permit particular operations which otherwise can not happen. Bash is strong typed language. JavaScript is weakly typed language. 

```

var intNumbers = 123
var textNumbers = "one two three"
 intNumbers + textNumbers
 "123one two three"

```

16 How can you declare and access an array variable in a shell?


Indexed arrays - store elements with an index starting from 0

associative arrays - store elements in key-value pairs

```
Declaring 
declare -A assoc_array #uppercase A is used to declare an associative array. 
assoc_array[key]=value
OR
declare -a indexed_array #lowercase a is used to declare an indexed array.
indexed_array[0]=value

Accessing 
Examples:
assoc_array[element1]="Hello World"
echo ${assoc_array[element1]}

index_array=(1 2 3 4 5 6)
echo ${index_array[0]}


echo ${index_array[0]} #will print individual elements.
echo ${index_array[@]} #will print all the elements stored in the index array.
echo ${assoc_array[@]} #will print all the elements stored in the assoc array. 

```

17 What is a conditional statement in programming? Provide an example of each in the shell of your liking. 

```

Using bash syntax 
echo "enter the first number"
read num1

echo "enter the second number"
read num2

if [ $num1 -eq $num2 ]; then
        echo "the numbers match"
else
        echo "the number do NOT match"
fi

```

18 What is a loop in programming? Provide an example of each in the shell of your liking. 

Loops are series of commands that rerun until a particular situation is reached. Useful for automating repetitive tasks. 
Using bash 
```
-While loop
while [ <some test>]
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

Examples:
-While loop

counter=1 #initialise the variable counter with it's starting value.
while [ $counter -le 10 ] #counter is less than or equal to 10
do
    echo $counter #Here echo is being used as it's an easy way to illustrate what is going on.
    ((counter++)) #Using the double brackets we can increase the value of counter by 1.
done #We're at the bottom of the loop so go back to line 5 and perform the test again.

echo ALL done 

-Until loop

counter=1
until [ $counter -gt 10 ]
do
    echo $counter
    ((counter++))
done

echo All done

-For loop 

names='Stan Kyle Cartman' #Create a simple list which is a series of names.

for name in $names #For each of the items in the list $names assign the item to the variable $name and do the following commands.
do
    echo $name
done

echo All done

```
-Controlling loops 
Breaks and continue (some files may not have access to read, so continue on to next. Sometimes the disk space get's below a certain level, so it stops/breaks)

19 How can you check if a file exists (or not) in a shell?

```

file=/tmp/downloads
if [ -f "$file" ];
then
    echo "$file exists."
else
    echo "$file does not exist."
fi

```

20 How can you check if a directory exists (to not) in a shell?

```
DIR=/tmp/downloads
if [ -d "$DIR" ];
then
    echo "$DIR directory exists."
else
    echo "$DIR directory does not exist."
fi

```

21 How can a shell script be terminated? Forcely exit  

22 How can you make a shell script executable?

chmod +x <filename.sh>


23 Describe five different file options. E.g., “-L“ checks if a file exists and is a symbolic link.


```
#-d from 20 (five options and explain)

-f: Returns True if the file exists as a common (regular) file. 
-d: Returns True if directory exists. 
-e: Returns True if any type of file exists. 
-c: Returns True if the character file exists. 
-r: Returns True if a readable file exists. 

```

24 How can you print a particular line inside an existing file in the shell?

```
head -x file_name | tail +x
replace x with the line number and file_name with file name

```

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

```



```

30 What is the purpose of the exit status of a shell command?

Exit status is an integer number. 0 exit status means the command was successful without any errors. A non-zero (1-255 values) exit status means command was a failure. 

31 Write a shell script to print the exit status of a command. 

```

#!/bin/zsh
echo $?

```

Process is anything executing at a given time 
CPU, storage, memory, Unix and linux

Process will execuate until you stop 


Do a pull request in github (put it in )

Temperory (memory) and permanent (hard disk) space 
CPU is responsible for extract, decode, and execute 