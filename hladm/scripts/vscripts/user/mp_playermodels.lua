-- Dynamic player models
local models = {
	"models/creatures/vortigaunt/vortigaunt_tunnels.vmdl"
	"models/characters/alyx/alyx.vmdl"
	"models/characters/hazmat_worker/hazmat_worker.vmdl"
	"models/characters/eli/eli_end.vmdl"
	"models/characters/eli/eli.vmdl"
	"models/characters/combine_grunt/combine_grunt.vmdl"
	"models/characters/larry/larry.vmdl"
	"models/characters/metrocop/metrocop_choreo.vmdl"
}

if player_spawn_ev ~= nil then
	StopListeningToGameEvent(player_spawn_ev)
else
	-- If player_spawn_ev is nil, that means have not precached anything
	for k,v in pairs(models) do
		AddPrecachedModel(v)
	end 
	PrecacheResources()
end 

player_spawn_ev = ListenToGameEvent('player_spawn', function(info)
	if not IsServer() then return end
	PlayerInstanceFromIndex(info["userid"):SetModel(models[RandomInt(1, #models)]) 
end, nil)

-- credits: JJL77 & InsDel(myself)
