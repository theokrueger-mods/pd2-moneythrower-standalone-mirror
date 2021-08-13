if not _G.MTS then
	dofile(ModPath .. "scripts/setup.lua")
end

Hooks:Add("LocalizationManagerPostInit", "LocalizationManagerPostInit_MTS", function(loc)
    -- add menu localisation
	for _, f in pairs(file.GetFiles(MTS.path .. "i18n/")) do
		local str = f:match('^(.*).json$')
        -- load system lang loc file if it exists
		if str and Idstring(str) and Idstring(str):key() == SystemInfo:language():key() then
			loc:load_localization_file(MTS.path .. "i18n/" .. f)
			break
		end
	end
	loc:load_localization_file(MTS.path .. "i18n/english.json", false) -- default lang
end)
