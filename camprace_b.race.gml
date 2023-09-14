#define race_name	return "CRYSTAL";
#define race_text return "CHARACTER 2";

#define race_menu_button
sprite_index = sprCharSelect;
image_index = 2;

#define race_cf					return true;
#define race_cf_sprnotselected	return sprMutant2Idle;
#define race_cf_sprselected		return sprMutant2Walk;
#define race_cf_sprselecting 	return sprMutant2GoSit;
#define race_cf_sprdeselecting	return sprMutant2Hurt;
#define race_cf_shadowx			return 0;
#define race_cf_shadowy		    return 0;
#define race_cf_corpse			return true;

//#define race_cf_couple						return "camprace_a";
#define race_cf_couple_xoffset				return 12;
#define race_cf_couple_yoffset				return 0;
#define race_cf_couple_sprnotselectedn		return sprMutant2Idle;
#define race_cf_couple_sprselectedn	    	return sprMutant2Walk;
#define race_cf_couple_sprselectingn 		return sprMutant2GoSit;
#define race_cf_couple_sprdeselectingn		return sprMutant2Hurt;
#define race_cf_couple_sprselected			return sprMutant2BIdle;
#define race_cf_couple_sprselecting 	    return sprMutant2BGoSit;
#define race_cf_couple_sprdeselecting	    return sprMutant2BHurt;
#define race_cf_couple_sprswapping 	    	return sprMutant2BWalk;
#define race_cf_couple_sprdeswapping	    return sprMutant2BDead;

#define create
spr_dead = sprMutant2Dead; //When Dying