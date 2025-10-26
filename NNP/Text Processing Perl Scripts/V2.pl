#V2

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

open (TT,"text.txt");
while( <TT> ){
	my $line = $_;
	my @words = split(/[.]/,$line);
	
	foreach my $w (@words){
	wordBelongTo($w,@stopwords);
		if( length ($w) gt length($a)){
				print "$w\n";
			}
		}
	}
close(TT);