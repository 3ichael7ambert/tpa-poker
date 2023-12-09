{
	winner="";
	payoff=0;
	for (r=0; r<5; r+=1)
	{
		tile[r].draw=0;
		tile[r].side[0]=card[r*2];
		tile[r].side[1]=card[r*2+1];
		tile[r].alarm[0]=r+1;
	}
}
action_set_alarm(15, 1);
