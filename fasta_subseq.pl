#!/usr/bin/perl


print "Enter the input FASTA file name";
$input = <>;
chomp ($input);

print "Enter the start coordinate of substring";
$start_codi = <>;
chomp ($start_codi);

print "Enter the end coordinate of substring";
$end_codi = <>;
chomp ($end_codi);

print "Enter the feature of DNA strand";
$feature = <>;
chomp ($feature);
#open the file

open(FASTA, $input ) || die "Can't open $input_file, stupid: \!n";

#read in the file
while( $line = <FASTA> ){

if( $line =~ /\A>/ ){

#do nothing its a sequence name
			}

else			{

$offset = $end_codi - $start_codi;
$sub_seq = substr ( $line, $start_codi, $offset );

				
			}	
		}	

if($feature =~ /reverse/)

{
$revcom = reverse $sub_seq;
$revcom =~tr/ACGTacgt/TGCAtgca/;
print ">cox1.fasta";
print "_$start_codi";
print "_$end_codi";
print "_reverse";
print "\n";
print $revcom;
print "\n";
chomp ($revcom);
}

else

{
print ">cox1.fasta";
print "_$start_codi";
print "_$end_codi";
print "_forward";
print "\n";
print $sub_seq;
print "\n";
chomp ($sub_seq);

}

close FASTA;
exit;
