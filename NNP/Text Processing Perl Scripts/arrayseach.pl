sub indexOf {
    my ( $elem,@arr) = @_;
	my $i = 0;
	foreach my $a(@arr){
		if( $a eq $elem ){
			return $i;
		}
		$i++;
	}
	return -1;
}

@terms = ("breakthrough", "drug", "for", "schizophrenia");

print indexOf("for",@terms);