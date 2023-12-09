{
image_single=0;
backs=0;
color=100;
phase=3;
cheater=0;
moneyin=0;
credits=100;
peak=100;
bet=0;
c=0;
r=0;
cc=0;
mode=0;
suit[0]=0;
rank[0]=0;
flush=0;
treetop=0;
straight=0;
quads=0;
trips=0;
pairs=0;
payoff=0;
winner="PLACE YOUR BET";
for (c=0; c<52; c+=1)card[c]=c;
for (r=0; r<5; r+=1) tile[r]=instance_create(5+r*158,60,cardbut)


FONT = font_add_sprite(spr_fontMP, ord(" "), 0, -1);
draw_set_color(c_white); //We use white as it is the default blending color.
 draw_set_font(FONT);
 
 }

action_create_object(betone, 50, 300);
action_create_object(betmax, 250, 350);
action_create_object(deal, 600, 300);
