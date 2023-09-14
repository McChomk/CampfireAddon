#define race_name	return "FISH";
#define race_text return "CHARACTER 1";

#define race_menu_button
sprite_index = sprCharSelect;
image_index = 1;

#define race_cf					return true;
#define race_cf_sprnotselected	return sprMutant1Idle;
#define race_cf_sprselected		return sprMutant1Walk;
#define race_cf_sprselecting 	return sprMutant1GoSit;
#define race_cf_sprdeselecting	return sprMutant1Hurt;
#define race_cf_shadowx			return 0;
#define race_cf_shadowy		    return 0;
#define race_cf_corpse			return true;

//#define race_cf_couple						return "camprace_b";
#define race_cf_couple_xoffset				return -12;
#define race_cf_couple_yoffset				return 0;
#define race_cf_couple_sprnotselectedn		return sprMutant1Idle;
#define race_cf_couple_sprselectedn			return sprMutant1Walk;
#define race_cf_couple_sprselectingn 		return sprMutant1GoSit;
#define race_cf_couple_sprdeselectingn		return sprMutant1Hurt;
#define race_cf_couple_sprselected			return sprMutant1BIdle;
#define race_cf_couple_sprselecting 	    return sprMutant1BGoSit;
#define race_cf_couple_sprdeselecting	    return sprMutant1BHurt;
#define race_cf_couple_sprswapping 	    	return sprMutant1BWalk;
#define race_cf_couple_sprdeswapping	    return sprMutant1BDead;

#define create
spr_dead = sprMutant1Dead; //When Dying