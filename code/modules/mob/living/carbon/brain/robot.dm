/obj/item/mmi/digital/robot
	name = "robotic intelligence circuit"
	desc = "The pinnacle of artifical intelligence which can be achieved using classical computer science."
	icon = 'icons/obj/module.dmi'
	icon_state = "mainboard"
	w_class = 3


/obj/item/mmi/digital/robot/PickName()
	src.brainmob.name = "[pick(list("ADA","DOS","GNU","MAC","WIN"))]-[random_id(type,1000,9999)]"
	src.brainmob.real_name = src.brainmob.name

/obj/item/mmi/digital/robot/transfer_identity(var/mob/living/carbon/H)
	..()
	if(brainmob.mind)
		brainmob.mind.assigned_role = "Robotic Intelligence"
	brainmob << "<span class='notify'>You feel slightly disoriented. That's normal when you're little more than a complex circuit.</span>"
	return
