#!/usr/bin/perl


#For converting phylip format to fasta format

$input = <atp1.phy>;
$output = <atp1.fasta>;
# opening phylip format file
open (BOO, $input) || die "Can't open your $input";
open (OUT, ">>$output") || die "Can't open your $output";
# It reads file contents, separates header and sequences,
# and displays each sequences in the fasta format

while ( $line = <BOO> )	{
  if( $line =~ /^(.*)\s{3,}(.*$)/ ){
#$1 is the header and $2 is the fasta seq
 	print OUT ">$1\n";
	print OUT "$2\n";
	
		}
	}


# closing the phylip format file
close BOO;
close OUT;

exit
