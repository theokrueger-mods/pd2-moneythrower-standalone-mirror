Hooks:PostHook(
	WeaponFactoryTweakData,
	'init',
	'init_money_standalone_WFTD',
	function(self)
		self:_init_money_standalone()
	end
)

function WeaponFactoryTweakData:_init_money_standalone()
	self.wpn_fps_fla_money_standalone = self.wpn_fps_fla_money
	self.wpn_fps_fla_money_standalone_npc = self.wpn_fps_fla_money_npc
end
