a) q1.sh - this script will require a file as an input.

The general syntax of running this script is as follows: 
./q1.sh file_name

For example: If the file name is file.txt(present in the same folder which contains this script) then the command to execute the script will be as follows:
./q1.sh file.txt

Approach - 
In the script, I store the total no. of lines of the input file in the variable 'total' and then I check whether the no. of lines is odd or even through the variable 'rem' i.e. remainder. This is because:

if the no. of lines is odd, let's say 3 then the middle line will be:
3/2 + 1 = 1 + 1 = 2nd line
and if the no. of lines is even, let's say 4 then the middle line will be:
4/2 = 2nd line.

Next, I store this middle line no. in the variable 'line' and print it through awk.

b) q2.sh - in this script I am taking the path file '/etc/shells' which contains all the shells available in our system.

Then firstly, I check only the lines which start with '/' so that the first line is ignored, which is:
# /etc/shells: valid login shells

Next I check only the shells which belong to /usr. In the end I only print the unique shells through the 'uniq' keyword.
