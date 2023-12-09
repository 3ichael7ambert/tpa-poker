{
	mode=0;
	for (r=0; r<17; r+=1)
      {
        rank[r]=0;
        suit[r]=0;
      }
	for (r=0; r<5; r+=1)
	{
		suit[floor(tile[r].side[0]/13)]+=1;
		rank[tile[r].side[0] mod 13]+=1;
	}
	quads=0;
	flush=0;
	treetop=0;
	straight=0;
	trips=0;
	pairs=0;
	for (r=0; r<13; r+=1)
	{
		if (suit[r]=5) flush=1;
		if (rank[r] && rank[r+1] && rank[r+2] && rank[r+3] && rank[r+4]) straight=1;
		if (rank[r]=4) quads=1;
		if (rank[r]=3) trips=1;
		if (rank[r]=2) pairs+=1;
	}
	if (rank[0] && rank[9] && rank[10] && rank[11] && rank[12]) treetop=1;
	winner="PLACE YOUR BET";
	if ((rank[0]=2)  || (rank[10]=2) || (rank[11]=2) || (rank[12]=2))
	{
		winner="JACKS OR BETTER";
		payoff=bet;
	}
	if (pairs=2)
	{
		winner="TWO PAIRS";
		payoff=bet*2;
	}
	if (trips)
	{
		winner="THREE OF A KIND";
		payoff=bet*3;
	}
	if (straight || treetop)
	{
		winner="STRAIGHT";
		payoff=bet*4;
	}
	if (flush)
	{
		winner="FLUSH";
		payoff=bet*6;
	}
	if (trips && pairs)
	{
		winner="FULL HOUSE";
		payoff=bet*9;
	}
	if (quads)
	{
		winner="FOUR OF A KIND";
		payoff=bet*25;
	}
	if (straight && flush)
	{
		winner="STRAIGHT FLUSH";
		payoff=bet*50;
	}
	if (treetop && flush)
	{
		winner="ROYAL FLUSH";
		payoff=bet*250+2750*(bet=5);
	}
	moneyin+=bet;
	credits+=payoff;
	score+=payoff;
	bet=0;
	if (credits>peak) peak=credits;
}
var __b__;
__b__ = action_if(payoff);
if __b__
{
{
action_sound(win, 0);
}
}
__b__ = action_if(credits=0);
if __b__
{
{
action_set_alarm(1, 4);
}
}
