--- Filter Title: Grail Filter Adv. (V4)
--- Filter Type: (Advanced filter)
--- Filter Description: Rule 1: Hides scrolls \nRule 2: Hides Health and Mana potions after level 25 \nRule 3: Hides Stamina potions after level 50 \nRule 4: Hides Antidote and Thawing potions after level 50 \nRule 5: Hides weapon potions (Choking Gas, Exploding, Strangling,\n            Fulminating, Rancid, Oil) \nRule 6: Hides Arrows and Bolts \nRule 7: Hides Keys \nRule 8: Hides low gold piles based on character level \nRule 9: Border and notifies when a unique item drops \nRule 10: Border and notifies when a set item drops \nRule 11a: Mid Runes notification (Hel to Um) \nRule 11b: High Runes notification (Mal to Zod) \nRule 12: Magic Monarchs has a red border \nRule 13: Diadems has a red border \nRule 14: Small and Grand Charms has a red border \nRule 15: Jewels has a red border \nRule 16: Highlights Paladin Shield bases with 40+ @Res \nRule 17: Highlights +3 Bow/XBow skills Grand Matron/Matriarchal\n              Bow bases \nRule 18: Highlights Javelins with 3+ Java skills \nRule 19: Highlights Wand bases with +3 Summon Skill \nRule 20: Highlights Wand bases with +3 P/B Skill \nRule 21: Highlights Scepter bases with +3 Paladin skill \nRule 22: Highlights Necro Shield bases with +3 to Summon skills \nRule 23: Highlights Druid Helm bases with +3 to skills used in\n              Metamorphosis \nRule 24: Highlights Barbarian Helms with +3 to BO \nRule 25: Highlights Elite 4os or blank Armor bases \nRule 26: Highlights Amulets with 60+ Gold Find

return {
    reload = "Advanced Grail Filter is applied",
    rules = {
		-- Rule 1: Hides scrolls
		{
			codes = {"tsc","isc"},
			hide = true,
			area = NOT {"Rogue Encampment","Lut Gholein","Kurast Docktown","The Pandemonium Fortress","Harrogath"}
		},
		-- Rule 2: Hides Health and Mana potions after level 25
		{
			codes = {"hp1","hp2","hp3","hp4","hp5","mp1","mp2","mp3","mp4","mp5"},
			pstat = {index=12,op=">=",value=25},-- Char Level is >= 25
			hide = true,
			area = NOT {"Rogue Encampment","Lut Gholein","Kurast Docktown","The Pandemonium Fortress","Harrogath"}
		},
		-- Rule 3: Hides Stamina potions after level 50
		{
			code = "vps",
			pstat = {index=12,op=">=",value=50},-- Char Level is >= 50
			hide = true,
			area = NOT {"Rogue Encampment","Lut Gholein","Kurast Docktown","The Pandemonium Fortress","Harrogath"}
		},
		-- Rule 4: Hides Antidote and Thawing potions after level 50
		{
			codes = {"yps","wms"},
			pstat = {index=12,op=">=",value=25},-- Char Level is >= 50
			hide = true,
			area = NOT {"Rogue Encampment","Lut Gholein","Kurast Docktown","The Pandemonium Fortress","Harrogath"}
		},
		-- Rule 5: Hides weapon potions (Choking Gas, Exploding, Strangling, Fulminating, Rancid, Oil)
		{
			codes = {"gpm","opm","gpl","opl","gps","ops"},
			hide = true,
			area = NOT {"Rogue Encampment","Lut Gholein","Kurast Docktown","The Pandemonium Fortress","Harrogath"}
		},
		-- Rule 6: Hides Arrows and Bolts
		{
			codes = {"aqv","cqv"},
			hide = true,
			area = NOT {"Rogue Encampment","Lut Gholein","Kurast Docktown","The Pandemonium Fortress","Harrogath"}
		},
		-- Rule 7: Hides Keys
		{
			code = "key",
			hide = true,
			area = NOT {"Rogue Encampment","Lut Gholein","Kurast Docktown","The Pandemonium Fortress","Harrogath"}
		},
		-- Rule 8a: Hides low gold piles by level
		{
			code = "gld",
			stat = {index=14,op="<=",value=99},-- Hides gold under 100
			pstat = {index=12,op=">=",value=20},-- Char Level is >= 20
			hide = true,
			area = NOT {"Rogue Encampment","Lut Gholein","Kurast Docktown","The Pandemonium Fortress","Harrogath"}
		},
		-- Rule 8b: Hides low gold piles by level
		{
			code = "gld",
			stat = {index=14,op="<=",value=299},-- Hides gold under 300
			pstat = {index=12,op=">=",value=60},-- Char Level is >= 60
			hide = true,
			area = NOT {"Rogue Encampment","Lut Gholein","Kurast Docktown","The Pandemonium Fortress","Harrogath"}
		},
		-- Rule 8c: Hides low gold piles by level
		{
			code = "gld",
			stat = {index=14,op="<=",value=499},-- Hides gold under 500
			pstat = {index=12,op=">=",value=80},-- Char Level is >= 80
			hide = true,
			area = NOT {"Rogue Encampment","Lut Gholein","Kurast Docktown","The Pandemonium Fortress","Harrogath"}
		},
		-- Rule 9: Border and notifies when a Unique item drops
		{
			codes = "allitems",
			quality = "7",
			notify = "Unique Dropped",
			border = {255,128,0,230,2},
			area = NOT {"Rogue Encampment","Lut Gholein","Kurast Docktown","The Pandemonium Fortress","Harrogath"}
		},
		-- Rule 10: Border and notifies when a Set item drops
		{
			codes = "allitems",
			quality = "5",
			notify = "ÿc2Set Dropped",
			border = {27,209,3,230,2},
			area = NOT {"Rogue Encampment","Lut Gholein","Kurast Docktown","The Pandemonium Fortress","Harrogath"}
		},
		-- Rule 11a: Mid Runes notification
		{
			codes = {"r15","r16","r17","r18","r19","r20","r21","r22"},
			notify = "Mid Rune Dropped"
		},
		-- Rule 11b: High Runes notification
		{
			codes = {"r23","r24","r25","r26","r27","r28","r29","r30","r31","r32","r33"},
			notify = "High Rune Dropped"
		},
		-- Rule 12: Magic Monarchs has a red border
		{
			code = "uit",
			quality = "4",
			border = {230,5,10,230,2}
		},
		-- Rule 13: Diadems has a red border
		{
			code = "ci3",
			border = {230,5,10,230,2}
		},
		-- Rule 14: Small and Grand Charms has a red border
		{
			codes = {"cm1","cm3"},
			border = {230,5,10,230,2}
		},
		-- Rule 15: Jewels has a red border
		{
			code = "jew",
			border = {230,5,10,230,2}
		},
		-- Rule 16: Highlights Elite Paladin Shield bases with 40+ @Res
		{
			codes = {"pab","pac","pad","pae","paf"},
			quality = "3-",
			stat =	{
					{index=39,op=">=",value=40},--change "value=X" on all 4 rows to change value of @res
					{index=41,op=">=",value=40},
					{index=43,op=">=",value=40},
					{index=45,op=">=",value=40}
					},
			--sockets = "0,3,4",-- add if you want socket sorting
			suffix = "{red}[High Resist]",
			border = {255,255,255,230,2}
		},
		-- Rule 17: Highlights +3 Bow/XBow skills Grand Matron/Matriarchal Bow bases
		{
			codes = {"amc","amb"},
			quality = "3-",
			stat = {index=188,op=">=",value=3,param=0},
			sockets = "0,5,6",-- add if you want socket sorting
			suffix = "{red}[3 Bow skills]",
			border = {255,255,255,230,2}
		},
		-- Rule 18: Highlights Javelins with 3+ Java skills
		{
			codes = {"amf","ama","am5"},
			quality = "4",
			stat = {index=188,op=">=",value=3,param=2},
			suffix = "{red}[3+ Java]",
			border = {255,255,255,230,2}
		},
		-- Rule 19: Highlights Wand bases with +3 Summon Skill
		{
			codes = {"wnd","ywn","bwn","gwn","7wn","7yw","7bw","7gw","9wn","9yw","9bw","9gw"},
			quality = "3-",
			stat = {index=107,op="==",value=3,param={69,70,75,79,80,85,89,90,94,95}},
			sockets = "0,2",-- add if you want socket sorting
			suffix = "{red}[+3 Summoning Skill]",
			border = {255,255,255,230,2}
		},
		-- Rule 20: Highlights Wand bases with +3 P/B Skill
		{
			codes = {"wnd","ywn","bwn","gwn","7wn","7yw","7bw","7gw","9wn","9yw","9bw","9gw"},
			quality = "3-",
			stat = {index=107,op="==",value=3,param={68,74,84,93}},
			sockets = "0,2",-- add if you want socket sorting
			suffix = "{red}[+3 P/B Skill]",
			border = {255,255,255,230,2}
		},
		-- Rule 21: Highlights Scepter bases with +3 Paladin skill
		{
			codes = {"scp","gsc","wsp","7sc","7qs","7ws","9sc","9qs","9ws"},
			quality = "3-",
			stat = {index=107,op="==",value=3,param={96,97,98,99,100,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,120,121,122,123,124,125}},
			--sockets = "0,5",-- add if you want socket sorting
			suffix = "{red}[+3 Paladin Skill]",
			border = {255,255,255,230,2}
		},
		-- Rule 22: Highlights Necro Shield bases with +3 to Summon skills
		{
			codes = {"ne1","ne2","ne3","ne4","ne5","ne6","ne7","ne8","ne9","nea","neb","neg","ned","nee","nef",},
			quality = "3-",
			stat = {index=107,op="==",value=3,param={69,70,75,79,80,85,89,90,94,95}},
			sockets = "0,4",-- add if you want socket sorting
			suffix = "{red}[+3 Summoning Skill]",
			border = {255,255,255,230,2}
		},
		-- Rule 23: Highlights Druid Helm bases with +3 to skills used in Metamorphosis
		{
			codes = {"dr1","dr2","dr3","dr4","dr5","dr6","dr7","dr8","dr9","dra","drb","drc","drd","dre","drf",},
			quality = "3-",
			stat = {index=107,op="==",value=3,param={226,228,233,235,236,238,242,246,248,249,250}},
			sockets = "0,3",-- add if you want socket sorting
			suffix = "{red}[+3 Druid Skill]",
			border = {255,255,255,230,2}
		},
		-- Rule 24: Highlights Barbarian Helms with +3 to BO
		{
			codes = {"ba1","ba2","ba3","ba4","ba5","ba6","ba7","ba8","ba9","baa","bab","bac","bad","bae","baf",},
			quality = "6-",
			stat = {index=107,op="==",value=3,param=149},
			--sockets = "0,2,3",-- add if you want socket sorting
			suffix = "{red}[+3 BO]",
			border = {255,255,255,230,2}
		},
		-- Rule 25: Highlights Elite Armor bases
		{
			codes = {"uui","uea","ula","utu","ung","ucl","uhn","urs","upl","ult","uld","uth","uul","uar","utp",},
			quality = "3-",
			--sockets = "0,4",-- add if you want socket sorting
			border = {255,255,255,230,2}
		},
		-- Rule 26a: Highlights Amulets with 60+ GF and +Warcries
		{
			code = "amu",
			quality = "6-",
			stat =	{
					{index=188,op=">=",value=1,param=34},
					{index=79,op=">=",value=60}
					},
			suffix = "{red}[GF]",
			border = {255,255,255,230,2}
		},
		-- Rule 26b: Highlights Amulets with 60+ GF and +Barb Skills
		{
			code = "amu",
			quality = "6-",
			stat =	{
					{index=83,op=">=",value=1,param=4},
					{index=79,op=">=",value=60}
					},
			suffix = "{red}[GF]",
			border = {255,255,255,230,2}
		}
	}
}

--[[

Exposed/Available Arguments:
code or codes = Define the 3-character item code the game uses for the item
index = Define the Set or Unique item index to search (useful for unid items)
name_override = Change name to w/e you want,overriding it's normal display name
prefix = Apply the designated text before the item name
suffix = Apply the designated text after the item name
hide = True or False. Hide or Display all items that match the provided code(s)
notify = True or False. Send a screen text message when item has dropped
notify_message = Optional. Change the default notification message to a custom one
location (optional) = onground,equipped,onplayer. Only applies while item is in certain locations

index = 0+, Unique numeric identifiers for set/unique items,useful for determining set/unique while still unid. Can be used as both a condition and an output
quality = 1-7, Inferior through Unique. Can be used as both a condition and an output. Can use values such as 3+ or 3- for greater than or less than
		  1 - Low Quality
		  2 - Normal Quality
		  3 - Superior Quality
		  4 - Magic
		  5 - Set
		  6 - Rare
		  7 - Unique
rarity = 0-2, Normal, Exceptional, Elite. Can be used as both a condition and an output
sockets = 0-6, None to Max. Can be used as both a condition and an output. Can use values such as 3+ or 3- for greater than or less than
ethereal = True or False. Can be used as both a condition and an output


stat = Check the item for specific stats, can define multiple stat requirements.  Can be used as both a condition and an output
Example Usages:
One condition example: stat = {index=83,op=">=",value=1,param=4}
This checks if the item has stat #83, which is "+X to Barbarian skill levels", and confirms whether or not it's greater than or equal to 1.

Multiple conditions example: stat =	{{index=83,op=">=",value=1,param=4},{index=79,op=">=",value=60}}
This checks for two stats
First it does the same check as example 1.
Second it checks if the item has stat #79, which is "X% Extra Gold From Monsters", and confirms whether or not it's greater than or equal to 60.
If both these statments are true, the whole stat returns true.

You may also use this stat check to compare a range of stats, or stats special parameters.
Conditional range:
Example Usage: stat = {index=39,op="between",value={25,35}}.
This checks to verify the stat is between the min and max values

You can also use it for parameters such as:
Example Usage: stat = {index=97,op=">=",value=1,param=54}
This checks if the item has stat #97, which grants a non-class skill, confirms whether or not it's greater than or equal to 1.
It also checks the param of the index, to make sure it's giving +1 or more specifically to Teleport, which is skill id 54.

Values for index and param are located at the bottom of the document

------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------

Available Armor, Weapon, and Misc Item Codes:

-- Armors --
cap -- Cap
skp -- Skull Cap
hlm -- Helm
fhl -- Full Helm
ghm -- Great Helm
crn -- Crown
msk -- Mask
qui -- Quilted Armor
lea -- Leather Armor
hla -- Hard Leather Armor
stu -- Studded Leather
rng -- Ring Mail
scl -- Scale Mail
chn -- Chain Mail
brs -- Breast Plate
spl -- Splint Mail
plt -- Plate Mail
fld -- Field Plate
gth -- Gothic Plate
ful -- Full Plate Mail
aar -- Ancient Armor
ltp -- Light Plate
buc -- Buckler
sml -- Small Shield
lrg -- Large Shield
kit -- Kite Shield
tow -- Tower Shield
gts -- Gothic Shield
lgl -- Leather Gloves
vgl -- Heavy Gloves
mgl -- Chain Gloves
tgl -- Light Gauntlets
hgl -- Gauntlets
lbt -- Boots
vbt -- Heavy Boots
mbt -- Chain Boots
tbt -- Light Plated Boots
hbt -- Greaves
lbl -- Sash
vbl -- Light Belt
mbl -- Belt
tbl -- Heavy Belt
hbl -- Plated Belt
bhm -- Bone Helm
bsh -- Bone Shield
spk -- Spiked Shield
xap -- War Hat
xkp -- Sallet
xlm -- Casque
xhl -- Basinet
xhm -- Winged Helm
xrn -- Grand Crown
xsk -- Death Mask
xui -- Ghost Armor
xea -- Serpentskin Armor
xla -- Demonhide Armor
xtu -- Trellised Armor
xng -- Linked Mail
xcl -- Tigulated Mail
xhn -- Mesh Armor
xrs -- Cuirass
xpl -- Russet Armor
xlt -- Templar Coat
xld -- Sharktooth Armor
xth -- Embossed Plate
xul -- Chaos Armor
xar -- Ornate Armor
xtp -- Mage Plate
xuc -- Defender
xml -- Round Shield
xrg -- Scutum
xit -- Dragon Shield
xow -- Pavise
xts -- Ancient Shield
xlg -- Demonhide Gloves
xvg -- Sharkskin Gloves
xmg -- Heavy Bracers
xtg -- Battle Gauntlets
xhg -- War Gauntlets
xlb -- Demonhide Boots
xvb -- Sharkskin Boots
xmb -- Mesh Boots
xtb -- Battle Boots
xhb -- War Boots
zlb -- Demonhide Sash
zvb -- Sharkskin Belt
zmb -- Mesh Belt
ztb -- Battle Belt
zhb -- War Belt
xh9 -- Grim Helm
xsh -- Grim Shield
xpk -- Barbed Shield
dr1 -- Wolf Head
dr2 -- Hawk Helm
dr3 -- Antlers
dr4 -- Cub Cap
dr5 -- Spirit Mask
ba1 -- Jawbone Cap
ba2 -- Fanged Helm
ba3 -- Horned Helm
ba4 -- Assault Helmet
ba5 -- Avenger Guard
pa1 -- Targe
pa2 -- Rondache
pa3 -- Heraldic Shield
pa4 -- Aerin Shield
pa5 -- Crown Shield
ne1 -- Preserved Head
ne2 -- Zombie Head
ne3 -- Unraveller Head
ne4 -- Gargoyle Head
ne5 -- Demon Head
ci0 -- Circlet
ci1 -- Coronet
ci2 -- Tiara
ci3 -- Diadem
uap -- Shako
ukp -- Hydraskull
ulm -- Armet
uhl -- Giant Conch
uhm -- Spired Helm
urn -- Corona
usk -- Demonhead
uui -- Dusk Shroud
uea -- Wyrmhide
ula -- Scarab Husk
utu -- Wire Fleece
ung -- Diamond Mail
ucl -- Loricated Mail
uhn -- Boneweave
urs -- Great Hauberk
upl -- Balrog Skin
ult -- Hellforge Plate
uld -- Kraken Shell
uth -- Lacquered Plate
uul -- Shadow Plate
uar -- Sacred Armor
utp -- Archon Plate
uuc -- Heater
uml -- Luna
urg -- Hyperion
uit -- Monarch
uow -- Aegis
uts -- Ward
ulg -- Bramble Mitts
uvg -- Vampirebone Gloves
umg -- Vambraces
utg -- Crusader Gauntlets
uhg -- Ogre Gauntlets
ulb -- Wyrmhide Boots
uvb -- Scarabshell Boots
umb -- Boneweave Boots
utb -- Mirrored Boots
uhb -- Myrmidon Greaves
ulc -- Spiderweb Sash
uvc -- Vampirefang Belt
umc -- Mithril Coil
utc -- Troll Belt
uhc -- Colossus Girdle
uh9 -- Bone Visage
ush -- Troll Nest
upk -- Blade Barrier
dr6 -- Alpha Helm
dr7 -- Griffon Headress
dr8 -- Hunter's Guise
dr9 -- Cavernous Covering
dra -- Totemic Mask
ba6 -- Jawbone Visor
ba7 -- Lion Helm
ba8 -- Rage Mask
ba9 -- Savage Helmet
baa -- Slayer Guard
pa6 -- Akaran Targe
pa7 -- Akaran Rondache
pa8 -- Protector Shield
pa9 -- Gilded Shield
paa -- Royal Shield
ne6 -- Mummified Trophy
ne7 -- Fetish Trophy
ne8 -- Sexton Trophy
ne9 -- Cantor Trophy
nea -- Heirophant Trophy
drb -- Blood Spirit
drc -- Sun Spirit
drd -- Earth Spirit
dre -- Grizzly Visor
drf -- Dream Spirit
bab -- Carnage Helm
bac -- Fury Visor
bad -- Destroyer Helm
bae -- Conqueror Crown
baf -- Guardian Crown
pab -- Sacred Targe
pac -- Sacred Rondache
pad -- Kurast Shield
pae -- Zakarum Shield
paf -- Vortex Shield
neb -- Minion Skull
neg -- Hellspawn Skull
ned -- Overseer Skull
nee -- Succubus Skull
nef -- Bloodlord Skull


-- Weapons --
hax -- Hand Axe
axe -- Axe
2ax -- Double Axe
mpi -- Sickle
wax -- War Axe
lax -- Large Axe
bax -- Broad Axe
btx -- Battle Axe
gax -- Great Axe
gix -- Giant Axe
wnd -- Wand
ywn -- Yew Wand
bwn -- Bone Wand
gwn -- Grim Wand
clb -- Club
scp -- Scepter
gsc -- Grand Scepter
wsp -- War Scepter
spc -- Spiked Club
mac -- Mace
mst -- Morning Star
fla -- Flail
whm -- War Hammer
mau -- Maul
gma -- Great Maul
ssd -- Short Sword
scm -- Scimitar
sbr -- Saber
flc -- Falchion
crs -- Crystal Sword
bsd -- Broad Sword
lsd -- Long Sword
wsd -- War Sword
2hs -- Katana
clm -- Claymore
gis -- Giant Sword
bsw -- Bastard Sword
flb -- Flamberge
gsd -- Great Sword
dgr -- Dagger
dir -- Dirk
kri -- Kriss
bld -- Blade
tkf -- Throwing Knife
tax -- Throwing Axe
bkf -- Balanced Knife
bal -- Balanced Axe
jav -- Javelin
pil -- Pilum
ssp -- Short Spear
glv -- Glaive
tsp -- Throwing Spear
spr -- Spear
tri -- Trident
brn -- Brandistock
spt -- Spetum
pik -- Pike
bar -- Bardiche
vou -- Voulge
scy -- Scythe
pax -- Poleaxe
hal -- Halberd
wsc -- Thresher
sst -- Short Staff
lst -- Long Staff
cst -- Gnarled Staff
bst -- Battle Staff
wst -- War Staff
sbw -- Short Bow
hbw -- Hunter's Bow
lbw -- Long Bow
cbw -- Composite Bow
sbb -- Short Battle Bow
lbb -- Long Battle Bow
swb -- Short War Bow
lwb -- Long War Bow
lxb -- Light Crossbow
mxb -- Crossbow
hxb -- Heavy Crossbow
rxb -- Repeating Crossbow
gps -- Rancid Gas Potion
ops -- Oil Potion
gpm -- Choking Gas Potion
opm -- Exploding Potion
gpl -- Strangling Gas Potion
opl -- Fulminating Potion
d33 -- Decoy Gidbinn
g33 -- The Gidbinn
leg -- Wirt's Leg
hdm -- Horadric Malus
hfh -- Hellforge Hammer
hst -- Horadric Staff
msf -- Staff of Kings
9ha -- Hatchet
9ax -- Cleaver
92a -- Twin Axe
9mp -- Battle Sickle
9wa -- Naga
9la -- Military Axe
9ba -- Bearded Axe
9bt -- Tabar
9ga -- Gothic Axe
9gi -- Ancient Axe
9wn -- Burnt Wand
9yw -- Petrified Wand
9bw -- Tomb Wand
9gw -- Grave Wand
9cl -- Cudgel
9sc -- Rune Scepter
9qs -- Holy Water Sprinkler
9ws -- Divine Scepter
9sp -- Barbed Club
9ma -- Flanged Mace
9mt -- Jagged Star
9fl -- Knout
9wh -- Battle Hammer
9m9 -- War Club
9gm -- Martel de Fer
9ss -- Gladius
9sm -- Cutlass
9sb -- Shamshir
9fc -- Tulwar
9cr -- Dimensional Blade
9bs -- Battle Sword
9ls -- Rune Sword
9wd -- Ancient Sword
92h -- Nihonto
9cm -- Dacian Falx
9gs -- Tusk Sword
9b9 -- Gothic Sword
9fb -- Zweihander
9gd -- Executioner Sword
9dg -- Poignard
9di -- Rondel
9kr -- Cinquedeas
9bl -- Stilleto
9tk -- Battle Dart
9ta -- Francisca
9bk -- War Dart
9b8 -- Hurlbat
9ja -- War Javelin
9pi -- Great Pilum
9s9 -- Simbilan
9gl -- Spiculum
9ts -- Harpoon
9sr -- War Spear
9tr -- Fuscina
9br -- War Fork
9st -- Yari
9p9 -- Lance
9b7 -- Lochaber Axe
9vo -- Bill
9s8 -- Grim Scythe
9pa -- Partizan
9h9 -- Bec-de-Corbin
9wc -- Giant Thresher
8ss -- Jo Staff
8ls -- Quarterstaff
8cs -- Cedar Staff
8bs -- Gothic Staff
8ws -- Rune Staff
8sb -- Edge Bow
8hb -- Razor Bow
8lb -- Cedar Bow
8cb -- Double Bow
8s8 -- Short Siege Bow
8l8 -- Long Siege Bow
8sw -- Rune Bow
8lw -- Gothic Bow
8lx -- Arbalest
8mx -- Siege Crossbow
8hx -- Ballista
8rx -- Chu-Ko-Nu
qf1 -- Khalim's Flail
qf2 -- Khalim's Will
ktr -- Katar
wrb -- Wrist Blade
axf -- Hatchet Hands
ces -- Cestus
clw -- Claws
btl -- Blade Talons
skr -- Scissors Katar
9ar -- Quhab
9wb -- Wrist Spike
9xf -- Fascia
9cs -- Hand Scythe
9lw -- Greater Claws
9tw -- Greater Talons
9qr -- Scissors Quhab
7ar -- Suwayyah
7wb -- Wrist Sword
7xf -- War Fist
7cs -- Battle Cestus
7lw -- Feral Claws
7tw -- Runic Talons
7qr -- Scissors Suwayyah
7ha -- Tomahawk
7ax -- Small Crescent
72a -- Ettin Axe
7mp -- Reaper Sickle
7wa -- Berserker Axe
7la -- Feral Axe
7ba -- Silver-edged Axe
7bt -- Decapitator
7ga -- Champion Axe
7gi -- Glorious Axe
7wn -- Polished Wand
7yw -- Ghost Wand
7bw -- Lich Wand
7gw -- Unearthed Wand
7cl -- Truncheon
7sc -- Mighty Scepter
7qs -- Seraph Rod
7ws -- Caduceus
7sp -- Tyrant Club
7ma -- Reinforced Mace
7mt -- Devil Star
7fl -- Scourge
7wh -- Legendary Mallet
7m7 -- Ogre Maul
7gm -- Thunder Maul
7ss -- Falcata
7sm -- Ataghan
7sb -- Elegant Blade
7fc -- Hydra Edge
7cr -- Phase Blade
7bs -- Conquest Sword
7ls -- Cryptic Sword
7wd -- Mythical Sword
72h -- Shinogi
7cm -- Highland Blade
7gs -- Balrog Blade
7b7 -- Champion Sword
7fb -- Colossal Sword
7gd -- Colossus Blade
7dg -- Bone Knife
7di -- Mithral Point
7kr -- Fanged Knife
7bl -- Legend Spike
7tk -- Flying Knife
7ta -- Flying Axe
7bk -- Winged Knife
7b8 -- Winged Axe
7ja -- Hyperion Javelin
7pi -- Stygian Pilum
7s7 -- Balrog Spear
7gl -- Ghost Glaive
7ts -- Winged Harpoon
7sr -- Hyperion Spear
7tr -- Stygian Pike
7br -- Mancatcher
7st -- Ghost Spear
7p7 -- War Pike
7o7 -- Ogre Axe
7vo -- Colossus Voulge
7s8 -- Reaper Scythe
7pa -- Cryptic Axe
7h7 -- Great Poleaxe
7wc -- Reaper Thresher
6ss -- Walking Stick
6ls -- Stalagmite
6cs -- Elder Staff
6bs -- Shillelagh
6ws -- Archon Staff
6sb -- Spider Bow
6hb -- Blade Bow
6lb -- Shadow Bow
6cb -- Great Bow
6s7 -- Diamond Bow
6l7 -- Crusader Bow
6sw -- Ward Bow
6lw -- Hydra Bow
6lx -- Pellet Bow
6mx -- Gorgon Crossbow
6hx -- Colossus Crossbow
6rx -- Demon Crossbow
ob1 -- Eagle Orb
ob2 -- Sacred Globe
ob3 -- Smoked Sphere
ob4 -- Clasped Orb
ob5 -- Jared's Stone
am1 -- Stag Bow
am2 -- Reflex Bow
am3 -- Maiden Spear
am4 -- Maiden Pike
am5 -- Maiden Javelin
ob6 -- Glowing Orb
ob7 -- Crystalline Globe
ob8 -- Cloudy Sphere
ob9 -- Sparkling Ball
oba -- Swirling Crystal
am6 -- Ashwood Bow
am7 -- Ceremonial Bow
am8 -- Ceremonial Spear
am9 -- Ceremonial Pike
ama -- Ceremonial Javelin
obb -- Heavenly Stone
obc -- Eldritch Orb
obd -- Demon Heart
obe -- Vortex Orb
obf -- Dimensional Shard
amb -- Matriarchal Bow
amc -- Grand Matron Bow
amd -- Matriarchal Spear
ame -- Matriarchal Pike
amf -- Matriarchal Javelin


-- Misc --
elx -- Elixir
hpo -- Healing Potionx
mpo -- Mana Potionx
hpf -- Full Healing Potion
mpf -- Full Mana Potion
vps -- Stamina Potion
yps -- Antidote Potion
rvs -- Rejuvenation Potion
rvl -- Full Rejuvenation Potion
wms -- Thawing Potion
tbk -- Tome of Town Portal
ibk -- Tome of Identify
amu -- Amulet
vip -- Amulet of the Viper
rin -- Ring
gld -- Gold
bks -- Scroll of Inifuss
bkd -- Key to the Cairn Stones
aqv -- Arrows
tch -- Torch
cqv -- Bolts
tsc -- Scroll of Town Portal
isc -- Scroll of Identify
hrt -- Heart
brz -- Brain
jaw -- Jawbone
eyz -- Eye
hrn -- Horn
tal -- Tail
flg -- Flag
fng -- Fang
qll -- Quill
sol -- Soul
scz -- Scalp
spe -- Spleen
key -- Key
luv -- The Black Tower Key
xyz -- Potion of Life
j34 -- A Jade Figurine
g34 -- The Golden Bird
bbb -- Lam Esen's Tome
box -- Horadric Cube
tr1 -- Horadric Scroll
mss -- Mephisto's Soulstone
ass -- Book of Skill
qey -- Khalim's Eye
qhr -- Khalim's Heart
qbr -- Khalim's Brain
ear -- Ear
gcv -- Chipped Amethyst
gfv -- Flawed Amethyst
gsv -- Amethyst
gzv -- Flawless Amethyst
gpv -- Perfect Amethyst
gcy -- Chipped Topaz
gfy -- Flawed Topaz
gsy -- Topaz
gly -- Flawless Topaz
gpy -- Perfect Topaz
gcb -- Chipped Sapphire
gfb -- Flawed Sapphire
gsb -- Sapphire
glb -- Flawless Sapphire
gpb -- Perfect Sapphire
gcg -- Chipped Emerald
gfg -- Flawed Emerald
gsg -- Emerald
glg -- Flawless Emerald
gpg -- Perfect Emerald
gcr -- Chipped Ruby
gfr -- Flawed Ruby
gsr -- Ruby
glr -- Flawless Ruby
gpr -- Perfect Ruby
gcw -- Chipped Diamond
gfw -- Flawed Diamond
gsw -- Diamond
glw -- Flawless Diamond
gpw -- Perfect Diamond
hp1 -- Minor Healing Potion
hp2 -- Light Healing Potion
hp3 -- Healing Potion
hp4 -- Greater Healing Potion
hp5 -- Super Healing Potion
mp1 -- Minor Mana Potion
mp2 -- Light Mana Potion
mp3 -- Mana Potion
mp4 -- Greater Mana Potion
mp5 -- Super Mana Potion
skc -- Chipped Skull
skf -- Flawed Skull
sku -- Skull
skl -- Flawless Skull
skz -- Perfect Skull
 -- Expansion
hrb -- Herb
cm1 -- Small Charm
cm2 -- Large Charm
cm3 -- Grand Charm
rps -- Small Red Potion
rpl -- Large Red Potion
bps -- Small Blue Potion
bpl -- Large Blue Potion
r01 -- El Rune
r02 -- Eld Rune
r03 -- Tir Rune
r04 -- Nef Rune
r05 -- Eth Rune
r06 -- Ith Rune
r07 -- Tal Rune
r08 -- Ral Rune
r09 -- Ort Rune
r10 -- Thul Rune
r11 -- Amn Rune
r12 -- Sol Rune
r13 -- Shael Rune
r14 -- Dol Rune
r15 -- Hel Rune
r16 -- Io Rune
r17 -- Lum Rune
r18 -- Ko Rune
r19 -- Fal Rune
r20 -- Lem Rune
r21 -- Pul Rune
r22 -- Um Rune
r23 -- Mal Rune
r24 -- Ist Rune
r25 -- Gul Rune
r26 -- Vex Rune
r27 -- Ohm Rune
r28 -- Lo Rune
r29 -- Sur Rune
r30 -- Ber Rune
r31 -- Jah Rune
r32 -- Cham Rune
r33 -- Zod Rune
jew -- Jewel
ice -- Malah's Potion
0sc -- Scroll of Knowledge
tr2 -- Scroll of Resistance
pk1 -- Key of Terror
pk2 -- Key of Hate
pk3 -- Key of Destruction
dhn -- Diablo's Horn
bey -- Baal's Eye
mbr -- Mephisto's Brain
toa -- Token of Absolution
tes -- Twisted Essence of Suffering
ceh -- Charged Essense of Hatred
bet -- Burning Essence of Terror
fed -- Festering Essence of Destruction
std -- Standard of Heroes



------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------


Available Stat ID's (index):

0 -- strength
1 -- energy
2 -- dexterity
3 -- vitality
4 -- statpts
5 -- newskills
6 -- hitpoints
7 -- maxhp
8 -- mana
9 -- maxmana
10 -- stamina
11 -- maxstamina
12 -- level
13 -- experience
14 -- gold
15 -- goldbank
16 -- item_armor_percent
17 -- item_maxdamage_percent
18 -- item_mindamage_percent
19 -- tohit
20 -- toblock
21 -- mindamage
22 -- maxdamage
23 -- secondary_mindamage
24 -- secondary_maxdamage
25 -- damagepercent
26 -- manarecovery
27 -- manarecoverybonus
28 -- staminarecoverybonus
29 -- lastexp
30 -- nextexp
31 -- armorclass
32 -- armorclass_vs_missile
33 -- armorclass_vs_hth
34 -- normal_damage_reduction
35 -- magic_damage_reduction
36 -- damageresist
37 -- magicresist
38 -- maxmagicresist
39 -- fireresist
40 -- maxfireresist
41 -- lightresist
42 -- maxlightresist
43 -- coldresist
44 -- maxcoldresist
45 -- poisonresist
46 -- maxpoisonresist
47 -- damageaura
48 -- firemindam
49 -- firemaxdam
50 -- lightmindam
51 -- lightmaxdam
52 -- magicmindam
53 -- magicmaxdam
54 -- coldmindam
55 -- coldmaxdam
56 -- coldlength
57 -- poisonmindam
58 -- poisonmaxdam
59 -- poisonlength
60 -- lifedrainmindam
61 -- lifedrainmaxdam
62 -- manadrainmindam
63 -- manadrainmaxdam
64 -- stamdrainmindam
65 -- stamdrainmaxdam
66 -- stunlength
67 -- velocitypercent
68 -- attackrate
69 -- other_animrate
70 -- quantity
71 -- value
72 -- durability
73 -- maxdurability
74 -- hpregen
75 -- item_maxdurability_percent
76 -- item_maxhp_percent
77 -- item_maxmana_percent
78 -- item_attackertakesdamage
79 -- item_goldbonus
80 -- item_magicbonus
81 -- item_knockback
82 -- item_timeduration
83 -- item_addclassskills	-- stat = {index=83,op="==",value=X,param=Y},
							-- Check if item has "+X to class skills", replace X with amount of +skill, and Y with the class id (ID's can be found at the bottom of the document)
							-- op can be "==" for exactly equal, ">=" for equal and greater than, or "<=" for equal and less than
							-- param can be either a single or multiple ID's. If using multiple, seperate them with a comma and encase them in {}
84 -- unsentparam1
85 -- item_addexperience
86 -- item_healafterkill
87 -- item_reducedprices
88 -- item_doubleherbduration
89 -- item_lightradius
90 -- item_lightcolor
91 -- item_req_percent
92 -- item_levelreq
93 -- item_fasterattackrate
94 -- item_levelreqpct
95 -- lastblockframe
96 -- item_fastermovevelocity
97 -- item_nonclassskill
98 -- state
99 -- item_fastergethitraterr
100 -- monster_playercount
101 -- skill_poison_override_length
102 -- item_fasterblockrate
103 -- skill_bypass_undead
104 -- skill_bypass_demonsr
105 -- item_fastercastrate
106 -- skill_bypass_beasts
107 -- item_singleskill 	-- stat = {index=107,op="==",value=X,param=Y},
							-- Check if item has "+X to class specific skill", replace X with amount of +skill, and Y with the skill ID (ID's can be found at the bottom of the document)
							-- op can be "==" for exactly equal, ">=" for equal and greater than, or "<=" for equal and less than
							-- param can be either a single or multiple ID's. If using multiple, seperate them with a comma and encase them in {}
108 -- item_restinpeace
109 -- curse_resistance
110 -- item_poisonlengthresist
111 -- item_normaldamage
112 -- item_howl
113 -- item_stupidity
114 -- item_damagetomana
115 -- item_ignoretargetac
116 -- item_fractionaltargetac
117 -- item_preventheal
118 -- item_halffreezeduration
119 -- item_tohit_percent
120 -- item_damagetargetac
121 -- item_demondamage_percent
122 -- item_undeaddamage_percent
123 -- item_demon_tohit
124 -- item_undead_tohit
125 -- item_throwable
126 -- item_elemskill
127 -- item_allskills
128 -- item_attackertakeslightdamage
129 -- ironmaiden_level
130 -- lifetap_level
131 -- thorns_percent
132 -- bonearmor
133 -- bonearmormax
134 -- item_freeze
135 -- item_openwounds
136 -- item_crushingblow
137 -- item_kickdamage
138 -- item_manaafterkill
139 -- item_healafterdemonkill
140 -- item_extrablood
141 -- item_deadlystrike
142 -- item_absorbfire_percent
143 -- item_absorbfire
144 -- item_absorblight_percent
145 -- item_absorblight
146 -- item_absorbmagic_percent
147 -- item_absorbmagic
148 -- item_absorbcold_percent
149 -- item_absorbcold
150 -- item_slow
151 -- item_aura
152 -- item_indesctructible
153 -- item_cannotbefrozen
154 -- item_staminadrainpct
155 -- item_reanimate
156 -- item_pierce
157 -- item_magicarrow
158 -- item_explosivearrow
159 -- item_throw_mindamage
160 -- item_throw_maxdamage
161 -- skill_handofathena
162 -- skill_staminapercent
163 -- skill_passive_staminapercent
164 -- skill_concentration
165 -- skill_enchant
166 -- skill_pierce
167 -- skill_conviction
168 -- skill_chillingarmor
169 -- skill_frenzy
170 -- skill_decrepify
171 -- skill_armor_percent
172 -- alignment
173 -- target0
174 -- target1
175 -- goldlost
176 -- conversion_level
177 -- conversion_maxhp
178 -- unit_dooverlay
179 -- attack_vs_montype
180 -- damage_vs_montype
181 -- fade
182 -- armor_override_percent
183 -- unused
184 -- unused
185 -- bonus_mindamage
186 -- bonus_maxdamage
187 -- unused
188 -- item_addskill_tab 	-- stat = {index=188,op="==",value=X,param=Y},
							-- Check if item has "+X to class skill tree", replace X with amount of +skill, and Y with the class tree id (ID's can be found at the bottom of the document)
							-- op can be "==" for exactly equal, ">=" for equal and greater than, or "<=" for equal and less than
							-- param can be either a single or multiple ID's. If using multiple, seperate them with a comma and encase them in {}
189 -- unused
190 -- unused
191 -- unused
192 -- unused
193 -- unused
194 -- item_numsockets
195 -- item_skillonattack
196 -- item_skillonkill
197 -- item_skillondeath
198 -- item_skillonhit
199 -- item_skillonlevelup
200 -- unused
201 -- item_skillongethit
202 -- unused
203 -- unused
204 -- item_charged_skill
205 -- item_noconsume
206 -- passive_mastery_noconsume
207 -- passive_mastery_replenish_oncrit
208 -- unused
209 -- unused
210 -- unused
211 -- unused
212 -- passive_mastery_gethit_rate
213 -- passive_mastery_attack_speed
214 -- item_armor_perlevel
215 -- item_armorpercent_perlevel
216 -- item_hp_perlevel
217 -- item_mana_perlevel
218 -- item_maxdamage_perlevel
219 -- item_maxdamage_percent_perlevel
220 -- item_strength_perlevel
221 -- item_dexterity_perlevel
222 -- item_energy_perlevel
223 -- item_vitality_perlevel
224 -- item_tohit_perlevel
225 -- item_tohitpercent_perlevel
226 -- item_cold_damagemax_perlevel
227 -- item_fire_damagemax_perlevel
228 -- item_ltng_damagemax_perlevel
229 -- item_pois_damagemax_perlevel
230 -- item_resist_cold_perlevel
231 -- item_resist_fire_perlevel
232 -- item_resist_ltng_perlevel
233 -- item_resist_pois_perlevel
234 -- item_absorb_cold_perlevel
235 -- item_absorb_fire_perlevel
236 -- item_absorb_ltng_perlevel
237 -- item_absorb_mag_perlevel
238 -- item_thorns_perlevel
239 -- item_find_gold_perlevel
240 -- item_find_magic_perlevel
241 -- item_regenstamina_perlevel
242 -- item_stamina_perlevel
243 -- item_damage_demon_perlevel
244 -- item_damage_undead_perlevel
245 -- item_tohit_demon_perlevel
246 -- item_tohit_undead_perlevel
247 -- item_crushingblow_perlevel
248 -- item_openwounds_perlevel
249 -- item_kick_damage_perlevel
250 -- item_deadlystrike_perlevel
251 -- item_find_gems_perlevel
252 -- item_replenish_durability
253 -- item_replenish_quantity
254 -- item_extra_stack
255 -- item_find_item
256 -- item_openwounds_perstr
257 -- item_deadlystrike_perdex
258 -- item_deadlystrike_perstr
259 -- item_armor_perstr
260 -- item_fastercastrate_perenr
261 -- item_crushingblow_perstr
262 -- item_strength_percent
263 -- item_dexterity_percent
264 -- item_vitality_percent
265 -- item_energy_percent
266 -- item_splash
267 -- item_skillonmisshit
268 -- skill_freezesyn
269 -- skill_chillsyn
270 -- cheatcheck
271 -- item_attackertakesfiredamage
272 -- dont_use_me_272
273 -- dont_use_me_273
274 -- mana_per_gethit
275 -- life_per_gethit
276 -- ex_missiles
277 -- item_attackertakescolddamage
278 -- ex_attacks
279 -- map_quality
280 -- curse_resistance_perenr
281 -- sum_dmg_perc
282 -- sum_speed
283 -- sum_ex
284 -- sum_hp_perc
285 -- sum_cr
286 -- item_cooldownreduction
287 -- item_pierce_perdex
288 -- skill_bonesyn
289 -- skill_rage
290 -- skill_focus
291 -- GB_Total
292 -- RB_Low
293 -- RB_Mid
294 -- RB_High
295 -- KB_Terror
296 -- KB_Hate
297 -- KB_Dest
298 -- OB_Diablo
299 -- OB_Baal
300 -- OB_Meph
301 -- unused301
302 -- relic_tracker
303 -- oskill_display
151 -- aura_display
305 -- item_pierce_cold
306 -- item_pierce_fire
307 -- item_pierce_ltng
308 -- item_pierce_pois
309 -- item_damage_vs_monster
310 -- item_damage_percent_vs_monster
311 -- item_tohit_vs_monster
312 -- item_tohit_percent_vs_monster
313 -- item_ac_vs_monster
314 -- item_ac_percent_vs_monster
315 -- firelength
316 -- burningmin
317 -- burningmax
318 -- progressive_damage
319 -- progressive_steal
320 -- progressive_other
321 -- progressive_fire
322 -- progressive_cold
323 -- progressive_lightning
324 -- item_extra_charges
325 -- progressive_tohit
326 -- poison_count
327 -- damage_framerate
328 -- pierce_idx
329 -- passive_fire_mastery
330 -- passive_ltng_mastery
331 -- passive_cold_mastery
332 -- passive_pois_mastery
333 -- passive_fire_pierce
334 -- passive_ltng_pierce
335 -- passive_cold_pierce
336 -- passive_pois_pierce
337 -- passive_critical_strike
338 -- passive_dodge
339 -- passive_avoid
340 -- passive_evade
341 -- passive_warmth
342 -- passive_mastery_melee_th
343 -- passive_mastery_melee_dmg
344 -- passive_mastery_melee_crit
345 -- passive_mastery_throw_th
346 -- passive_mastery_throw_dmg
347 -- passive_mastery_throw_crit
348 -- passive_weaponblock
349 -- passive_summon_resist
350 -- modifierlist_skill
351 -- modifierlist_level
352 -- last_sent_hp_pct
353 -- source_unit_type
354 -- source_unit_id
355 -- shortparam1
356 -- questitemdifficulty
357 -- passive_mag_mastery
358 -- passive_mag_pierce
359 -- skill_cooldown
360 -- skill_missile_damage_scale



------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------


Class ID's (param):

Amazon     	- 0
Sorceress   - 1
Necromancer - 2
Paladin     - 3
Barbarian   - 4
Druid     	- 5
Assassin    - 6


Skill Tree ID's (param):

Amazon		- 0  - Bow & Crossbow
Amazon		- 1  - Passive & Magic
Amazon		- 2  - Javelin & Spear
Sorceress	- 8  - Fire
Sorceress	- 9  - Lightning
Sorceress	- 10 - Cold
Necromancer	- 16 - Curses
Necromancer	- 17 - Poison and Bone
Necromancer	- 18 - Summoning
Paladin		- 24 - Combat Skills
Paladin		- 25 - Offensive Auras
Paladin		- 26 - Defensive Auras
Barbarian	- 32 - Combat Skills
Barbarian	- 33 - Combat Masteries
Barbarian	- 34 - Warcries
Druid		- 40 - Summoning
Druid		- 41 - Shapeshifting
Druid		- 42 - Elemental
Assassin	- 48 - Traps
Assassin	- 49 - Shadow Disciplines
Assassin	- 50 - Martial Arts


Skill ID's (param):

Amazon - 6 - Magic Arrow
Amazon - 7 - Fire Arrow
Amazon - 8 - Inner Sight
Amazon - 9 - Critical Strike
Amazon - 10 - Jab
Amazon - 11 - Cold Arrow
Amazon - 12 - Multiple Shot
Amazon - 13 - Dodge
Amazon - 14 - Power Strike
Amazon - 15 - Poison Javelin
Amazon - 16 - Exploding Arrow
Amazon - 17 - Slow Missiles
Amazon - 18 - Avoid
Amazon - 19 - Impale
Amazon - 20 - Lightning Bolt
Amazon - 21 - Ice Arrow
Amazon - 22 - Guided Arrow
Amazon - 23 - Penetrate
Amazon - 24 - Charged Strike
Amazon - 25 - Plague Javelin
Amazon - 26 - Strafe
Amazon - 27 - Immolation Arrow
Amazon - 28 - Dopplezon
Amazon - 29 - Evade 29
Amazon - 30 - Fend 30
Amazon - 31 - Freezing Arrow
Amazon - 32 - Valkyrie
Amazon - 33 - Pierce
Amazon - 34 - Lightning Strike
Amazon - 35 - Lightning Fury

Sorceress - 36 - Fire Bolt
Sorceress - 37 - Warmth
Sorceress - 38 - Charged Bolt
Sorceress - 39 - Ice Bolt
Sorceress - 40 - Frozen Armor
Sorceress - 41 - Inferno
Sorceress - 42 - Static Field
Sorceress - 43 - Telekinesis
Sorceress - 44 - Frost Nova
Sorceress - 45 - Ice Blast
Sorceress - 46 - Blaze
Sorceress - 47 - Fire Ball
Sorceress - 48 - Nova
Sorceress - 49 - Lightning
Sorceress - 50 - Shiver Armor
Sorceress - 51 - Fire Wall
Sorceress - 52 - Enchant
Sorceress - 53 - Chain Lightning
Sorceress - 54 - Teleport
Sorceress - 55 - Glacial Spike
Sorceress - 56 - Meteor
Sorceress - 57 - Thunder Storm
Sorceress - 58 - Energy Shield
Sorceress - 59 - Blizzard
Sorceress - 60 - Chilling Armor
Sorceress - 61 - Fire Mastery
Sorceress - 62 - Hydra
Sorceress - 63 - Lightning Mastery
Sorceress - 64 - Frozen Orb
Sorceress - 65 - Cold Mastery

Necromancer - 66 - Amplify Damage
Necromancer - 67 - Teeth
Necromancer - 68 - Bone Armor
Necromancer - 69 - Skeleton Mastery
Necromancer - 70 - Raise Skeleton
Necromancer - 71 - Dim Vision
Necromancer - 72 - Weaken
Necromancer - 73 - Poison Dagger
Necromancer - 74 - Corpse Explosion
Necromancer - 75 - Clay Golem
Necromancer - 76 - Iron Maiden
Necromancer - 77 - Terror
Necromancer - 78 - Bone Wall
Necromancer - 79 - Golem Mastery
Necromancer - 80 - Raise Skeletal Mage
Necromancer - 81 - Confuse
Necromancer - 82 - Life Tap
Necromancer - 83 - Poison Explosion
Necromancer - 84 - Bone Spear
Necromancer - 85 - Blood Golem
Necromancer - 86 - Attract
Necromancer - 87 - Decrepify
Necromancer - 88 - Bone Prison
Necromancer - 89 - Summon Resist
Necromancer - 90 - Iron Golem
Necromancer - 91 - Lower Resist
Necromancer - 92 - Poison Nova
Necromancer - 93 - Bone Spirit
Necromancer - 94 - FireGolem
Necromancer - 95 - Revive

Paladin - 96 - Sacrifice
Paladin - 97 - Smite
Paladin - 98 - Might
Paladin - 99 - Prayer
Paladin - 100 - Resist Fire
Paladin - 101 - Holy Bolt
Paladin - 102 - Holy Fire
Paladin - 103 - Thorns
Paladin - 104 - Defiance
Paladin - 105 - Resist Cold
Paladin - 106 - Zeal
Paladin - 107 - Charge
Paladin - 108 - Blessed Aim
Paladin - 109 - Cleansing
Paladin - 110 - Resist Lightning
Paladin - 111 - Vengeance
Paladin - 112 - Blessed Hammer
Paladin - 113 - Concentration
Paladin - 114 - Holy Freeze
Paladin - 115 - Vigor
Paladin - 116 - Conversion
Paladin - 117 - Holy Shield
Paladin - 118 - Holy Shock
Paladin - 119 - Sanctuary
Paladin - 120 - Meditation
Paladin - 121 - Fist of the Heavens
Paladin - 122 - Fanaticism
Paladin - 123 - Conviction
Paladin - 124 - Redemption
Paladin - 125 - Salvation

Barbarian - 126 - Bash
Barbarian - 127 - Sword Mastery
Barbarian - 128 - Axe Mastery
Barbarian - 129 - Mace Mastery
Barbarian - 130 - Howl
Barbarian - 131 - Find Potion
Barbarian - 132 - Leap
Barbarian - 133 - Double Swing
Barbarian - 134 - Pole Arm Mastery
Barbarian - 135 - Throwing Mastery
Barbarian - 136 - Spear Mastery
Barbarian - 137 - Taunt
Barbarian - 138 - Shout
Barbarian - 139 - Stun
Barbarian - 140 - Double Throw
Barbarian - 141 - Increased Stamina
Barbarian - 142 - Find Item
Barbarian - 143 - Leap Attack
Barbarian - 144 - Concentrate
Barbarian - 145 - Iron Skin
Barbarian - 146 - Battle Cry
Barbarian - 147 - Frenzy
Barbarian - 148 - Increased Speed
Barbarian - 149 - Battle Orders
Barbarian - 150 - Grim Ward
Barbarian - 151 - Whirlwind
Barbarian - 152 - Berserk
Barbarian - 153 - Natural Resistance
Barbarian - 154 - War Cry
Barbarian - 155 - Battle Command

Druid - 221 - Raven
Druid - 222 - Poison Creeper
Druid - 223 - Wearwolf
Druid - 224 - Shape Shifting
Druid - 225 - Firestorm
Druid - 226 - Oak Sage
Druid - 227 - Summon Spirit Wolf
Druid - 228 - Wearbear
Druid - 229 - Molten Boulder
Druid - 230 - Arctic Blast
Druid - 231 - Carrion Vine
Druid - 232 - Feral Rage
Druid - 233 - Maul
Druid - 234 - Eruption
Druid - 235 - Cyclone Armor
Druid - 236 - Heart of Wolverine
Druid - 237 - Summon Dire Wolf
Druid - 238 - Rabies
Druid - 239 - Fire Claws
Druid - 240 - Twister
Druid - 241 - Solar Creeper
Druid - 242 - Hunger
Druid - 243 - Shock Wave
Druid - 244 - Volcano
Druid - 245 - Tornado
Druid - 246 - Spirit of Barbs
Druid - 247 - Summon Grizzly
Druid - 248 - Fury
Druid - 249 - Armageddon
Druid - 250 - Hurricane

Assassin - 251 - Fire Blast
Assassin - 252 - Claw Mastery
Assassin - 253 - Psychic Hammer
Assassin - 254 - Tiger Strike
Assassin - 255 - Dragon Talon
Assassin - 256 - Shock Web
Assassin - 257 - Blade Sentinel
Assassin - 258 - Burst of Speed
Assassin - 259 - Fists of Fire
Assassin - 260 - Dragon Claw
Assassin - 261 - Charged Bolt Sentry
Assassin - 262 - Wake of Fire Sentry
Assassin - 263 - Weapon Block
Assassin - 264 - Cloak of Shadows
Assassin - 265 - Cobra Strike
Assassin - 266 - Blade Fury
Assassin - 267 - Fade
Assassin - 268 - Shadow Warrior
Assassin - 269 - Claws of Thunder
Assassin - 270 - Dragon Tail
Assassin - 271 - Lightning Sentry
Assassin - 272 - Wake of Inferno Sentry
Assassin - 273 - Mind Blast
Assassin - 274 - Blades of Ice
Assassin - 275 - Dragon Flight
Assassin - 276 - Death Sentry
Assassin - 277 - Blade Shield
Assassin - 278 - Venom
Assassin - 279 - Shadow Master
Assassin - 280 - Phoenix Strike

]] --
