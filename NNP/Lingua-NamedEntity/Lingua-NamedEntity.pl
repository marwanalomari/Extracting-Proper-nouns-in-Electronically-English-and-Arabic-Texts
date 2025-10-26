sub openfile{
	$filename = shift; 
	open(TEXT,"test.txt");
	my $text = ""; 
	while (<TEXT>){
	$text.=$_;
	}
	close(TT);
	return $text;
}
$text = openfile();

use Lingua::EN::NamedEntity;
      my @entities = extract_entities($text);
	  foreach my $entity (@entities){
	  print $i++." ".$entity->{entity}."\n";
	  }