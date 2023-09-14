# CampfireAddon
Additional cosmetics for modded characters!

### CREDITS
>McChomk (Main Mod coding)
>Golden Epsilon (Couple System)
	
*FOR HELP CONTACT McChomk#9393 ON DISCORD*

### IMPORTANT INFO
You need to have this file load AFTER your characters have been loaded.
In the main.txt that loads the character you want to add support for,
add as the last line "/loadmod campfire_loader", and after that load a secondary
text file, which enables Campfire Addon to autoupdate, like so:

>> main.txt
>loadrace race1/fish
>loadrace race2/crystal
>loadmod campfire_loader
>load main2.txt

>> main2.txt
>allowmod campfire_loader.mod.gml

### START
To give a custom character Campfire support, use this code, it will detect the character automatically.

>#define race_cf						return true;
>#define race_cf_sprnotselected	    return <The character's "selected" sprite>;
>#define race_cf_sprselected			return <The character's "not-selected" sprite>;
>#define race_cf_sprselecting 	    	return <The character's "selecting" sprite (Transition from non-selected to selected)>;
>#define race_cf_sprdeselecting	    return <The character's "deselecting" sprite (Transition from selected to non-selected)>;
>#define race_cf_shadowx				return <Shadow's X offset>;
>#define race_cf_shadowy		    	return <Shadow's Y offset>;
>#define race_cf_corpse				return <Whether the character's corpse should appear on Loop Campfire>

### PROPS
While the word "prop" is used, it acts more like a "setpiece" of sorts, as the character doesn't interact with the object.
For animated stuff, include it in the character's animations

>#define race_cf_prop			return <The prop's sprite. For characters that don't have props, don't define the function>;
>#define race_cf_proptyp		return <-1 or 1, -1 = Prop below character, 1 = Prop above character>;

### COUPLE SUPPORT
Both characters have to have each other set as couple. *DON'T SET OTHER PEOPLE'S CHARACTERS FOR COUPLE UNLESS WITH PRIOR DISCUSSION!*
(For Prop support, only set the prop in one of the characters)

>#define race_cf_couple						return <The other character's mod file name as a string, e.j.: If your character's file-name is "fishbutbig" and it's race_name is set to return "MegaFish", use "fishbutbig". For characters that don't have a couple, don't define the function>;
>#define race_cf_couple_xoffset				return <The character's x offset from the center>;
>#define race_cf_couple_yoffset				return <The character's y offset from the center>;

>#define race_cf_couple_sprnotselectedn				return <The character's "selected" sprite>;
>#define race_cf_couple_sprselectedn					return <The character's "not-selected" sprite>;
>#define race_cf_couple_sprselectingn 					return <The character's "selecting" sprite (Transition from non-selected to selected)>;
>#define race_cf_couple_sprdeselectingn				return <The character's "deselecting" sprite (Transition from selected to non-selected)>;
	These functions work exactly like the standard race_cf_spr<Type> functions.

>#define race_cf_couple_sprselected			return <The character's "partner selected" sprite>;
>#define race_cf_couple_sprselecting 	    	return <The character's "partner selecting from not-selected" sprite>;
>#define race_cf_couple_sprdeselecting	    	return <The character's "partner deselecting from not-selected" sprite>;
>#define race_cf_couple_sprswapping 			return <The character's "partner selecting from selected" sprite>;
>#define race_cf_couple_sprdeswapping	    	return <The character's "selected from partner selected" sprite>;

### PARTICLE ON-LOAD
When the mod is first loaded, it will execute a particle creation script for extra flair

>#define race_cf_spawnparticles		<The particle creation script that you want to use, for customization purposes, you have to make it yourself. For characters that don't have spawn particles, don't define the function>;

### ALTERNATE CHAR. SELECTOR SUPPORT

>#define race_cf_characterset	return <String. The Character Set ID the given character is a part of, used for WigglerCola's Alt. Character Select system>;
	Don't define if your character is part of the standard Character Set (Fish, Crystal, Melting, etc...).
	The script does nothing on it's own, it only works if Alt. Character select is loaded (Package it alongside your mod if you want that functionality). 