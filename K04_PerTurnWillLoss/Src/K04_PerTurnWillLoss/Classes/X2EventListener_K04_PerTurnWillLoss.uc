/*                                                                             
 * FILE:     X2EventListener_K04_PerTurnWillLoss.uc
 * AUTHOR:   Kinetos#6935, https://steamcommunity.com/id/kinetos/
 * VERSION:  K04 v1.0
 *
 * Listener Template that adds Per-Turn will loss mechanic.
 * Adapted for base WotC from X2EventListener_Tactical.uc in long-war-2/lwotc
 * Branch created from master at 8df75e2892181e0ed1dd5e9f6ab38ad5855b094a
 *
 * Copyright (c) 2016 Firaxis Games, Inc. All rights reserved.
 */

class X2EventListener_K04_PerTurnWillLoss extends X2EventListener
    config(PerTurnWillLoss);

var config bool bLog;

var config int NUM_TURNS_FOR_WILL_LOSS;
var config int WILL_LOSS_START_TURN;

// Camel Caps for consistency with base game's will roll data config vars
var const config WillEventRollData PerTurnWillRollData;

//---------------------------------------------------------------------------//

static function array<X2DataTemplate> CreateTemplates()
{
	local array<X2DataTemplate> Templates;

	Templates.AddItem(CreatePerTurnWillLossListener());

	return Templates;
}

//---------------------------------------------------------------------------//

static function X2EventListenerTemplate CreatePerTurnWillLossListener()
{
	local X2EventListenerTemplate Template;

	`Log("Register Per-Turn Will Loss event listener",, 'K04_PerTurnWillLoss');

	`CREATE_X2TEMPLATE(class'X2EventListenerTemplate',
        Template, 'PerTurnWillLossListener');
	Template.AddEvent('PlayerTurnEnded', K04_RollForPerTurnWillLoss);

	Template.RegisterInTactical = true;

	return Template;
}

//---------------------------------------------------------------------------//

static protected function EventListenerReturn K04_RollForPerTurnWillLoss(
	Object EventData,
	Object EventSource,
	XComGameState NewGameState,
	Name InEventID,
	Object CallbackData)
{
	local XComGameStateHistory History;
	local XComGameState_Player PlayerState;
	local XComGameStateContext_WillRoll WillRollContext;
	local XComGameState_HeadquartersXCom XComHQ;
	local StateObjectReference SquadRef;
	local XComGameState_Unit SquadUnit;

	History = `XCOMHISTORY;
	XComHQ = XComGameState_HeadquartersXCom(History
        .GetSingleGameStateObjectForClass(
        class'XComGameState_HeadquartersXCom'));
	PlayerState = XComGameState_Player(EventData);

	// We only want to lose Will every n turns, so skip other turns
	if (PlayerState.GetTeam() != eTeam_XCom
        || (PlayerState.PlayerTurnCount - default.WILL_LOSS_START_TURN)
            % default.NUM_TURNS_FOR_WILL_LOSS != 0)
    {
		return ELR_NoInterrupt;
    }

	// Remove Will from all squad members
	foreach XComHQ.Squad(SquadRef)
	{
		SquadUnit = XComGameState_Unit(History
            .GetGameStateForObjectID(SquadRef.ObjectID));
		if (class'XComGameStateContext_WillRoll'.static
            .ShouldPerformWillRoll(default.PerTurnWillRollData, SquadUnit))
		{
			`Log("Performing Will roll for" @ SquadUnit.GetFullName(),
                default.bLog, 'K04_PerTurnWillLoss');
			WillRollContext = class'XComGameStateContext_WillRoll'.static
                .CreateWillRollContext(SquadUnit, 'PlayerTurnEnd',, false);
			WillRollContext.DoWillRoll(default.PerTurnWillRollData);
			WillRollContext.Submit();
		}
	}

	return ELR_NoInterrupt;
}
