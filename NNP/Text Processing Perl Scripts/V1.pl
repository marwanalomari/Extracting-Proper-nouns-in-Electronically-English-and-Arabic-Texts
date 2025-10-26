#V1
open (TT,"text.txt");
my $t= "";
while ($line = <TT>){
$t.= $line;
@sentences = split (/[.]/,$line);
if ($t =~ /^[A-Z]/ or $t =~ /[a-z]$/){
	foreach $sentences (@sentences){
	
	print  $sentences."\n";
	}
}
}

use strict;

open(STOPWORDS,"stopwords.txt") || die "File does not exist";
my @stopwords = ();
while( my $sw = <STOPWORDS>){
	chomp($sw);
	push (@stopwords,$sw);
}
close(STOPWORDS);

sub wordBelongTo{#returns 0 or 1 depending on either the word is in the array or not
	my ($w,@array) = @_ ;
	foreach my $a (@array){
		if (lc($w) eq lc($a)){
			return 1;
		}
	}
	return 0;
}

open(INPUT,"test.txt");

while( <INPUT> ){
	my $line = $_;
	my @words = split(/[\s,.;:'"!?\-#&()*]/,$line);
	
	foreach my $w (@words){
		if( $w =~ /^[A-Z][a-z]+/){
			if(wordBelongTo($w,@stopwords) == 0){
				print "$w\n";
			}
		}
	}
}
close(INPUT);