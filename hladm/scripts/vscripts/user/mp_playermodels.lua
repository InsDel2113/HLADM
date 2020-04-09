
model1 = "models/creatures/vortigaunt/vortigaunt_tunnels.vmdl"
model2 = "models/characters/alyx/alyx.vmdl"
model3 = "models/characters/hazmat_worker/hazmat_worker.vmdl"
model4 = "models/characters/eli/eli_end.vmdl"
model4 = "models/characters/eli/eli.vmdl"
model5 = "models/characters/combine_grunt/combine_grunt.vmdl"
model6 = "models/characters/larry/larry.vmdl"
model7 = "models/characters/metrocop/metrocop_choreo.vmdl"

if player_spawn_ev ~= nil then
    StopListeningToGameEvent(player_spawn_ev)
end

player_spawn_ev = ListenToGameEvent('player_spawn', function(info)
   local ran_model = RandomInt(1, 7)
   local model_dir = "nil"
   if ran_model == 1 then
    model_dir = model1
   end
   if ran_model == 2 then
    model_dir = model2
   end
   if ran_model == 3 then
    model_dir = model3
   end
   if ran_model == 4 then
    model_dir = model4
   end
   if ran_model == 5 then
    model_dir = model5
   end
   if ran_model == 6 then
    model_dir = model6
   end
   if ran_model == 7 then
    model_dir = model7
   end
   if not IsServer() then return end  
   PlayerInstanceFromIndex(info["userid"]):SetModel(model_dir)

 end, nil)

--REMEMBER: to use a model, it must be precached
-- either figure out how to precache it in lua/vscript OR join a map that has it

-- credits: JJL77 & InsDel(myself)