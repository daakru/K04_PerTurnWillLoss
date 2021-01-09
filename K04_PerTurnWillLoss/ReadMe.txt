[WotC] Per-Turn Will Loss
Mod Author: Kinetos#6935
Version: 1.0

Replaces the Will Loss from discovering an enemy pod with a turn-based Will Loss mechanic.
All code is available on GitHub (https://github.com/daakru/K04_PerTurnWillLoss).

[Description]

DISCLAIMER: THIS MOD IS NOT INTENDED FOR USE WITH LONG WAR OF THE CHOSEN
I give no guarantees that doing so will not break something.

Adapted for use in the base version of WotC from the Turn-Based Will Loss mechanic present in LWotC.
Adds a turn-based Will Loss mechanic with a configurable turn frequency and will loss.
Disables the default Pod Sighted Will Loss event from the base game.

This mod's default configuration bases the amount of will lost on the rank of the soldier affected.
This attempts to simulate the increased psychological effect the prolonged conflict has on your troops.
    There is a minimum will loss of 2, so expect that until your soldiers reach at least Lieutenant.
    The higher their rank, the more will they can lose each turn the will loss event occurs.

Included in this mod are additional modifications to many of the default will loss events. 
These are taken largely in part from the configs for LWotC and include:

    Civilian Died:
        Slightly reduced per-mission max will loss from this source.

    Soldier Wounded:
        Slight reduction in panic chance.
        Fixed backwards logic by switching from PercentHealthLost to MaxWill as the calculation stat.
        Soldiers can only become Panicked or Obsessed, and will not become Shattered or go Berserk.

    Squadmate Wounded:
        Significantly reduce the chance to panic on a squadmate being wounded.
        Soldiers can only become Panicked, and will not become Shattered or go Berserk.

    Squadmate Died:
        Soldiers can only become Shattered, and will not become Panicked, Obsessed, or go Berserk.

    Bondmate Died:
        Gives a small chance to not to panic for soldiers with high will.

    Squadmate Captured:
        Moderate reduction in panic chance.
        Soldiers can only become Panicked, and will not become Shattered or go Berserk.

    Bondmate Captured:
        Gives a small chance to not to panic for soldiers with high will.

    Squadmate Panicked:
        Reduced the chance of chain panics significantly.
        Soldiers can only become Panicked or Obsessed, and will not become Shattered or go Berserk.

    Squadmate Mind Controlled:
        Slight reduction in panic chance.
        Soldiers can only become Shattered, and will not become Panicked or go Berserk.

    Squadmate Unconcious:
        Removed the will loss from a squadmate being rendered Unconscious.

    Spectre's Horror Ability:
        Moderate reduction in panic chance.
        Horror No longer reduces the will of its' target.
        Soldiers can only become Panicked, and will not become Shattered or go Berserk.


[Compatibility]

Safe to add mid campaign.
Safe to remove mid campaign.
Modifies the config of X2EventListener_DefaultWillEvents and may conflict with other mods that do the same.
No class overrides, yay!

[Configuration]

You can configure this mod by editing XComPerTurnWillLoss.ini, and the XComGameCore.ini located in the MoreWillRollEdits/ subdirectory.

XComPerTurnWillLoss.ini has configurable values for the Per-Turn Will Loss mechanic.
XComGameCore.ini disables the default Pod Reveal Will Loss event.

MoreWillRollEdits/XComGameCore.ini adds additional config edits from LWotC.
Feel free to comment out, delete, or change the name as described in the file to disable the additional changes.

I used robojumper's WotC: Show Will Loss (https://steamcommunity.com/sharedfiles/filedetails/?id=1134266810) to help test this mod.
I highly recommend it any time you work with will loss modifications.

[Requirements]

This mod has no dependencies (besides WotC).

[Known Issues]

None as of yet. Let me know if you find any problems.

[Credits]

Thanks to the regulars of the XCOM 2 Modding discord for all their help answering my questions.
Thanks especially to paledbrook for giving me the idea to make this mod, and for the code this mod is adapted from.

Referenced LWotC Source Code by paledbrook of the LWotC Team.
XCOM 2 WOTC API Copyright (c) 2016 Firaxis Games, Inc.