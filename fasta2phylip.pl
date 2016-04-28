#!/usr/bin/perl

#script for converting fasta to phylip format

$input = <atp1.fas>;
$outfile = "atp1.phylip";
my @taxa;
my $no_seq = 0;

#for opening the fasta file
open ( FAS, $input ) || die "Can't open your $input";
open (OUT, ">>$outfile") || die "can't open your $outfile";
#for reading the content of file, pushing things into arrays and counting # of seq
while( $line = <FAS> ){
	if( $line =~ /\>(.*)/){
	   push @taxa, $1;
	 
	   $no_seq++;
				}
	   push @fas, $line;
			   }
#close the fasta file
close FAS;
#print @taxa, "\n";
#print $no_seq, "\n";
#print @fas, "\n";

# joining the elements of @fas in a string
$fas = join('', @fas);

#print $fas;

#breaking(spliting) $fas in an array that will contain only the sequences, header will be removed
my @fasta = split(/>.*/, $fas);
#print @fasta;

#removing new line character from sequences
for($i = 0; $i < @fasta; $i++){
        $fasta[$i] =~ s/\n//g;
        }
shift(@fasta);
#calculating each sequence length
$maxL= '';
for($b = 0; $b < @taxa; $b++){
	if(length ($taxa[$b]) > length($maxL)){
		$maxL = $taxa[$b];
		}
 }

$void = length($maxL)+"\t"+1;

for($i = 0; $i<@fasta; $i++){
$seq_len = length(@fasta[$i]);
	}
#print $seq_len;

#printing the phylip format
print OUT "$no_seq\t$seq_len\n";
for($i = 0; $i < @taxa; $i++){
$taxa[$i] =~ s/\s+/_/g;
print OUT $taxa[$i];
$lee = $void - length($taxa[$i]);
for($a = 1; $a <= $lee; $a++){
print OUT " ";
		}
print OUT $fasta[$i], "\n";

}

close OUT;	
exit;
