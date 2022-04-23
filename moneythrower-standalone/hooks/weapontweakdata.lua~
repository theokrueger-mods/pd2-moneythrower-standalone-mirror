if not _G.MTS then
	dofile(ModPath .. 'scripts/setup.lua')
end

function WeaponTweakData:_init_data_money_crew()
	self.money_crew.categories = clone(self.money.categories)
	self.money_crew.sounds.prefix = 'moneythrower_npc'
	self.money_crew.sounds.fire = 'moneythrower_npc_fire'
	self.money_crew.sounds.stop_fire = 'moneythrower_npc_fire_stop'
	self.money_crew.use_data.selection_index = 1
	self.money_crew.DAMAGE = 1
	self.money_crew.muzzleflash = 'effects/payday2/particles/weapons/9mm_auto'
	self.money_crew.muzzleflash_silenced = 'effects/payday2/particles/weapons/9mm_auto_silence'
	self.money_crew.shell_ejection = 'effects/payday2/particles/weapons/shells/empty'
	self.money_crew.CLIP_AMMO_MAX = 300
	self.money_crew.NR_CLIPS_MAX = 4
	self.money_crew.pull_magazine_during_reload = 'large_metal'
	self.money_crew.hold = {
		'bullpup',
		'rifle'
	}
	self.money_crew.reload = 'rifle'
	self.money_crew.auto.fire_rate = 0.05
	self.money_crew.fire_variant = 'money'
	self.money_crew.hud_icon = 'rifle'
	self.money_crew.alert_size = 2500
	self.money_crew.suppression = 0.45
	self.money_crew.FIRE_MODE = 'auto'
end

Hooks:PostHook(
	WeaponTweakData,
	'init',
	'init_money_WTD',
	function(self, tweak_data)
		self:_init_data_money_crew()
	end
)

function WeaponTweakData:_init_money(weapon_data)
	self.money = {
		categories = {
			'flamethrower'
		},
		has_description = false,
		damage_melee = weapon_data.damage_melee_default,
		damage_melee_effect_mul = weapon_data.damage_melee_effect_multiplier_default,
		sounds = {}
	}
	self.money.sounds.fire = 'moneythrower_fire'
	self.money.sounds.stop_fire = 'moneythrower_stop'
	self.money.sounds.dryfire = 'flamethrower_dryfire'
	self.money.sounds.enter_steelsight = 'secondary_steel_sight_enter'
	self.money.sounds.leave_steelsight = 'secondary_steel_sight_exit'
	self.money.timers = {
		reload_not_empty = 8.5,
		reload_empty = 8.5,
		unequip = 0.85,
		equip = 0.85
	}
	self.money.name_id = 'bm_w_money'
	self.money.desc_id = 'bm_w_money_desc'
	self.money.description_id = 'des_money'
	self.money.global_value = 'pda8_wpn_money'
	self.money.texture_bundle_folder = 'pda8'
	self.money.muzzleflash = 'effects/payday2/particles/weapons/762_auto_fps'
	self.money.shell_ejection = 'effects/payday2/particles/weapons/shells/shell_empty'
	self.money.flame_effect = 'effects/payday2/particles/explosions/moneythrower'
	self.money.use_data = {
		selection_index = 1,
		align_place = 'right_hand'
	}
	self.money.DAMAGE = 1
	self.money.rays = 12
	self.money.CLIP_AMMO_MAX = 400
	self.money.NR_CLIPS_MAX = 2
	self.money.AMMO_MAX = self.money.CLIP_AMMO_MAX * self.money.NR_CLIPS_MAX
	self.money.AMMO_PICKUP = self:_pickup_chance(self.money.CLIP_AMMO_MAX, 6)
	self.money.FIRE_MODE = 'auto'
	self.money.fire_mode_data = {
		fire_rate = 0.03
	}
	self.money.auto = {
		fire_rate = 0.05
	}
	self.money.spread = {
		standing = self.r870.spread.standing,
		crouching = self.r870.spread.crouching,
		steelsight = self.r870.spread.steelsight,
		moving_standing = self.r870.spread.moving_standing,
		moving_crouching = self.r870.spread.moving_crouching,
		moving_steelsight = self.r870.spread.moving_steelsight
	}
	self.money.kick = {
		standing = {
			0,
			0,
			0,
			0
		}
	}
	self.money.kick.crouching = self.money.kick.standing
	self.money.kick.steelsight = self.money.kick.standing
	self.money.crosshair = {
		standing = {},
		crouching = {},
		steelsight = {}
	}
	self.money.crosshair.standing.offset = 0.16
	self.money.crosshair.standing.moving_offset = 0.8
	self.money.crosshair.standing.kick_offset = 0.6
	self.money.crosshair.standing.hidden = true
	self.money.crosshair.crouching.offset = 0.08
	self.money.crosshair.crouching.moving_offset = 0.7
	self.money.crosshair.crouching.kick_offset = 0.4
	self.money.crosshair.crouching.hidden = true
	self.money.crosshair.steelsight.hidden = true
	self.money.crosshair.steelsight.offset = 0
	self.money.crosshair.steelsight.moving_offset = 0
	self.money.crosshair.steelsight.kick_offset = 0.1
	self.money.shake = {
		fire_multiplier = 0,
		fire_steelsight_multiplier = 0
	}
	self.money.autohit = weapon_data.autohit_shotgun_default
	self.money.aim_assist = weapon_data.aim_assist_shotgun_default
	self.money.animations = {}
	self.money.weapon_hold = 'system'
	self.money.animations.equip_id = 'equip_system'
	self.money.animations.recoil_steelsight = false
	self.money.fire_variant = 'money'
	self.money.flame_max_range = 1300
	self.money.single_flame_effect_duration = 1
	self.money.panic_suppression_chance = 0.2
	self.money.fire_dot_data = {
		dot_trigger_chance = 0.75,
		dot_damage = 10,
		dot_length = 1,
		dot_trigger_max_distance = 1300,
		dot_tick_period = 0.5
	}
	self.money.stats = {
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

Hooks:PostHook(
	WeaponTweakData,
	'_init_new_weapons',
	'_init_new_weapons_money_standalone',
	function(self, weapon_data)
		self:_init_money(weapon_data)
	end
)

Hooks:PostHook(
	WeaponTweakData,
	'_create_table_structure',
	'_create_table_structure_money_standalone',
	function(self)
		self.money_crew = {
			usage = 'is_rifle',
			sounds = {},
			use_data = {},
			auto = {}
		}
	end
)
