[WotC] Per-Turn Will Loss
Mod Author: Kinetos#6935
Version: 1.0

Replaces the Will Loss from discovering an enemy pod with a turn-based Will Loss mechanic.
All code is available on GitHub (https://github.com/daakru/K04_PerTurnWillLoss).

Description:
------------
DISCLAIMER: THIS MOD IS NOT INTENDED FOR USE WITH LONG WAR OF THE CHOSEN
I give no guarantees that doing so will not break something.

Disables the default Pod Sighted Will Loss event, adding a turn-based Will Loss mechanic with a configurable turn frequency.
This is adapted for use in the base version of WotC from the Turn-Based Will Loss mechanic present in LWotC.

Requirements:
-------------
This mod edits the config of [XComGame.X2EventListener_DefaultWillEvents] and may conflict with other mods that do the same.

    For information on how mod load order works and what you can do to get around ini conflicts, 
    check out this blog post by robojumper on Load Order (https://robojumper.github.io/too-real/load-order/) 
    and this page on the Modding Wiki (https://www.reddit.com/r/xcom2mods/wiki/index/dlcrunorder). 

Configuration:
--------------
XComPerTurnWillLoss.ini has configurable values for the Per-Turn Will Loss mechanic.
XComGameCore.ini disables the default Pod Reveal Will Loss event.

MoreWillRollEdits/XComGameCore.ini adds additional config edits from LWotC.
Feel free to comment out, delete, or change the name as described in the file to disable the additional changes.

Credits:
--------
Thanks to the regulars of the XCOM 2 Modding discord for all their help answering my questions.
Special thanks to paledbrook for giving me the idea to make this mod, and for the code this mod is adapted from.

Original LWotC Source Code by paledbrook of the LWotC Team.
XCOM 2 WOTC API Copyright (c) 2016 Firaxis Games, Inc.