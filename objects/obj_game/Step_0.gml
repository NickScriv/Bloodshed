
switch (state)
{
	case "In_Game":
		draw_set_alpha(1);
		break;
	case "In_Room_Transition_Enter":
		alpha -= .05;
		if (alpha <= 0)
		{
			alpha = 0;
			state = "In_Room_Transition_Exit";
		}
		draw_set_alpha(alpha);
		break;
	case "In_Room_Transition_Exit":
		alpha += .05;
		if (alpha >= 1)
		{
			alpha = 1;
			state = "In_Game";
		}
		draw_set_alpha(alpha);
		break;






}