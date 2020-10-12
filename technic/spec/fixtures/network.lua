
local world = {
	{{x=100,y=100,z=100}, "technic:lv_cable"},
	{{x=101,y=100,z=100}, "technic:lv_cable"},
	{{x=102,y=100,z=100}, "technic:lv_cable"},
	{{x=103,y=100,z=100}, "technic:lv_cable"},
	{{x=104,y=100,z=100}, "technic:lv_cable"},
	{{x=100,y=101,z=100}, "technic:switching_station"},

	{{x=100,y=200,z=100}, "technic:mv_cable"},
	{{x=101,y=200,z=100}, "technic:mv_cable"},
	{{x=102,y=200,z=100}, "technic:mv_cable"},
	{{x=103,y=200,z=100}, "technic:mv_cable"},
	{{x=104,y=200,z=100}, "technic:mv_cable"},
	{{x=100,y=201,z=100}, "technic:switching_station"},

	{{x=100,y=300,z=100}, "technic:hv_cable"},
	{{x=101,y=300,z=100}, "technic:hv_cable"},
	{{x=102,y=300,z=100}, "technic:hv_cable"},
	{{x=103,y=300,z=100}, "technic:hv_cable"},
	{{x=104,y=300,z=100}, "technic:hv_cable"},
	{{x=100,y=301,z=100}, "technic:switching_station"},

	-- For network lookup function -> returns correct network for position
	{{x=100,y=500,z=100}, "technic:hv_cable"},
	{{x=101,y=500,z=100}, "technic:hv_cable"},
	{{x=102,y=500,z=100}, "technic:hv_cable"},
	{{x=103,y=500,z=100}, "technic:hv_cable"},
	{{x=104,y=500,z=100}, "technic:hv_cable"},
	{{x=100,y=501,z=100}, "technic:hv_generator"},
	{{x=101,y=501,z=100}, "technic:hv_cable"},
	{{x=102,y=501,z=100}, "technic:switching_station"},
	{{x=100,y=502,z=100}, "technic:hv_cable"},
	{{x=101,y=502,z=100}, "technic:hv_cable"},
}

-- Build world for tests
for _,node in ipairs(world) do
	_G.world.set_node(node[1], {name=node[2], param2=0})
end

_G.technic = {}
_G.technic.S = string.format
_G.technic.getter = function(...) return "" end
_G.technic.get_or_load_node = minetest.get_node

sourcefile("register")
technic.register_tier("LV", "Busted LV")
technic.register_tier("MV", "Busted MV")
technic.register_tier("HV", "Busted HV")