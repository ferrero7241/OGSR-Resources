
--Тестовая сборка мусора при закрытии меню
--[=[
if level.present() then
	level.add_call(function() return true end, function() collectgarbage("collect") end)
end

collectgarbage("collect")
--]=]

--[=[
--Вывод на карту НПС, которых создали респавнеры.
  dsh_respawn.iterate_respawners( function( respawner )
    if not respawner.item_spawn and #respawner.spawned_obj > 0 then
      for _, id in ipairs( respawner.spawned_obj ) do
        local sobj = alife():object( id )
        if sobj then
          local smart_name = "NOT FOUND"
          if sobj:smart_terrain_id() ~= 65535 then
			local smart_sobj = alife():object(sobj:smart_terrain_id())
			smart_name = smart_sobj:name()
		  end
          level.map_add_object_spot( sobj.id, "red_location", sobj:name()..": respawner ["..respawner.name.."] smart ["..smart_name.."]" )
        end
      end
    end
  end )
--]=]
--[=[
--Вывод на карту НПС, которых создали респавнеры, и которые не находятся в смартах.
  dsh_respawn.iterate_respawners( function( respawner )
    if not respawner.item_spawn and #respawner.spawned_obj > 0 then
      for _, id in ipairs( respawner.spawned_obj ) do
        local sobj = alife():object( id )
        if sobj then
          if sobj:smart_terrain_id() == 65535 then
            level.map_add_object_spot( sobj.id, "red_location", sobj:name()..": NO SMART TERRAIN! Respawner: "..respawner.name )
          end
        end
      end
    end
  end )
--]=]
--[=[
--Тест дробовика
ogse_addons.set_default_shg_params(ogse.spawn_item_in_inv("wpn_addon_remington_870mcs"))
ogse.spawn_item_in_inv("wpn_m16a1_sk1")
ogse.spawn_item_in_inv("wpn_addon_acog")
ogse.spawn_item_in_inv("wpn_addon_scope_eotech")
ogse.spawn_item_in_inv("wpn_addon_mag_mk6")
--]=]

--level.set_blender_mode_main(1) --Включить ночной режим для пнв в прицелах

--[=[ --Аддоны в торговлю

local t = {}

sys_ini:iterate_sections(
	function(sect)
		if get_u32(sect, "scope_status") == 2 and get_string(sect, "scope_name") ~= "wpn_scope" then
			t[get_string(sect, "scope_name")] = true
		end
		if get_u32(sect, "silencer_status") == 2 then
			t[get_string(sect, "silencer_name")] = true
		end
		if get_u32(sect, "grenade_launcher_status") == 2 and get_string(sect, "grenade_launcher_name") ~= "wpn_grenade_launcher" then
			t[get_string(sect, "grenade_launcher_name")] = true
		end
		local high_addons = get_string(sect, "highlight_addons")
		if high_addons then
			for _, s in ipairs(parse_names(high_addons)) do
				local real_sect = get_string(s, "real_item_section")
				if real_sect then
					t[real_sect] = true
				else
					t[s] = true
				end
			end
		end
	end
)

--log3("Full addons table for all wpns: %s", t)
local res_str = ""
for s in pairs(t) do
	res_str = res_str..s.." = 1, 1\n"
end
log1(res_str)

--]=]
