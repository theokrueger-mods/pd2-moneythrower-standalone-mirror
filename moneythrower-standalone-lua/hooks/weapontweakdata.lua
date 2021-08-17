local path = ModPath
local a = {
	{'texture', 'guis/dlcs/pda8/textures/pd2/blackmarket/icons/weapons/money_standalone', path .. 'assets/icon.texture'},
	{'texture', 'guis/dlcs/pda8/textures/pd2/blackmarket/icons/weapons/outline/money_standalone', path .. 'assets/icon_outline.texture'}
}
for _, c in pairs(a) do
	BLTAssetManager:CreateEntry(Idstring(c[2]), Idstring(c[1]), c[3], nil)
end

function WeaponTweakData:_init_data_money_standalone_crew()
	self.money_standalone_crew = {}
	local money_crew = self.money_crew
	for k, v in pairs(money_crew) do
		self.money_standalone_crew[k] = v
	end
end

Hooks:PostHook(
	WeaponTweakData,
	'init',
	'init_money_standalone_WTD',
	function(self, tweak_data)
		self:_init_data_money_standalone_crew()
	end
)

function WeaponTweakData:_init_money_standalone(weapon_data)
	self.money_standalone = {}
	local money = self.money
	for k, v in pairs(money) do
		self.money_standalone[k] = v
	end
	self.money_standalone.unlock_func = nil
	self.money_standalone.global_value = 'pda8'
end

Hooks:PostHook(
	WeaponTweakData,
	'_init_new_weapons',
	'_init_new_weapons_money_standalone',
	function(self, weapon_data)
		self:_init_money_standalone(weapon_data)
	end
)

Hooks:PostHook(
	WeaponTweakData,
	'_create_table_structure',
	'_create_table_structure_money_standalone',
	function(self)
		self.money_standalone_crew = self.money_crew
	end
)
