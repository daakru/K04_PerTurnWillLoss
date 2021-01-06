/*                                                                             
 * FILE:     XComDownloadableContentInfo_K04_PerTurnWillLoss.uc
 * AUTHOR:   Kinetos#6935, https://steamcommunity.com/id/kinetos/
 * VERSION:  K04 v1.0
 *
 * Specify Mod behavior on campaign creation or initial saved game load.
 *
 * Copyright (c) 2016 Firaxis Games, Inc. All rights reserved.
 */

class X2DownloadableContentInfo_K04_PerTurnWillLoss
    extends X2DownloadableContentInfo;

//---------------------------------------------------------------------------//

/// <summary>
/// Called when the player loads a saved game created prior to mod installation
/// </summary>
static event OnLoadedSavedGame() {}

//---------------------------------------------------------------------------//

/// <summary>
/// Called when the player starts a new campaign
/// </summary>
static event InstallNewCampaign(XComGameState StartState) {}
