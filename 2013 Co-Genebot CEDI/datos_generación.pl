#!/usr/bin/perl

my $conta = 0;
my $sum_turn = 0;
my $sum_pos = 0;
my $max = 0;
my $min = 100;



while ($linea=<>){
		chop($linea);
		#print $linea;
	if ($linea=~/Turnos:([^ \.]*) Puesto:([^ \.]*)/){
		$conta++;
		$sum_turn = $sum_turn + $1;
		$sum_pos = $sum_pos + $2;

#		print $1;
#		print "\n";
#		print $2;
#		print $3;

	}

	if($conta == 80){
		print $sum_pos/$conta;
		print " ";
		print $sum_turn/$conta;
		print "\n";

		$conta = 0;
		$sum_turn = 0;
		$sum_pos = 0;
	}
}
	

