#!/usr/bin/perl

use strict;
use warnings;
use File::Basename;

#Perl code to process filepath/directory path 

my $bldName = "";
my $fpath = "/export/home/workspace/nightly.fusion.main/fusion/components/services/configMgr/csm/cmNetCfg.cc";

#======================
# The following code strips a file-path/location into a filename &
# dierctory path to the file. 
#======================
print "\nFilePath => " . $fpath . "\n";
 
my($filename, $directories) = fileparse($fpath);
print "Filename  : " . $filename    . "\n";
print "Directory : " . $directories . "\n";

#======================
# The following code splits the directory-path between "/" and
# assigns into an array. We search through the array to find a 
# keyword that matches a specific directory
#======================
my @filecomp = split(/\//,$fpath);
#my $size = @filecomp;
#print "$size\n \n";

for (my $i = 0; $i < @filecomp; $i++) 
{
=put 
 if($i)
	{
		print "#". $i.":".$filecomp[$i] . "\n";
	}
=cut		
	if ($filecomp[$i] eq "workspace")
	{
		$bldName = $filecomp[$i+1];
		last;
	}
}
print "\nString value = ". $bldName . "\n";

