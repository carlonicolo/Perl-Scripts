#!/usr/bin/perl

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
	
sub readFile{
	$path = @_;
	open($fr, "<", $name_path);
	while($row = <$fr>)
	{
		chomp($row);
		print($row, "\n");
	}
	close($fr);
}
	
print("What is the file to open ?\n");
#The function chomp() removes any trailing string that corresponds to the current 
#value of $/ (also known as $INPUT_RECORD_SEPARATOR in the English module). 
#It returns the total number of characters removed from all its arguments
chomp($name_path = <STDIN>);
readFile($name_path);

print("\n");



sub readDir{
	#$dirname = '.';
	$pathDir = @_;
	print("Inside the sub with the param: $pathDir\n");
	opendir(DIR, $pathDir) or die "Could not open $pathDir\n";
	while ($filename = readdir(DIR)) {
		print "$filename\n" if -f $filename;
	}
	closedir(DIR);
}

print("Give me the path of the directory that you want inspect:\n");
chomp($nameDir = <STDIN>);
print("Value of nameDir: $nameDir");
readDir($nameDir);

#This is the file we want use
#$read = 'test.txt';
#Open() function, $fh is the variable containing all the content
#of the file because using the operator < we are reading from
# open($fr, "<", $read);
# while($row = <$fr>)
# {
	# chomp($row);
	# print($row, "\n");
# }
# 
# $write = 'test.txt';
# open($fw, ">>", $write);
# @array_of_name = ("Jackson", "Jimmy", "Willy");
# 
# foreach $name (@array_of_name){
	# print($fw "$name\n");
	# }
