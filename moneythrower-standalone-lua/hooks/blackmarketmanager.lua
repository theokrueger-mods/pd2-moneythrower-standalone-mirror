if not _G.MTS then
	dofile(ModPath .. 'scripts/setup.lua')
end

function BlackMarketManager:has_unlocked_money()
	return true, "bm_menu_locked_pda8_1", "guis/textures/pd2/lock_achievement"
end