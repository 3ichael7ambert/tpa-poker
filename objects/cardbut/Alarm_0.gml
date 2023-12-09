image_single = 52;
angle_deg=random(5);
angle_neg=ceil(random(2));

if angle_neg=1 then
{image_angle=-angle_deg;}
else
{image_angle=angle_deg;}


depth=random(10);
color=round(random(5));

if color=0 {sprite_index=sCard;}
if color=1 {sprite_index=sCardBlue;}
if color=2 {sprite_index=sCardRed;}
if color=3 {sprite_index=sCardGrn;}
if color=4 {sprite_index=sCardPurp;}
if color=5 {sprite_index=sCardOrg;}


backs=floor(random(5));


action_set_alarm(9, 1);
