{
for (c=0; c<10; c+=1)
{
r=floor(random(52));
cc=card[c];
card[c]=card[r];
card[r]=cc;
}
phase+=6*(color<40)-6*(color>210);
color+=phase;
}

var __b__;
__b__ = action_if((mode=0) && (bet=5));
if __b__
{
{
dealer.mode = 1;
action_set_alarm(1, 0);
}
}
