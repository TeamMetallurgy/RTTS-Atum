import crafttweaker.enchantments.IEnchantment;
import crafttweaker.item.IItemCondition;

val wool = <ore:wool>;
val stick = <ore:stickWood>;
val wood = <ore:plankWood>;
val stone = <ore:stone>;

////Sound Muffler
recipes.removeShaped(<supersoundmuffler:sound_muffler>);
recipes.addShaped("Super Sound Muffler", <glassential:glass_light>,
[[<atum:linen_cloth>,<atum:linen_cloth>,<atum:linen_cloth>],
	[<atum:linen_cloth>,<minecraft:noteblock>,<atum:linen_cloth>],
	[<atum:linen_cloth>,<atum:linen_cloth>,<atum:linen_cloth>]]);

////Glassential
<glassential:glass_clear>.displayName = "Clear Crystal Glass";
furnace.remove(<glassential:glass_clear>);
furnace.addRecipe(<glassential:glass_clear>,<atum:crystal_glass>);

<glassential:glass_light>.displayName = "Luminous Crystal Glass";
recipes.removeShaped(<glassential:glass_light>);
recipes.addShaped("Light Glass", <glassential:glass_light> * 4,
[[<atum:crystal_glass>,<atum:crystal_glass>,<atum:crystal_glass>],
	[<atum:crystal_glass>,<minecraft:glowstone>,<atum:crystal_glass>],
	[<atum:crystal_glass>,<atum:crystal_glass>,<atum:crystal_glass>]]);
	
<glassential:glass_dark>.displayName = "Dark Crystal Glass";
recipes.removeShaped(<glassential:glass_dark>);
recipes.addShaped("Dark Glass 1", <glassential:glass_dark> * 4,
[[<atum:crystal_glass>,<atum:crystal_glass>,<atum:crystal_glass>],
	[<atum:crystal_glass>,<minecraft:coal:0>,<atum:crystal_glass>],
	[<atum:crystal_glass>,<atum:crystal_glass>,<atum:crystal_glass>]]);

recipes.addShaped("Dark Glass 2", <glassential:glass_dark> * 4,
[[<atum:crystal_glass>,<atum:crystal_glass>,<atum:crystal_glass>],
	[<atum:crystal_glass>,<minecraft:coal:1>,<atum:crystal_glass>],
	[<atum:crystal_glass>,<atum:crystal_glass>,<atum:crystal_glass>]]);
	
<glassential:glass_ghostly>.displayName = "Ghostly Crystal Glass";
recipes.removeShaped(<glassential:glass_ghostly>);
recipes.addShaped("Ghostly Glass", <glassential:glass_ghostly> * 4,
[[<atum:crystal_glass>,<atum:crystal_glass>,<atum:crystal_glass>],
	[<atum:crystal_glass>,<atum:ectoplasm>,<atum:crystal_glass>],
	[<atum:crystal_glass>,<atum:crystal_glass>,<atum:crystal_glass>]]);
	
<glassential:glass_ethereal>.displayName = "Ethereal Crystal Glass";
recipes.removeShaped(<glassential:glass_ethereal>);
recipes.addShaped("Ethereal Glass", <glassential:glass_ethereal> * 4,
[[<atum:crystal_glass>,<atum:crystal_glass>,<atum:crystal_glass>],
	[<atum:crystal_glass>,<atum:disenchanting_scroll>,<atum:crystal_glass>],
	[<atum:crystal_glass>,<atum:crystal_glass>,<atum:crystal_glass>]]);
	
<glassential:glass_ethereal_reverse>.displayName = "Reverse Ethereal Crystal Glass";
	
<glassential:glass_redstone>.displayName = "Redstone Crystal Glass";
recipes.removeShaped(<glassential:glass_redstone>);
recipes.addShaped("Redstone Glass", <glassential:glass_redstone> * 4,
[[<atum:crystal_glass>,<atum:crystal_glass>,<atum:crystal_glass>],
	[<atum:crystal_glass>,<minecraft:redstone_block>,<atum:crystal_glass>],
	[<atum:crystal_glass>,<atum:crystal_glass>,<atum:crystal_glass>]]);

////Nomadic Tents
<yurtmod:super_mallet>.displayName = "Tent Mallet";
<yurtmod:super_dirt>.displayName = "Strange Sand (Indestructible)";
recipes.removeShaped(<yurtmod:super_mallet>);
recipes.removeShaped(<yurtmod:tent_canvas>);
recipes.removeShaped(<yurtmod:yurt_wall_piece>);

<yurtmod:yurt_wall_piece>.displayName = "Tent Wall Piece";
<yurtmod:yurt_wall_outer>.displayName = "Tent Wall";
<yurtmod:yurt_roof>.displayName = "Tent Roof";
<yurtmod:yurt_wall_inner>.displayName = "Tent Wall";
<yurtmod:cos_yurt_wall_inner>.displayName = "Tent Wall (Cosmetic)";
<yurtmod:cos_yurt_wall_outer>.displayName = "Tent Wall (Cosmetic)";
<yurtmod:cos_yurt_roof>.displayName = "Tent Roof (Cosmetic)";

//Super Mallet
recipes.addShaped("Tent Mallet", <yurtmod:super_mallet>,
[[null,<minecraft:iron_ingot>,stick],
	[null,<atum:linen_cloth>,<minecraft:iron_ingot>],
	[stick,null,null]]);
	
//Yurt Wall
recipes.addShaped("Yurt Wall Section", <yurtmod:yurt_wall_piece>,
[[<atum:linen_cloth>,stick,<atum:linen_cloth>],
	[<atum:linen_cloth>,stick,<atum:linen_cloth>],
	[<atum:linen_cloth>,stick,<atum:linen_cloth>]]);

recipes.remove(<yurtmod:depth_upgrade_stone>);
recipes.addShaped("depth_upgrade_stone", <yurtmod:depth_upgrade_stone>,
[[null,<atum:linen_cloth>,stone],
	[null,stick,<atum:linen_cloth>],
	[<minecraft:emerald>,null,null]]);
	
recipes.remove(<yurtmod:depth_upgrade_iron>);
recipes.addShaped("depth_upgrade_iron", <yurtmod:depth_upgrade_iron>,
[[null,<atum:linen_cloth>,<minecraft:iron_ingot>],
	[null,stick,<atum:linen_cloth>],
	[<minecraft:emerald>,null,null]]);
	
recipes.remove(<yurtmod:depth_upgrade_gold>);
recipes.addShaped("depth_upgrade_gold", <yurtmod:depth_upgrade_gold>,
[[null,<atum:linen_cloth>,<minecraft:gold_ingot>],
	[null,stick,<atum:linen_cloth>],
	[<minecraft:emerald>,null,null]]);
	
recipes.remove(<yurtmod:depth_upgrade_obsidian>);
recipes.addShaped("depth_upgrade_obsidian", <yurtmod:depth_upgrade_obsidian>,
[[null,<atum:linen_cloth>,<minecraft:obsidian>],
	[null,stick,<atum:linen_cloth>],
	[<minecraft:emerald>,null,null]]);

recipes.remove(<yurtmod:depth_upgrade_diamond>);
recipes.addShaped("depth_upgrade_diamond", <yurtmod:depth_upgrade_diamond>,
[[null,<atum:linen_cloth>,<minecraft:diamond>],
	[null,stick,<atum:linen_cloth>],
	[<minecraft:emerald>,null,null]]);

//recipes.remove(<yurtmod:tent>.withTag({TentData: {StructureWidthPrevious: 0 as short, StructureDepthCurrent: 0 as short, StructureDepthPrevious: 0 as short, StructureWidthCurrent: 0 as short, StructureOffsetZ: 0, StructureOffsetX: 7, StructureTentType: 0 as short}}));
//recipes.addShaped("Yurt", <yurtmod:tent>.withTag({TentData: {StructureWidthPrevious: 0 as short, StructureDepthCurrent: 0 as short, StructureDepthPrevious: 0 as short, StructureWidthCurrent: 0 as short, StructureOffsetZ: 0, StructureOffsetX: 7, StructureTentType: 0 as short}}),
//[[null,null,null],
//	[null,<yurtmod:yurt_wall_piece>,null],
//	[<yurtmod:yurt_wall_piece>,<atum:palm_door>,<yurtmod:yurt_wall_piece>]]);
	
//recipes.addShaped("Yurt2", <yurtmod:tent>.withTag({TentData: {StructureWidthPrevious: 1 as short, StructureDepthCurrent: 0 as short, StructureDepthPrevious: 0 as short, StructureWidthCurrent: 1 as short, StructureOffsetZ: 0, StructureOffsetX: 2, StructureTentType: 0 as short}}),
//[[null,null,null],
//	[null,<yurtmod:yurt_wall_piece>,null],
//	[<yurtmod:yurt_wall_piece>,<yurtmod:tent>.withTag({TentData: {StructureWidthPrevious: 0 as short, StructureDepthCurrent: 0 as short, StructureDepthPrevious: 0 as short, StructureWidthCurrent: 0 as short, StructureOffsetZ: 0, StructureOffsetX: 7, StructureTentType: 0 as short}}),<yurtmod:yurt_wall_piece>]]);
	
//Remove Extra Stuff
mods.jei.JEI.removeAndHide(<yurtmod:mallet>, true);	
mods.jei.JEI.removeAndHide(<yurtmod:tent_canvas>, true);	
mods.jei.JEI.removeAndHide(<yurtmod:tepee_wall_piece>, true);
mods.jei.JEI.removeAndHide(<yurtmod:bed_wall_piece>, true);
mods.jei.JEI.removeAndHide(<yurtmod:indlu_wall_piece>, true);
mods.jei.JEI.removeAndHide(<yurtmod:bed_wall>, true);
mods.jei.JEI.removeAndHide(<yurtmod:bed_roof>, true);
mods.jei.JEI.removeAndHide(<yurtmod:indlu_wall_outer>, true);
mods.jei.JEI.removeAndHide(<yurtmod:indlu_wall_inner>, true);
mods.jei.JEI.removeAndHide(<yurtmod:tepee_wall_blank>, true);
mods.jei.JEI.removeAndHide(<yurtmod:tepee_wall_black>, true);
mods.jei.JEI.removeAndHide(<yurtmod:tepee_wall_red>, true);
mods.jei.JEI.removeAndHide(<yurtmod:tepee_wall_yellow>, true);
mods.jei.JEI.removeAndHide(<yurtmod:tepee_wall_orange>, true);
mods.jei.JEI.removeAndHide(<yurtmod:tepee_wall_white>, true);
mods.jei.JEI.removeAndHide(<yurtmod:tepee_wall_hope>, true);
mods.jei.JEI.removeAndHide(<yurtmod:tepee_wall_sun>, true);
mods.jei.JEI.removeAndHide(<yurtmod:tepee_wall_creeper>, true);
mods.jei.JEI.removeAndHide(<yurtmod:tepee_wall_universe>, true);
mods.jei.JEI.removeAndHide(<yurtmod:tepee_wall_eagle>, true);
mods.jei.JEI.removeAndHide(<yurtmod:tepee_wall_triforce>, true);
mods.jei.JEI.removeAndHide(<yurtmod:tepee_wall_dreamcatcher>, true);
mods.jei.JEI.removeAndHide(<yurtmod:tepee_wall_rain>, true);
mods.jei.JEI.removeAndHide(<yurtmod:tepee_wall_magic>, true);

mods.jei.JEI.removeAndHide(<yurtmod:cos_bed_wall>, true);
mods.jei.JEI.removeAndHide(<yurtmod:cos_bed_roof>, true);
mods.jei.JEI.removeAndHide(<yurtmod:cos_indlu_wall_outer>, true);
mods.jei.JEI.removeAndHide(<yurtmod:cos_indlu_wall_inner>, true);
mods.jei.JEI.removeAndHide(<yurtmod:cos_tepee_wall_blank>, true);
mods.jei.JEI.removeAndHide(<yurtmod:cos_tepee_wall_black>, true);
mods.jei.JEI.removeAndHide(<yurtmod:cos_tepee_wall_red>, true);
mods.jei.JEI.removeAndHide(<yurtmod:cos_tepee_wall_yellow>, true);
mods.jei.JEI.removeAndHide(<yurtmod:cos_tepee_wall_orange>, true);
mods.jei.JEI.removeAndHide(<yurtmod:cos_tepee_wall_white>, true);
mods.jei.JEI.removeAndHide(<yurtmod:cos_tepee_wall_hope>, true);
mods.jei.JEI.removeAndHide(<yurtmod:cos_tepee_wall_sun>, true);
mods.jei.JEI.removeAndHide(<yurtmod:cos_tepee_wall_creeper>, true);
mods.jei.JEI.removeAndHide(<yurtmod:cos_tepee_wall_universe>, true);
mods.jei.JEI.removeAndHide(<yurtmod:cos_tepee_wall_eagle>, true);
mods.jei.JEI.removeAndHide(<yurtmod:cos_tepee_wall_triforce>, true);
mods.jei.JEI.removeAndHide(<yurtmod:cos_tepee_wall_dreamcatcher>, true);
mods.jei.JEI.removeAndHide(<yurtmod:cos_tepee_wall_rain>, true);
mods.jei.JEI.removeAndHide(<yurtmod:cos_tepee_wall_magic>, true);

////Satchels
recipes.removeShaped(<vanillasatchels:satchel:0>);
recipes.addShaped("Base Satchel", <vanillasatchels:satchel:0>,
 [[<minecraft:leather>,<minecraft:leather>,<minecraft:leather>],
  [<minecraft:leather>,<atum:linen_white>,<minecraft:leather>],
  [<minecraft:leather>,<minecraft:leather>,<minecraft:leather>]]);
  
recipes.removeShaped(<vanillasatchels:satchel:1>);
recipes.addShaped("Iron Satchel", <vanillasatchels:satchel:1>,
 [[null,<minecraft:iron_block>,null],
  [<minecraft:iron_block>,<vanillasatchels:satchel:0>,<minecraft:iron_block>],
  [null,<minecraft:iron_block>,null]]);
  
recipes.removeShaped(<vanillasatchels:satchel:2>);
recipes.addShaped("Gold Satchel", <vanillasatchels:satchel:2>,
 [[null,<minecraft:gold_block>,null],
  [<minecraft:gold_block>,<vanillasatchels:satchel:1>,<minecraft:gold_block>],
  [null,<minecraft:gold_block>,null]]);
  
recipes.removeShaped(<vanillasatchels:satchel:3>);
recipes.addShaped("Diamond Satchel", <vanillasatchels:satchel:3>,
 [[null,<minecraft:diamond_block>,null],
  [<minecraft:diamond_block>,<vanillasatchels:satchel:2>,<minecraft:diamond_block>],
  [null,<minecraft:diamond_block>,null]]);

recipes.removeShaped(<vanillasatchels:satchel:4>);
recipes.addShaped("Emerald Satchel", <vanillasatchels:satchel:4>,
 [[null,<minecraft:emerald_block>,null],
  [<minecraft:emerald_block>,<vanillasatchels:satchel:3>,<minecraft:emerald_block>],
  [null,<minecraft:emerald_block>,null]]);

////Atum
<atum:scarab>.displayName = "Crest of Atum";

//Limestone Furnace Minecart
recipes.removeShaped(<minecraft:furnace_minecart>);
recipes.addShapeless("furnace_minecart",<minecraft:furnace_minecart>,[<minecraft:minecart>,<atum:limestone_furnace>]);

//Redstone Comparator
recipes.removeShaped(<minecraft:comparator>);
recipes.addShaped("comparator", <minecraft:comparator>,
 [[null,<minecraft:redstone_torch>,null],
  [<minecraft:redstone_torch>,<atum:ectoplasm>,<minecraft:redstone_torch>],
  [stone,stone,stone]]);

//Bed
recipes.removeShaped(<minecraft:bed>);
recipes.addShaped("bed", <minecraft:bed>,
 [[null,null,null],
  [<atum:linen_white>,<atum:linen_white>,<atum:linen_white>],
  [wood,wood,wood]]);

////Ceramics
//Removals
mods.jei.JEI.removeAndHide(<ceramics:clay_slab:0>, true);
mods.jei.JEI.removeAndHide(<ceramics:clay_slab:1>, true);
mods.jei.JEI.removeAndHide(<ceramics:clay_slab:2>, true);
mods.jei.JEI.removeAndHide(<ceramics:clay_slab:3>, true);
mods.jei.JEI.removeAndHide(<ceramics:clay_slab:4>, true);
mods.jei.JEI.removeAndHide(<ceramics:clay_slab:5>, true);
mods.jei.JEI.removeAndHide(<ceramics:clay_slab:6>, true);
mods.jei.JEI.removeAndHide(<ceramics:clay_slab:7>, true);
mods.jei.JEI.removeAndHide(<ceramics:clay_wall:0>, true);
mods.jei.JEI.removeAndHide(<ceramics:clay_wall:1>, true);
mods.jei.JEI.removeAndHide(<ceramics:clay_wall:2>, true);
mods.jei.JEI.removeAndHide(<ceramics:clay_wall:3>, true);
mods.jei.JEI.removeAndHide(<ceramics:clay_wall:4>, true);
mods.jei.JEI.removeAndHide(<ceramics:clay_wall:5>, true);
mods.jei.JEI.removeAndHide(<ceramics:clay_wall:6>, true);
mods.jei.JEI.removeAndHide(<ceramics:clay_wall:7>, true);
mods.jei.JEI.removeAndHide(<ceramics:clay_wall:8>, true);
mods.jei.JEI.removeAndHide(<ceramics:clay_hard:0>, true);
mods.jei.JEI.removeAndHide(<ceramics:clay_hard:1>, true);
mods.jei.JEI.removeAndHide(<ceramics:clay_hard:2>, true);
mods.jei.JEI.removeAndHide(<ceramics:clay_hard:3>, true);
mods.jei.JEI.removeAndHide(<ceramics:clay_hard:4>, true);
mods.jei.JEI.removeAndHide(<ceramics:clay_hard:5>, true);
mods.jei.JEI.removeAndHide(<ceramics:clay_hard:6>, true);
mods.jei.JEI.removeAndHide(<ceramics:clay_hard:7>, true);
mods.jei.JEI.removeAndHide(<ceramics:porcelain:0>, true);
mods.jei.JEI.removeAndHide(<ceramics:porcelain:1>, true);
mods.jei.JEI.removeAndHide(<ceramics:porcelain:2>, true);
mods.jei.JEI.removeAndHide(<ceramics:porcelain:3>, true);
mods.jei.JEI.removeAndHide(<ceramics:porcelain:4>, true);
mods.jei.JEI.removeAndHide(<ceramics:porcelain:5>, true);
mods.jei.JEI.removeAndHide(<ceramics:porcelain:6>, true);
mods.jei.JEI.removeAndHide(<ceramics:porcelain:7>, true);
mods.jei.JEI.removeAndHide(<ceramics:porcelain:8>, true);
mods.jei.JEI.removeAndHide(<ceramics:porcelain:9>, true);
mods.jei.JEI.removeAndHide(<ceramics:porcelain:10>, true);
mods.jei.JEI.removeAndHide(<ceramics:porcelain:11>, true);
mods.jei.JEI.removeAndHide(<ceramics:porcelain:12>, true);
mods.jei.JEI.removeAndHide(<ceramics:porcelain:13>, true);
mods.jei.JEI.removeAndHide(<ceramics:porcelain:14>, true);
mods.jei.JEI.removeAndHide(<ceramics:porcelain:15>, true);
mods.jei.JEI.removeAndHide(<ceramics:unfired_clay:4>, false);
mods.jei.JEI.removeAndHide(<ceramics:unfired_clay:5>, false);
mods.jei.JEI.removeAndHide(<ceramics:unfired_clay:6>, false);
mods.jei.JEI.removeAndHide(<ceramics:unfired_clay:7>, false);
mods.jei.JEI.removeAndHide(<ceramics:unfired_clay:8>, false);
mods.jei.JEI.removeAndHide(<ceramics:unfired_clay:9>, false);
mods.jei.JEI.removeAndHide(<ceramics:clay_helmet:0>, false);
mods.jei.JEI.removeAndHide(<ceramics:clay_chestplate:0>, false);
mods.jei.JEI.removeAndHide(<ceramics:clay_leggings:0>, false);
mods.jei.JEI.removeAndHide(<ceramics:clay_boots:0>, false);
mods.jei.JEI.removeAndHide(<ceramics:rainbow_clay:0>, true);
mods.jei.JEI.removeAndHide(<ceramics:rainbow_clay:1>, true);
mods.jei.JEI.removeAndHide(<ceramics:rainbow_clay:2>, true);
mods.jei.JEI.removeAndHide(<ceramics:rainbow_clay:3>, true);
mods.jei.JEI.removeAndHide(<ceramics:rainbow_clay:4>, true);
mods.jei.JEI.removeAndHide(<ceramics:rainbow_clay:5>, true);
mods.jei.JEI.removeAndHide(<ceramics:rainbow_clay:6>, true);
mods.jei.JEI.removeAndHide(<ceramics:rainbow_clay:7>, true);
mods.jei.JEI.removeAndHide(<ceramics:porcelain_bricks_stairs>, false);
mods.jei.JEI.removeAndHide(<ceramics:rainbow_bricks_stairs>, false);
mods.jei.JEI.removeAndHide(<ceramics:dark_bricks_stairs>, false);
mods.jei.JEI.removeAndHide(<ceramics:golden_bricks_stairs>, false);
mods.jei.JEI.removeAndHide(<ceramics:marine_bricks_stairs>, false);
mods.jei.JEI.removeAndHide(<ceramics:dragon_bricks_stairs>, false);
mods.jei.JEI.removeAndHide(<ceramics:lava_bricks_stairs>, false);
mods.jei.JEI.removeAndHide(<ceramics:monochrome_bricks_stairs>, false);
mods.jei.JEI.removeAndHide(<ceramics:clay_soft>, false);

<ceramics:faucet>.displayName = "Ceramic Faucet";
<ceramics:channel>.displayName = "Ceramic Channel";
<ceramics:clay_barrel_stained:0>.displayName = "White Marl Barrel";
<ceramics:clay_barrel_stained:1>.displayName = "Orange Marl Barrel";
<ceramics:clay_barrel_stained:2>.displayName = "Magenta Marl Barrel";
<ceramics:clay_barrel_stained:3>.displayName = "Light Blue Marl Barrel";
<ceramics:clay_barrel_stained:4>.displayName = "Yellow Marl Barrel";
<ceramics:clay_barrel_stained:5>.displayName = "Lime Marl Barrel";
<ceramics:clay_barrel_stained:6>.displayName = "Pink Marl Barrel";
<ceramics:clay_barrel_stained:7>.displayName = "Gray Marl Barrel";
<ceramics:clay_barrel_stained:8>.displayName = "Light Gray Marl Barrel";
<ceramics:clay_barrel_stained:9>.displayName = "Cyan Marl Barrel";
<ceramics:clay_barrel_stained:10>.displayName = "Purple Marl Barrel";
<ceramics:clay_barrel_stained:11>.displayName = "Blue Marl Barrel";
<ceramics:clay_barrel_stained:12>.displayName = "Brown Marl Barrel";
<ceramics:clay_barrel_stained:13>.displayName = "Green Marl Barrel";
<ceramics:clay_barrel_stained:14>.displayName = "Red Marl Barrel";
<ceramics:clay_barrel_stained:15>.displayName = "Black Marl Barrel";
<ceramics:clay_barrel_stained_extension:0>.displayName = "White Marl Barrel Extension";
<ceramics:clay_barrel_stained_extension:1>.displayName = "Orange Marl Barrel Extension";
<ceramics:clay_barrel_stained_extension:2>.displayName = "Magenta Marl Barrel Extension";
<ceramics:clay_barrel_stained_extension:3>.displayName = "Light Blue Marl Barrel Extension";
<ceramics:clay_barrel_stained_extension:4>.displayName = "Yellow Marl Barrel Extension";
<ceramics:clay_barrel_stained_extension:5>.displayName = "Lime Marl Barrel Extension";
<ceramics:clay_barrel_stained_extension:6>.displayName = "Pink Marl Barrel Extension";
<ceramics:clay_barrel_stained_extension:7>.displayName = "Gray Marl Barrel Extension";
<ceramics:clay_barrel_stained_extension:8>.displayName = "Light Gray Marl Barrel Extension";
<ceramics:clay_barrel_stained_extension:9>.displayName = "Cyan Marl Barrel Extension";
<ceramics:clay_barrel_stained_extension:10>.displayName = "Purple Marl Barrel Extension";
<ceramics:clay_barrel_stained_extension:11>.displayName = "Blue Marl Barrel Extension";
<ceramics:clay_barrel_stained_extension:12>.displayName = "Brown Marl Barrel Extension";
<ceramics:clay_barrel_stained_extension:13>.displayName = "Green Marl Barrel Extension";
<ceramics:clay_barrel_stained_extension:14>.displayName = "Red Marl Barrel Extension";
<ceramics:clay_barrel_stained_extension:15>.displayName = "Black Marl Barrel Extension";
<ceramics:porcelain_barrel:0>.displayName = "White Ceramic Barrel";
<ceramics:porcelain_barrel:1>.displayName = "Orange Ceramic Barrel";
<ceramics:porcelain_barrel:2>.displayName = "Magenta Ceramic Barrel";
<ceramics:porcelain_barrel:3>.displayName = "Light Blue Ceramic Barrel";
<ceramics:porcelain_barrel:4>.displayName = "Yellow Ceramic Barrel";
<ceramics:porcelain_barrel:5>.displayName = "Lime Ceramic Barrel";
<ceramics:porcelain_barrel:6>.displayName = "Pink Ceramic Barrel";
<ceramics:porcelain_barrel:7>.displayName = "Gray Ceramic Barrel";
<ceramics:porcelain_barrel:8>.displayName = "Light Gray Ceramic Barrel";
<ceramics:porcelain_barrel:9>.displayName = "Cyan Ceramic Barrel";
<ceramics:porcelain_barrel:10>.displayName = "Purple Ceramic Barrel";
<ceramics:porcelain_barrel:11>.displayName = "Blue Ceramic Barrel";
<ceramics:porcelain_barrel:12>.displayName = "Brown Ceramic Barrel";
<ceramics:porcelain_barrel:13>.displayName = "Green Ceramic Barrel";
<ceramics:porcelain_barrel:14>.displayName = "Red Ceramic Barrel";
<ceramics:porcelain_barrel:15>.displayName = "Black Ceramic Barrel";
<ceramics:porcelain_barrel_extension:0>.displayName = "White Ceramic Barrel Extension";
<ceramics:porcelain_barrel_extension:1>.displayName = "Orange Ceramic Barrel Extension";
<ceramics:porcelain_barrel_extension:2>.displayName = "Magenta Ceramic Barrel Extension";
<ceramics:porcelain_barrel_extension:3>.displayName = "Light Blue Ceramic Barrel Extension";
<ceramics:porcelain_barrel_extension:4>.displayName = "Yellow Ceramic Barrel Extension";
<ceramics:porcelain_barrel_extension:5>.displayName = "Lime Ceramic Barrel Extension";
<ceramics:porcelain_barrel_extension:6>.displayName = "Pink Ceramic Barrel Extension";
<ceramics:porcelain_barrel_extension:7>.displayName = "Gray Ceramic Barrel Extension";
<ceramics:porcelain_barrel_extension:8>.displayName = "Light Gray Ceramic Barrel Extension";
<ceramics:porcelain_barrel_extension:9>.displayName = "Cyan Ceramic Barrel Extension";
<ceramics:porcelain_barrel_extension:10>.displayName = "Purple Ceramic Barrel Extension";
<ceramics:porcelain_barrel_extension:11>.displayName = "Blue Ceramic Barrel Extension";
<ceramics:porcelain_barrel_extension:12>.displayName = "Brown Ceramic Barrel Extension";
<ceramics:porcelain_barrel_extension:13>.displayName = "Green Ceramic Barrel Extension";
<ceramics:porcelain_barrel_extension:14>.displayName = "Red Ceramic Barrel Extension";
<ceramics:porcelain_barrel_extension:15>.displayName = "Black Ceramic Barrel Extension";


//Marl Bucket
recipes.removeShaped(<ceramics:unfired_clay:0>);
<ceramics:unfired_clay:0>.displayName = "Unfired Marl Bucket";
<ceramics:clay_bucket:0>.displayName = "Marl Bucket";
<ceramics:clay_bucket:1>.displayName = "Marl Bucket";
<ceramics:clay_bucket:2>.displayName = "Marl Bucket";
////<extrautils2:machine:0>.onlyWithTag({Type:"extrautils2:furnace"});  
recipes.removeShaped(<ceramics:unfired_clay>);
recipes.addShaped("unfired marl bucket", <ceramics:unfired_clay:0>,
[[null,null,null],
	[<atum:marl>,null,<atum:marl>],
	[null,<atum:marl>,null]]);

//Marl Shears
recipes.removeShaped(<ceramics:unfired_clay:1>);
<ceramics:unfired_clay:1>.displayName = "Unfired Marl Shears";
<ceramics:clay_shears:0>.displayName = "Marl Shears";
recipes.addShaped("unfired marl shears", <ceramics:unfired_clay:1>,
[[<atum:marl>,null,null],
	[null,null,<atum:marl>],
	[null,null,null]]);

//Clay Barrel
recipes.removeShaped(<ceramics:clay_barrel_unfired>);
recipes.removeShaped(<ceramics:clay_barrel>);
<ceramics:clay_barrel>.displayName = "Marl Barrel";
recipes.addShaped("clay barrel", <ceramics:clay_barrel>,
[[<atum:marl>,null,<atum:marl>],
	[<atum:marl>,null,<atum:marl>],
	[null,<atum:marl>,null]]);
	
////DWMH
//Ocarina
<dwmh:whistle>.displayName = "Reed Flute";
recipes.removeShaped(<dwmh:whistle>);
recipes.addShaped("whistle", <dwmh:whistle>,
[[<atum:papyrus_plant>,<atum:papyrus_plant>,<atum:papyrus_plant>],
	[<minecraft:leather>,<minecraft:leather>,<minecraft:leather>],
	[<atum:papyrus_plant>,<atum:papyrus_plant>,<atum:papyrus_plant>]]);
	
	
////Vanilla
//Netherrack
//recipes.removeSmelting(<minecraft:netherrack>);
recipes.remove(<minecraft:nether_brick>);
recipes.remove(<minecraft:wool>);
furnace.remove(<minecraft:nether_brick>);
<minecraft:netherrack>.displayName = "Smoldering Coals";

//Redstone Observer
recipes.removeShaped(<minecraft:observer>);
recipes.addShaped("observer", <minecraft:observer>,
 [[stone,stone,stone],
  [<minecraft:redstone>,<minecraft:redstone>,<atum:ectoplasm>],
  [stone,stone,stone]]);
  
////Quark
recipes.addShaped("glass_item_frame", <quark:glass_item_frame>,
[[<atum:thin_crystal_glass>,<atum:thin_crystal_glass>,<atum:thin_crystal_glass>],
	[<atum:thin_crystal_glass>,<minecraft:item_frame>,<atum:thin_crystal_glass>],
	[<atum:thin_crystal_glass>,<atum:thin_crystal_glass>,<atum:thin_crystal_glass>]]);
  
////Baubley Heart Canisters
recipes.removeShapeless(<bhc:blue_heart_canister>);
recipes.removeShapeless(<bhc:green_heart_canister>);
recipes.removeShaped(<bhc:heart_amulet>);
<bhc:red_heart>.displayName = "Gold Heart";
<bhc:orange_heart>.displayName = "Cyan Heart";
<bhc:red_heart_canister>.displayName = "Gold Heart Canister";
<bhc:orange_heart_canister>.displayName = "Cyan Heart Canister";
<bhc:relic_apple>.displayName = "Relic Date";
<bhc:wither_bone>.displayName = "Inscribed Dusty Bone";

//Relic Date
recipes.removeShaped(<bhc:relic_apple>);
recipes.addShaped("relic_apple", <bhc:relic_apple>,
[[null,<minecraft:diamond>,null],
	[<minecraft:emerald>,<atum:date>,<minecraft:emerald>],
	[null,<minecraft:diamond>,null]]);

//Inscribed Bone
recipes.addShaped("wither_bone", <bhc:wither_bone>,
[[<atum:ectoplasm>,<atum:ectoplasm>,<atum:ectoplasm>],
	[<atum:ectoplasm>,<atum:dusty_bone>,<atum:ectoplasm>],
	[<atum:ectoplasm>,<atum:ectoplasm>,<atum:ectoplasm>]]);

//Canister Recipe
recipes.removeShaped(<bhc:canister>);
recipes.addShaped("canister", <bhc:canister>,
[[<minecraft:gold_ingot>,<minecraft:gold_ingot>,<minecraft:gold_ingot>],
	[<minecraft:gold_ingot>,<atum:dusty_bone>,<minecraft:gold_ingot>],
	[<minecraft:gold_ingot>,<minecraft:gold_ingot>,<minecraft:gold_ingot>]]);

//Gold Heart Canister Recipe
recipes.remove(<bhc:red_heart_canister>);
recipes.addShapeless("red_heart_canister",<bhc:red_heart_canister>,[<bhc:red_heart>,<bhc:wither_bone>,<bhc:relic_apple>,<bhc:canister>]);

//Cyan Heart Canister Recipe
recipes.remove(<bhc:orange_heart_canister>);
recipes.addShapeless("orange_heart_canister",<bhc:orange_heart_canister>,[<bhc:red_heart_canister>,<minecraft:totem_of_undying>,<bhc:orange_heart>]);
  
////Enchanting Plus\\\\
//Advanced Enchanting Table
recipes.removeShaped(<eplus:advanced_table>);
recipes.addShaped("advanced_table", <eplus:advanced_table>,
[[<minecraft:glowstone>,<atum:scarab>,<minecraft:glowstone>],
	[<minecraft:obsidian>,<minecraft:enchanting_table>,<minecraft:obsidian>],
	[<minecraft:glowstone>,<minecraft:obsidian>,<minecraft:glowstone>]]);

recipes.removeShaped(<eplus:table_upgrade>);
recipes.addShaped("table_upgrade", <eplus:table_upgrade>,
[[<minecraft:glowstone>,<atum:scarab>,<minecraft:glowstone>],
	[<minecraft:obsidian>,null,<minecraft:obsidian>],
	[<minecraft:glowstone>,<minecraft:obsidian>,<minecraft:glowstone>]]);

////Storage Drawers\\\\
//Disabling Storage Drawers
//item.withTag(NBTData);
mods.jei.JEI.removeAndHide(<storagedrawers:basicdrawers>);
mods.jei.JEI.removeAndHide(<storagedrawers:basicdrawers:1>);
mods.jei.JEI.removeAndHide(<storagedrawers:basicdrawers:2>);
mods.jei.JEI.removeAndHide(<storagedrawers:basicdrawers:3>);
mods.jei.JEI.removeAndHide(<storagedrawers:basicdrawers:4>);
mods.jei.JEI.removeAndHide(<storagedrawers:trim>);

//Drawer Template
recipes.remove(<storagedrawers:upgrade_template>);
recipes.addShaped("drawer_upgrade_template", <storagedrawers:upgrade_template>,
 [[stick,stick,stick],
  [stick,<storagedrawersunlimited:trim_atum_palm>,stick],
  [stick,stick,stick]]);
  
//Compacting Drawer
recipes.remove(<storagedrawers:compdrawers>);
recipes.addShaped("compacting_drawer", <storagedrawers:compdrawers>,
 [[<atum:limestone>,<atum:limestone>,<atum:limestone>],
  [<minecraft:piston>,<storagedrawersunlimited:trim_atum_palm>,<minecraft:piston>],
  [<atum:limestone>,<ore:ingotIron>,<atum:limestone>]]);
  
//Drawer Controller
recipes.remove(<storagedrawers:controller>);
recipes.addShaped("drawer_controller", <storagedrawers:controller>,
 [[<atum:limestone>,<atum:limestone>,<atum:limestone>],
  [<minecraft:comparator>,<storagedrawersunlimited:trim_atum_palm>,<minecraft:comparator>],
  [<atum:limestone>,<ore:gemDiamond>,<atum:limestone>]]);
  
//Controller Slave
recipes.remove(<storagedrawers:controllerslave>);
recipes.addShaped("drawer_controller_slave", <storagedrawers:controllerslave>,
 [[<atum:limestone>,<atum:limestone>,<atum:limestone>],
  [<minecraft:comparator>,<storagedrawersunlimited:trim_atum_palm>,<minecraft:comparator>],
  [<atum:limestone>,<ore:ingotGold>,<atum:limestone>]]);

//Drawer Template
recipes.addShaped("drawer_upgrade_template2", <storagedrawers:upgrade_template>,
 [[stick,stick,stick],
  [stick,<storagedrawersunlimited:trim_atum_deadwood>,stick],
  [stick,stick,stick]]);
  
//Compacting Drawer
recipes.addShaped("compacting_drawer2", <storagedrawers:compdrawers>,
 [[<atum:limestone>,<atum:limestone>,<atum:limestone>],
  [<minecraft:piston>,<storagedrawersunlimited:trim_atum_deadwood>,<minecraft:piston>],
  [<atum:limestone>,<ore:ingotIron>,<atum:limestone>]]);
  
//Drawer Controller
recipes.addShaped("drawer_controller2", <storagedrawers:controller>,
 [[<atum:limestone>,<atum:limestone>,<atum:limestone>],
  [<minecraft:comparator>,<storagedrawersunlimited:trim_atum_deadwood>,<minecraft:comparator>],
  [<atum:limestone>,<ore:gemDiamond>,<atum:limestone>]]);
  
//Controller Slave
recipes.addShaped("drawer_controller_slave2", <storagedrawers:controllerslave>,
 [[<atum:limestone>,<atum:limestone>,<atum:limestone>],
  [<minecraft:comparator>,<storagedrawersunlimited:trim_atum_deadwood>,<minecraft:comparator>],
  [<atum:limestone>,<ore:ingotGold>,<atum:limestone>]]);
  
//Packing Tape
recipes.remove(<storagedrawers:tape>);
recipes.addShaped("tape", <storagedrawers:tape>,
 [[null,<ore:slimeball>,null],
  [<atum:scroll>,<atum:scroll>,<atum:scroll>]]);
  
////Ender Lantern
<adventurepack:lantern>.displayName = "Ra's Gaze";
recipes.addShaped("ras_gaze", <adventurepack:lantern>,
 [[<minecraft:diamond>,<minecraft:glowstone>,<minecraft:diamond>],
  [<minecraft:glowstone>,<atum:heart_of_ra>,<minecraft:glowstone>],
  [<minecraft:diamond>,<minecraft:glowstone>,<minecraft:diamond>]]);
 
////Waystones\\\\
//Waystone
recipes.removeShaped(<waystones:waystone>);
recipes.addShaped("waystone", <waystones:waystone>,
 [[null,<atum:limestone_brick_large>,null],
  [<atum:limestone_brick_large>,<waystones:warp_stone>,<atum:limestone_brick_large>],
  [<ore:obsidian>,<ore:obsidian>,<ore:obsidian>]]);
  
//Warp Stone
recipes.removeShaped(<waystones:warp_stone>);
recipes.addShaped("warp_stone", <waystones:warp_stone>,
 [[<ore:dyeCyan>,<ore:relic>,<ore:dyeCyan>],
  [<ore:relic>,<ore:gemEmerald>,<ore:relic>],
  [<ore:dyeCyan>,<ore:relic>,<ore:dyeCyan>]]);
  
//Return Scroll
recipes.removeShaped(<waystones:return_scroll>);
recipes.addShaped("return_scroll", <waystones:return_scroll>,
 [[<ore:nuggetGold>,<ore:relic>,<ore:nuggetGold>],
  [<ore:paper>,<ore:paper>,<ore:paper>]]);
  
//Bound Scroll
recipes.removeShaped(<waystones:bound_scroll>);
recipes.addShaped("bound_scroll", <waystones:bound_scroll>,
 [[<ore:dyePurple>,<ore:dyePurple>,<ore:dyePurple>],
  [<ore:nuggetGold>,<ore:relic>,<ore:nuggetGold>],
  [<ore:paper>,<ore:paper>,<ore:paper>]]);
  
//Warp Scroll
recipes.removeShaped(<waystones:warp_scroll>);
recipes.addShaped("warp_scroll", <waystones:warp_scroll>,
 [[<ore:relic>,<ore:dyePurple>,<ore:relic>],
  [<ore:paper>,<ore:paper>,<ore:paper>],
  [<ore:nuggetGold>,<ore:dyePurple>,<ore:nuggetGold>]]);
  
////Chisels and Bits
//Bit Bag
recipes.removeShaped(<chiselsandbits:bit_bag>);
recipes.addShaped("ore_wool_bit_bag", <chiselsandbits:bit_bag>,
 [[<atum:linen_cloth>,<atum:linen_cloth>,<atum:linen_cloth>],
  [<atum:linen_cloth>,<chiselsandbits:block_bit>.withTag({id:320}),<atum:linen_cloth>],
  [<atum:linen_cloth>,<atum:linen_cloth>,<atum:linen_cloth>]]);
  
//Positive design
recipes.addShapeless("positive", <chiselsandbits:positiveprint>, 
  [<minecraft:water_bucket>, <atum:scroll>, <ore:gemLapis>]);
  
//Negative design
recipes.addShapeless("negative", <chiselsandbits:negativeprint>, 
  [<minecraft:water_bucket>, <atum:scroll>, <ore:dustRedstone>]);
  
//Mirror design
recipes.addShapeless("mirror", <chiselsandbits:mirrorprint>, 
  [<minecraft:water_bucket>, <atum:scroll>, <atum:ectoplasm>]);