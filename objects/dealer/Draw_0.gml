action_draw_font_old("Times New Roman", 16, 0, 0, 0, 0);
action_draw_text("BET "+string(bet), 509, 400);
action_draw_text("CREDITS "+string(credits), 346, 400);
action_draw_text("PEAK "+string(peak), 8, 400);
var __b__;
__b__ = action_if(payoff);
if __b__
{
{
action_draw_text("WINNER PAID "+string(payoff), 122, 0);
}
}
__b__ = action_if(mode=2);
if __b__
{
{
font_color = make_color_rgb(color,0,255-color);
action_draw_text("select discards", 336, 0);
}
}
action_draw_font_old("Times New Roman", 14, 32768, 1, 0, 0);
action_draw_variable(winner, 197-string_width(string_hash_to_newline(string(winner)))/2, 200);
font_color = make_color_rgb(color,color/2,255-color);
action_draw_variable(winner, 196-string_width(string_hash_to_newline(string(winner)))/2, 225);
__b__ = action_if(moneyin);
if __b__
{
{
action_draw_font_old("Times New Roman", 14, 0, 0, 0, 0);
action_draw_text("" + string(score/moneyin*100) + "%", 2, 0);
}
}
