-- Test ent script

print("Test ent script!")

function Activate(type)
	print("Activate called")
end 

function OnBreak()
	print("OnBreak")
end 

function OnEntText()
	print("OnEntText")
end 

function OnTakeDamange(dmginfo)
	print("OnTakeDamange")
end 

function Precache(ctx)
	PrecacheModel("models/characters/citizens/citizen_female_01.vmdl", ctx)
	PrecacheModel("models/characters/citizens/citizen_female_02.vmdl", ctx)
	PrecacheModel("models/characters/citizens/citizen_male_01.vmdl", ctx)
	PrecacheModel("models/characters/combine_grunt/combine_grunt.vmdl", ctx)
	PrecacheModel("models/characters/combine_soldier_captain/combine_captain.vmdl", ctx)
	PrecacheModel("models/characters/combine_soldier_heavy/combine_soldier_heavy.vmdl", ctx)
	PrecacheModel("models/characters/gman/gman.vmdl", ctx)
	PrecacheModel("models/characters/gordon/gordon.vmdx", ctx)
	PrecacheModel("models/characters/hazmat_worker/hazmat_worker.vmdl", ctx)
	PrecacheModel("models/characters/metrocop/metrocop_choreo.vmdl", ctx)
	PrecacheModel("models/characters/larry/larry.vmdl", ctx)
	PrecacheModel("models/characters/alyx/alyx.vmdl", ctx)
	PrecacheModel("models/characters/lazlo/lazlo.vmdl", ctx) 
	print("Precache")
end 

function Spawn(spawnkeys)
	print("Spawn")
end 

function UpdateOnRemove()
	print("UpdateOnRemove")
end 
