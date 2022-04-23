if not _G.MTS then
        dofile(ModPath .. 'scripts/setup.lua')
end

Hooks:PostHook(
        WeaponFactoryTweakData,
        'init',
        'init_money_WFTD',
        function(self)
                self:_init_money()
        end
)

function WeaponFactoryTweakData:_init_money()
        self.parts.wpn_fps_fla_money_b_standard = {
                a_obj = "a_b",
                type = "barrel",
                name_id = "bm_wp_money_body_standard",
                unit = "units/pd2_dlc_pda8/weapons/wpn_fps_fla_money_pts/wpn_fps_fla_money_b_standard",
                stats = {
                        value = 1
                }
        }
        self.parts.wpn_fps_fla_money_body_standard = {
                a_obj = "a_body",
                type = "lower_reciever",
                name_id = "bm_wp_money_body_standard",
                unit = "units/pd2_dlc_pda8/weapons/wpn_fps_fla_money_pts/wpn_fps_fla_money_body_standard",
                stats = {
                        value = 1
                }
        }
        self.parts.wpn_fps_fla_money_body_upper = {
                a_obj = "a_body",
                type = "upper_reciever",
                name_id = "bm_wp_money_body_standard",
                unit = "units/pd2_dlc_pda8/weapons/wpn_fps_fla_money_pts/wpn_fps_fla_money_body_upper",
                stats = {
                        value = 1
                }
        }
        self.parts.wpn_fps_fla_money_dh_standard = {
                a_obj = "a_dh",
                type = "drag_handle",
                name_id = "bm_wp_money_body_standard",
                unit = "units/pd2_dlc_pda8/weapons/wpn_fps_fla_money_pts/wpn_fps_fla_money_dh_standard",
                stats = {
                        value = 1
                }
        }
        self.parts.wpn_fps_fla_money_m_standard = {
                a_obj = "a_m",
                type = "magazine",
                name_id = "bm_wp_money_body_standard",
                unit = "units/pd2_dlc_pda8/weapons/wpn_fps_fla_money_pts/wpn_fps_fla_money_m_standard",
                stats = {
                        value = 1
                }
        }
        self.parts.wpn_fps_fla_money_b_standard.third_unit = "units/pd2_dlc_pda8/weapons/wpn_fps_fla_money_pts/wpn_third_fla_money_b_standard"
        self.parts.wpn_fps_fla_money_body_standard.third_unit = "units/pd2_dlc_pda8/weapons/wpn_fps_fla_money_pts/wpn_third_fla_money_body_standard"
        self.parts.wpn_fps_fla_money_body_upper.third_unit = "units/pd2_dlc_pda8/weapons/wpn_fps_fla_money_pts/wpn_third_fla_money_body_upper"
        self.parts.wpn_fps_fla_money_dh_standard.third_unit = "units/pd2_dlc_pda8/weapons/wpn_fps_fla_money_pts/wpn_third_fla_money_dh_standard"
        self.parts.wpn_fps_fla_money_m_standard.third_unit = "units/pd2_dlc_pda8/weapons/wpn_fps_fla_money_pts/wpn_third_fla_money_m_standard"
        self.wpn_fps_fla_money = {
                unit = "units/pd2_dlc_pda8/weapons/wpn_fps_fla_money/wpn_fps_fla_money",
                animations = {
                        reload_not_empty = "reload",
                        reload = "reload"
                },
                default_blueprint = {
                        "wpn_fps_fla_money_b_standard",
                        "wpn_fps_fla_money_body_standard",
                        "wpn_fps_fla_money_body_upper",
                        "wpn_fps_fla_money_dh_standard",
                        "wpn_fps_fla_money_m_standard"
                },
                uses_parts = {
                        "wpn_fps_fla_money_b_standard",
                        "wpn_fps_fla_money_body_standard",
                        "wpn_fps_fla_money_body_upper",
                        "wpn_fps_fla_money_dh_standard",
                        "wpn_fps_fla_money_m_standard",
                        "wpn_fps_upg_fl_ass_smg_sho_peqbox",
                        "wpn_fps_upg_fl_ass_smg_sho_surefire",
                        "wpn_fps_upg_fl_ass_peq15",
                        "wpn_fps_upg_fl_ass_laser",
                        "wpn_fps_upg_fl_ass_utg"
                }
        }
        self.wpn_fps_fla_money_npc = deep_clone(self.wpn_fps_fla_money)
        self.wpn_fps_fla_money_npc.unit = "units/pd2_dlc_pda8/weapons/wpn_fps_fla_money/wpn_fps_fla_money_npc"
end
