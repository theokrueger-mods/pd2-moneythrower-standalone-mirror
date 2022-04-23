if not _G.MTS then
        dofile(ModPath .. 'scripts/setup.lua')
end

Hooks:PreHook(
        EventJobsTweakData,
        '_init_pda8_challenges',
        '_init_pda8_challenges_money',
        function(self, tweak_data)
                table.insert(
                        self.challenges,
                        {
                                reward_id = 'menu_pda8_1_reward',
                                name_id = 'menu_pda8_1',
                                is_active_func = 'is_event_active_money',
                                desc_id = 'menu_pda8_1_desc',
                                show_progress = true,
                                locked_id = 'bm_menu_locked_pda8_1',
                                id = 'pda8_1',
                                objectives = {
                                        self:_collective(
                                                'pda8_collective',
                                                2,
                                                {
                                                        name_id = 'menu_pda8_1_prog_obj',
                                                        desc_id = 'menu_pda8_1_prog_obj_desc'
                                                }
                                        )
                                },
                                rewards = {
                                        {
                                                item_entry = 'money',
                                                type_items = 'upgrades'
                                        },
                                        {
                                                item_entry = 'cash60',
                                                type_items = 'offshore'
                                        }
                                }
                        }
                )
        end
)
