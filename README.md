# Bash_challenge
bash script challenge from my systems admin class


## Challenge
CLI Exercises (Ungraded)

Instructions: Complete the following tasks below

1. Write a shell script that will create an empty directory named starter,
   change its current directory to that directory, and then process the output of
   the hier.txt file. For each line of the file do the following:
   
   a. when a line of the output starts with the sequence "create-directory" it will 
      create a directory named with the path contained in that line,
      
   b. otherwise, when a line starts with the sequence "delete-directory" it will 
      remove the directory named with the path contained in that line,
      
   c. otherwise, when a line starts with the sequence "delete-file" it will 
      remove the file named with the path contained in that line,
      
   d. otherwise, when a line starts with the sequence "create-file" it will 
      create an empty file named with the path contained in that line.
      
HINT: You will need to use the read function to read in the contents of the file.

## Notes on challenge
After having completed the challenge, I decided to challenge myself in finding a solution with the least amount of lines.
- solution using read as per instructions can be found in the solution.sh file
- solution with least amount of lines is found in the solutionMinLines.sh file
