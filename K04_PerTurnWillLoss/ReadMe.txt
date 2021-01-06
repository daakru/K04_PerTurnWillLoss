Mod Author: Kinetos#6935
Version: 1.0

Replaces the Will Loss from discovering an enemy pod with a turn based Will Loss mechanic.

Description:
------------
All code is available on GitHub ().

Requirements:
-------------
This mod edits the config of [XComGame.X2EventListener_DefaultWillEvents] and may conflict with other mods that do the same.

    For information on how mod load order works and what you can do to get around ini conflicts, 
    check out this blog post by robojumper on Load Order (https://robojumper.github.io/too-real/load-order/) 
    and this page on the Modding Wiki (https://www.reddit.com/r/xcom2mods/wiki/index/dlcrunorder). 

Configuration:
--------------
XComPerTurnWillLoss.ini has configurable values for the Per-Turn Will Loss mechanic.

XComGameCore.ini disables the default Pod Reveal Will Loss event, and adds additional config edits from LWOTC.

Feel free to comment out or delete the additional config edits if you don't want them.
