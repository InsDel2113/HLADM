require "utils.class"
require "utils.library"
require "utils.vscriptinit"
require "core.coreinit"
require "utils.utilsinit"
require "framework.frameworkinit"
require "framework.entities.entitiesinit"
require "game.globalsystems.timeofday_init"
require "game.gameinit"


local events = {
	'game_init',
	'game_newmap',
	'game_end',
	'round_start',
	'round_end',
	'round_start_pre_entity',
	'teamplay_round_start',
	'hostname_changed',
	'difficulty_changed',
	'finale_start',
	'game_message',
	'break_breakable',
	'break_prop',
	'npc_spawned',
	'npc_replaced',
	'entity_killed',
	'entity_hurt',
	'bonus_updated',
	'player_stats_updated',
	'achievement_event',
	'achievement_earned',
	'physgun_pickup',
	'flare_ignite_npc',
	'helicopter_grenade_punt_miss',
	'user_data_downloaded',
	'ragdoll_dissolved',
	'gameinstructor_draw',
	'gameinstructor_nodraw',
	'map_transition',
	'instructor_server_hint_create',
	'instructor_server_hint_stop',
	'chat_new_message',
	'chat_members_changed',
	'game_rules_state_change',
	'player_team',
	'player_class',
	'player_death',
	'player_hurt',
	'player_chat',
	'player_score',
	'player_spawn',
	'player_shoot',
	'player_use',
	'player_changename',
	'player_hintmessage',
	'player_reconnected',
	'team_info',
	'team_score',
	'teamplay_broadcast_audio',
} 
eventlist = eventlist or {}
for k,v in pairs(events) do
    
	if _G.eventlist[k] ~= nil then 
		StopListeningToGameEvent(eventlist[k])
	end 

	_G.eventlist[k] = ListenToGameEvent(v, function(tbl)
		for _k,_v in pairs(tbl) do
			print("\t".._k.."="..tostring(_v))
		end 
	end, nil)
end 
