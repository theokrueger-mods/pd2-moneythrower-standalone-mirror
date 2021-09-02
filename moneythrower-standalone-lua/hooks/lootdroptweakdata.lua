if not _G.MTS then
	dofile(ModPath .. 'scripts/setup.lua')
end

Hooks:PostHook(
	LootDropTweakData,
	'init',
	'init_money_standalone_LDTD',
	function(self, tweak_data)
		self.global_values.pda8_wpn_money = {
			name_id = 'bm_global_value_pda8',
			desc_id = 'menu_l_global_value_pda8',
			unlock_id = 'bm_wpn_money_event_ended',
			color = tweak_data.screen_colors.event_color,
			dlc = true,
			free = false,
			hide_unavailable = false,
			chance = 1,
			value_multiplier = 1,
			durability_multiplier = 1,
			drops = false,
			track = true,
			sort_number = 510,
			category = 'dlc'
		}
	end
)
