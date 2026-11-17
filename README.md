This is a simple mod that addresses the biggest problem i have with Zombies Chronicles in Call of Duty Black Ops 3 Zombies: 
The M1911.

This mod replaces the starting M1911 for the glorious MR6 in

- Nacht Der Untoten
- Verruckt
- Shi No Numa
- Kino Der Toten
- Ascension
- Shangri-La
- Moon

Support:
- English
- Spanish
- French

Implementation:

This mod has 3 core scripts: 
- scripts/zm/zm_mod.gsc
- scripts/zm/gamemodes/zclassic.gsc
- zone_source/zm_mod.zone

The logic behind it is that zclassic gets overriden to call zm_mod when starting a match, and zm_mod then swaps the starting guns, taking into account whether the user has the RK5 or not.
