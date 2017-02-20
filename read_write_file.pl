#!/usr/bin/perl

#Important for using various shell command
use Cwd;

# print("What do you want do with test.txt file ?\n");
# print("Selct:\n");
# print("r ---> for read\n");
# print("w ---> for write\n");

#In this variable is stored the value that the user inserted
# $r_w = <STDIN>;

#if(($r_w ne 'r') && ($r_w ne 'w'))
# if($r_w eq 'r')
	# {
		# print("The only values allowed are:\n r for reading\n w for writing\n");
	# }
	# 
# elsif($r_w eq 'w')
	# {
		# print("ok esegui funzione write");
	# }
	# 
# else
	# {
		# print("Bye Bye !!!\nThe only values allowed are:\n r for reading\n w for writing\n");
	# }
	
#Function that execute the equivalent ls command in linux
#on the path passed as parameter with this type of format: C:\\folder\\folder
#and list only the files(if there are) present in that path folder
sub readDir{
	#$dirname = 'C:\Users\carlo';
	@pathDir = @_;
	print("\n");
	print("\n********* Sub readDir *********************\n");
	#print("Inside pathDir array: @pathDir[0]\n");
	#print("Inside the sub with the param: @pathDir[0]\n");
	opendir(DIR, $pathDir[0]) or die "Could not open $pathDir\n";
	while ($filename = readdir(DIR)) {
		print "$filename\n" if -f $filename;
	}
	closedir(DIR);
	print("********* end Sub readDir *****************");
	print("\n")
}

print("I'm in this path folder now: \n");
print(getcwd, "\n");
print("Give me the directory that you want inspect: \n");
chomp($x = <STDIN>);
chdir($x);
print("\nCheck where i'm now:\n");
print getcwd;
@dir_path = $x;
readDir(@dir_path);



#Function that allow to open and read the content of a specified file
#present in the current directory
sub readFile{
	@path = @_;
	print("\n");
	print("********* Sub readFile *********************\n");
	# print("Inside sub\n");
	# print("Value of path: @path\n");
	print("Value of path0: @path[0]\n");
	# print("Value of path: $path\n");
	open($fr, "<", @path[0]);
	while($row = <$fr>)
	{
		chomp($row);
		print($row, "\n");
	}
	close($fr);
	print("********* end Sub readFile *****************\n");
}
	
print("What is the file to open ?\n");
#The function chomp() removes any trailing string that corresponds to the current 
#value of $/ (also known as $INPUT_RECORD_SEPARATOR in the English module). 
#It returns the total number of characters removed from all its arguments
chomp($name_path = <STDIN>);
@name_path = $name_path;
#print("Value name_path before calling the method: @name_path\n");
readFile(@name_path);
print("\n");


#Function that allow to write in the file passed as param
# $write = 'test.txt';
# open($fw, ">>", $write);
# @array_of_name = ("Jackson", "Jimmy", "Willy");
# 
# foreach $name (@array_of_name){
	# print($fw "$name\n");
	# }
