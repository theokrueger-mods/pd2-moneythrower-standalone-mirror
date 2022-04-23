if not _G.MTS then
        dofile(ModPath .. 'scripts/setup.lua')
end

function UpgradesTweakData:_money_weapon_definitions()
        self.definitions.money = {
                dlc = "pda8",
                factory_id = "wpn_fps_fla_money",
                weapon_id = "money",
                category = "weapon"
        }
        self.level_tree[1] = self.level_tree[1] or {upgrades = {}, name_id = 'weapons'}
        table.insert(self.level_tree[1].upgrades, 'money')
end

Hooks:PostHook(
        UpgradesTweakData,
        '_system_weapon_definitions',
        '_money_weapon_definitions',
        function(self)
                self:_money_weapon_definitions()
        end
)
