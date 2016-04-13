#!/usr/bin/perl

$DNA = "ATGCCATTACCAAATTTTGAGACTCTAATCGGATTCCATTACCTTGGAACCAAAATTT";
$start_codi = 10;
$end_codi = 20;
$feature = forward;
print "\n";
print ">DNA_seq";
print "\n";
print $DNA;
print "\n";

if ($feature eq forward)
	{
		$DNA = reverse$DNA;

		$DNA =~ tr/ACGTacgt/TGCAtgca/;
print "\n";
print ">reversecomplement_seq";
print "\n";
print $DNA;
print "\n";		
		$reverse_complement = substr ( $DNA, $start_codi, $end_codi );
		
			 }
else
	{
			}

print "\n";
print ">reversecomplement_seq";
print "_$start_codi";
print "_$end_codi";
print "\n";
print $reverse_complement;
print "\n";
