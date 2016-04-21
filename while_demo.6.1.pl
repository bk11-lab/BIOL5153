#!/usr/bin/perl

# Add up some odd numbers
 
print "Enter the first variable count";
$count=<>;
print "Enter the second variable max";
$max=<>;

$sum = 0;
$increment = 1;

while( $count < $max ){
  print $count, "\n";
  $sum += $count + $increment;
  $count += $increment;
}

print "The final count: $count\n";
print "The sum total was: $sum\n";

exit;


