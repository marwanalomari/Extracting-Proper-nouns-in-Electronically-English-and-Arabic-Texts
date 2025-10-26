use strict;
use warnings;
open(PNOUNS,"pnouns_dic.txt") || die "File does not exist";
my @pnouns = ();
while( my $sw = <PNOUNS>){
	chomp($sw);
	#print "$sw";
	push (@pnouns,$sw);
}
close(PNOUNS);

sub wordBelongTo{#returns 0 or 1 depending on either the word is in the array or not
	my ($w,@array) = @_ ;
	foreach my $a (@array){
		if (lc($w) eq lc($a)){
			return 1;
		}
	}
	return 0;
}

open(INPUT,"test.txt") || die "test.txt does not exist";


while( <INPUT> ){
	#print "hello";
	my $line = $_;
	#print "$line";
	my @words = split(/[\s,.;:'"!?\-#&()*]/,$line);
	
	foreach my $w (@words){
		#print "$w";
		if($w =~ /(?:\s*\b([A-Z][a-z]+)\b)+/){
			if(wordBelongTo($w,@pnouns) == 0){
				print "$w\n";
			}
		}
	}
}

close(INPUT);