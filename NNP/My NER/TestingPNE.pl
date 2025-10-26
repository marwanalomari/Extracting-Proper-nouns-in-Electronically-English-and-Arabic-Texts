use strict;
use warnings;

open(TT,"test.txt");

while( <TT> ){
	my $line = $_;
	while( $line =~ /\b(Dr|Mr|Mrs|St|Prof|M|Ms|dr|mr|mrs|st|prof|ms)\.\s*([A-Z][A-Za-z]+)\b/g){
		print $&."\n";
	}
	while( $line =~ /\b(Doctor|Mister|Miss|Street|Professor|President|Madam|Sir|Dear|Hello|Hi|Bonjour)\s*([A-Z][A-Za-z]+)\b/ig){
		print $&."\n";
	}
	while( $line =~ /\b([A-Z][A-Z]+)\b/g){
		print $&."\n";
	}
	while( $line =~ /(The|the)\s*([A-Z][A-Za-z]+)\s*([A-Z][A-Za-z]+)\s*([A-Z][A-Za-z]+)/g){
		print $&."\n";
		}
	while( $line =~ /\b(The|the)\s*([A-Z][A-Za-z]+)\s*([A-Z][A-Za-z]+)\b/g){
		print $&."\n";
		}
	while( $line =~ /\b([A-Z][A-Za-z]+)\s*([A-Z][A-Za-z]+)\s*(?:[A-Z][a-z]+\s*)*\b/g){
		print $&."\n";
	}
	while( $line =~ /\b([A-Z][a-z]{1,2})\.\s+(?:[A-Z][a-z]+\s*)*\b/g){
		print $&."\n";
	}
	while( $line =~ /\b([A-Z][A-Za-z]+)\s*([A-Z]{1})\.\s*([A-Za-z]+)\b/g){
		print $&."\n";
	}
	while( $line =~ /\b([A-Z][A-Za-z]+)\s+([0-9]+)/g){
		print $1."\n";
	}
	while( $line =~ /\b(in|In|On|on|At|at|to|To|through|by|Through|against|With|with|about|but|behind|as|a|A)\s*([A-Z][A-Za-z]+)\b/g){
		print $2."\n";
	}	
	while( $line =~ /\b([Uu]niversity)\s(of)\s([A-Za-z]+)/g){
		print $&."\n";
	}
	while( $line =~ /\b([A-Z][A-Za-z]+)\s(or|and|with|met|meets|greated|greats|slams) ([A-Z][A-Za-z]+)/g){
		print $1." ".$3."\n";
	}
	while( $line =~ /\b(?:([A-Z][A-Za-z]+))\s*([A-Z][A-Za-z]+\'s)\b/g){
		print $&."\n";
	}
	while( $line =~ /\b(local|when)\s*([A-Z][A-Za-z]+)\b/g){
		print $2."\n";
	}
	while( $line =~ /\b([A-Z][A-Za-z]+)\s*(announced)/g){
		print $1."\n";
	}
	while( $line =~ /\b([A-Z][A-Za-z]+)\s*(governor|adviser[s])\b/g){
		print $1."\n"; #weak needs optional
	}
}
close(TT);