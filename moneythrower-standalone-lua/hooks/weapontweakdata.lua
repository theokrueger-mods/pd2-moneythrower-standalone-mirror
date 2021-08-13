if not _G.MTS then
	dofile(ModPath .. "scripts/setup.lua")
end

function WeaponTweakData:_init_money_standalone()
	self.money_standalone = {
		categories = {
			"flamethrower"
		},
		has_description = false,
		damage_melee = 1.5,
		damage_melee_effect_mul = 1.75,
		sounds = {}
	}
	self.money_standalone.sounds.fire = "moneythrower_fire"
	self.money_standalone.sounds.stop_fire = "moneythrower_stop"
	self.money_standalone.sounds.dryfire = "flamethrower_dryfire"
	self.money_standalone.sounds.enter_steelsight = "secondary_steel_sight_enter"
	self.money_standalone.sounds.leave_steelsight = "secondary_steel_sight_exit"
	self.money_standalone.timers = {
		reload_not_empty = 8.5,
		reload_empty = 8.5,
		unequip = 0.85,
		equip = 0.85
	}
	self.money_standalone.name_id = "bm_w_money_standalone"
	self.money_standalone.desc_id = "bm_w_money_standalone_desc"
	self.money_standalone.description_id = "des_money_standalone"
	self.money_standalone.global_value = "mods_wpn_money_standalone"
	self.money_standalone.texture_bundle_folder = "mods"
	self.money_standalone.muzzleflash = "effects/payday2/particles/weapons/762_auto_fps"
	self.money_standalone.shell_ejection = "effects/payday2/particles/weapons/shells/shell_empty"
	self.money_standalone.flame_effect = "effects/payday2/particles/explosions/moneythrower"
	self.money_standalone.use_data = {
		selection_index = 1,
		align_place = "right_hand"
	}
	self.money_standalone.DAMAGE = 1
	self.money_standalone.rays = 12
	self.money_standalone.CLIP_AMMO_MAX = 400
	self.money_standalone.NR_CLIPS_MAX = 2
	self.money_standalone.AMMO_MAX = self.money_standalone.CLIP_AMMO_MAX * self.money_standalone.NR_CLIPS_MAX
	self.money_standalone.AMMO_PICKUP = self:_pickup_chance(self.money_standalone.CLIP_AMMO_MAX, 6)
	self.money_standalone.FIRE_MODE = "auto"
	self.money_standalone.fire_mode_data = {
		fire_rate = 0.03
	}
	self.money_standalone.auto = {
		fire_rate = 0.05
	}
	self.money_standalone.spread = {
		standing = 3,
		crouching = 3 * 0.4,
		steelsight = 3 * 0.4,
		moving_standing = 3,
		moving_crouching = 3,
		moving_steelsight = 3
	}
	self.money_standalone.kick = {
		standing = {
			0,
			0,
			0,
			0
		}
	}
	self.money_standalone.kick.crouching = self.money_standalone.kick.standing
	self.money_standalone.kick.steelsight = self.money_standalone.kick.standing
	self.money_standalone.crosshair = {
		standing = {},
		crouching = {},
		steelsight = {}
	}
	self.money_standalone.crosshair.standing.offset = 0.16
	self.money_standalone.crosshair.standing.moving_offset = 0.8
	self.money_standalone.crosshair.standing.kick_offset = 0.6
	self.money_standalone.crosshair.standing.hidden = true
	self.money_standalone.crosshair.crouching.offset = 0.08
	self.money_standalone.crosshair.crouching.moving_offset = 0.7
	self.money_standalone.crosshair.crouching.kick_offset = 0.4
	self.money_standalone.crosshair.crouching.hidden = true
	self.money_standalone.crosshair.steelsight.hidden = true
	self.money_standalone.crosshair.steelsight.offset = 0
	self.money_standalone.crosshair.steelsight.moving_offset = 0
	self.money_standalone.crosshair.steelsight.kick_offset = 0.1
	self.money_standalone.shake = {
		fire_multiplier = 0,
		fire_steelsight_multiplier = 0
	}
	self.money_standalone.autohit = {
		INIT_RATIO = 0.15,
		MAX_RATIO = 0.7,
		far_angle = 1.5,
		far_dis = 5000,
		MIN_RATIO = 0.6,
		near_angle = 3
	}
	self.money_standalone.aim_assist = {
		INIT_RATIO = 0.15,
		MAX_RATIO = 0.7,
		far_angle = 1.5,
		far_dis = 5000,
		MIN_RATIO = 0.6,
		near_angle = 3
	}
	self.money_standalone.animations = {}
	self.money_standalone.weapon_hold = "system"
	self.money_standalone.animations.equip_id = "equip_system"
	self.money_standalone.animations.recoil_steelsight = false
	self.money_standalone.fire_variant = "money"
	self.money_standalone.flame_max_range = 1300
	self.money_standalone.single_flame_effect_duration = 1
	self.money_standalone.panic_suppression_chance = 0.2
	self.money_standalone.fire_dot_data = {
		dot_trigger_chance = 0.75,
		dot_damage = 10,
		dot_length = 1,
		dot_trigger_max_distance = 1300,
		dot_tick_period = 0.5
	}
	self.money_standalone.stats = {
		zoom = 1,
		total_ammo_mod = 21,
		damage = 95,
		alert_size = 1,
		spread = 1,
		spread_moving = 6,
		recoil = 0,
		value = 1,
		extra_ammo = 51,
		reload = 11,
		suppression = 2,
		concealment = 21
	}
end

function WeaponTweakData:_init_data_money_standalone_crew()
	self.money_standalone_crew.categories = { "flamethrower" }
	self.money_standalone_crew.sounds.prefix = "moneythrower_standalone_npc"
	self.money_standalone_crew.sounds.fire = "moneythrower_standalone_npc_fire"
	self.money_standalone_crew.sounds.stop_fire = "moneythrower_standalone_npc_fire_stop"
	self.money_standalone_crew.use_data.selection_index = 1
	self.money_standalone_crew.DAMAGE = 1
	self.money_standalone_crew.muzzleflash = "effects/payday2/particles/weapons/9mm_auto"
	self.money_standalone_crew.muzzleflash_silenced = "effects/payday2/particles/weapons/9mm_auto_silence"
	self.money_standalone_crew.shell_ejection = "effects/payday2/particles/weapons/shells/empty"
	self.money_standalone_crew.CLIP_AMMO_MAX = 300
	self.money_standalone_crew.NR_CLIPS_MAX = 4
	self.money_standalone_crew.pull_magazine_during_reload = "large_metal"
	self.money_standalone_crew.hold = {
		"bullpup",
		"rifle"
	}
	self.money_standalone_crew.reload = "rifle"
	self.money_standalone_crew.auto.fire_rate = 0.05
	self.money_standalone_crew.fire_variant = "money"
	self.money_standalone_crew.hud_icon = "rifle"
	self.money_standalone_crew.alert_size = 2500
	self.money_standalone_crew.suppression = 0.45
	self.money_standalone_crew.FIRE_MODE = "auto"
end

Hooks:PostHook(WeaponTweakData, "init", "init_money_standalone", function(self)
	--WeaponTweakData:_init_data_money_standalone_crew()
end)

Hooks:PostHook(WeaponTweakData, "_init_new_weapons", "_init_new_weapons_money_standalone", function(self)
	WeaponTweakData:_init_money_standalone()
end)

Hooks:PostHook(WeaponTweakData, "_create_table_structure", "_create_table_structure_money_standalone", function(self)
	self.money_standalone_crew = {
		usage = "is_rifle",
		sounds = {},
		use_data = {},
		auto = {}
	}
end)
