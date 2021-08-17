function UpgradesTweakData:_money_standalone_weapon_definitions()
	self.definitions.money_standalone = {
		dlc = 'pda8',
		category = 'weapon',
		weapon_id = 'money_standalone',
		factory_id = 'wpn_fps_fla_money_standalone'
	}
	self.level_tree[1] = self.level_tree[1] or {upgrades={}, name_id="weapons"}
	table.insert(self.level_tree[1].upgrades, 'money_standalone')
end

Hooks:PostHook(
	UpgradesTweakData,
	'_money_weapon_definitions',
	'_money_standalone_weapon_definitions',
	function(self)
		self:_money_standalone_weapon_definitions()
	end
)
