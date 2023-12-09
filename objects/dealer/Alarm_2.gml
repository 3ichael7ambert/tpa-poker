{
	for (r=0; r<5; r+=1;)
	{
		if (tile[r].draw)
		{
			tile[r].side[0]=tile[r].side[1];
			tile[r].alarm[0]=r+1;
		}
	}
}
action_set_alarm(15, 3);
