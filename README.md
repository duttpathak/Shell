What is a shell?
A computer program that presents a command line interface that allows you to control your computer using commands entered with keyboard instead of controlling graphical user interfaces. 

What are the different types of shells?
Bourne Shell (sh), C Shell (csh), TENEX C Shell (tcsh), KornShell (ksh), Debian Almquiest Shell (dash), Bourne Again Shell (bash), Z Shell (zsh), and Friendly Interactive Shell (fish)

Describe five different shell commands and their usage?
cd (change directories), ls (list files in current directory), mv (move file), mkdir (make empty directory), rm (remove one or more file).

What is a shell script?
A text file containing a sequence of commands for a UNIX-based OS. 

What are the advantages of a shell script?
Usefull for repetitive tasks that may be time consuming to execute by typing one line at a time. Execute different commands with a few input data. 

What are the disadvantages of a shell script?
The process is slow initially and improves gradually. 

What are the different type of shell variables?
System-defined variables and user-defined variables. 

How can you delete and declare shell variables?
To declare use (export "variable name")
To delete use (unset filename)

How can you add comments in a shell script?
With a hash (#) becomes comment.

How can you combine multiple strings in a shell?
Using the += command. 

How can you compare two values in a shell?
Using the == command. 

Describe at least two commands for printing shell output. 
echo "Hello Work!"
printf "Hello world\n" (\n FORMAT controls teh output as in C printf. \n is use to print new line.)

How can you take user input in a shell script? 

What are command line arguments in a shell?

What is a weakly typed language? Does bash fall under this category?
Weakly typed languages have variables that are less tightly coupled to a specific type. variables can be implicitly converted to other data types to permit particular operations which otherwise can not happen. Bash is strong typed language. JavaScript is weakly typed language. 

var intNumbers = 123
var textNumbers = "one two three"
 intNumbers + textNumbers
 "123one two three"

How can you declare and access an array variable in a shell?
Indexed arrays - store elements what an index starting from 0
associative arrays - store elements in key-value pairs

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


What is a conditional statement in programming? Provide an example of each in the shell of your liking. 

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

What is a loop in programming? Provide an example of each in the shell of your liking. 

Loops are series of commands that rerun until a particular situation is reached. Useful for automating repetitive tasks. 
Using bash 
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
-Controlling loops 
Breaks and continue (some files may not have access to read, so continue on to next. Sometimes the disk space get's below a certain level, so it stops/breaks)
How can you check if a file exists (or not) in a shell?

How can you check if a directory exists (to not) in a shell?

How can a shell script be terminated?

How can you make a shell script executable?

Describe five different file options. E.g., “-L“ checks if a file exists and is a symbolic link.

How can you print a particular line inside an existing file in the shell?

How can you find the length of a string in the shell?

How can you run multiple shell scripts in parallel?

What is an environment variable? How can you declare one?

Write a shell script to print the HOME environment variable. 

How can you debug (or troubleshoot) a problem with a shell script?

What is the purpose of the exit status of a shell command?

Write a shell script to print the exit status of a command. 