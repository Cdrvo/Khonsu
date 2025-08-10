-- Common jokers

SMODS.Joker({
	key = "egyptian_cat",
	atlas = "wip",
	pos = { x = 0, y = 0 },
	rarity = 1,
	cost = 3,
	config = {
		extra = {
			mult = 4,
			chips = 4,
		},
	},
	loc_vars = function(self, info_queue, card)
		local khn = card.ability.extra
		return {
			vars = { khn.chips, khn.mult },
		}
	end,
	calculate = function(self, card, context)
		local khn = card.ability.extra
		if context.joker_main then
			return {
				chips = khn.chips,
				mult = khn.mult,
			}
		end
	end,
})

SMODS.Joker({
	key = "eye_of_ra",
	atlas = "wip",
	pos = { x = 0, y = 0 },
	rarity = 1,
	cost = 4,
	config = {
		extra = {
			dollars = 3,
		},
	},
	loc_vars = function(self, info_queue, card)
		local khn = card.ability.extra
		return {
			vars = { khn.chips, khn.mult },
		}
	end,
	calc_dollar_bonus = function(self, card)
		local khn = card.ability.extra
		return khn.dollars
	end,
})

-- Uncommon jokers

SMODS.Joker({
	key = "pyramids",
	atlas = "wip",
	pos = { x = 1, y = 0 },
	rarity = 2,
	cost = 5,
	config = {
		extra = {
			mult = 0,
			chips = 0,
			multg = 2,
			chipg = 3,
		},
	},
	loc_vars = function(self, info_queue, card)
		local khn = card.ability.extra
		return {
			vars = { khn.chips, khn.mult, khn.chipg, khn.multg },
		}
	end,
	calculate = function(self, card, context)
		local khn = card.ability.extra
		if context.before and not context.blueprint then
			local up = 0
			for _, v in pairs(context.scoring_hand) do
				if v:get_id() == 3 or v:get_id() == 4 then
					up = up + 1
				end
			end
			for i = 1, up do
				khn.mult = khn.mult + khn.multg
				khn.chips = khn.chips + khn.chipg
				return {
					message = localize("k_upgrade_ex"),
				}
			end
		end
		if context.joker_main then
			return {
				chips = khn.chips,
				mult = khn.mult,
				Khonsu.message("upgrade"),
			}
		end
	end,
})

SMODS.Joker({
	key = "sphinx",
	atlas = "wip",
	pos = { x = 1, y = 0 },
	rarity = 2,
	cost = 4,
	config = {
		extra = {},
	},
	loc_vars = function(self, info_queue, card)
		local khn = card.ability.extra
		return {
			vars = {},
		}
	end,
	calculate = function(self, card, context)
		local khn = card.ability.extra
		if context.final_scoring_step then
			for k, v in pairs(context.scoring_hand) do
				if v:get_id() == 2 then
					G.E_MANAGER:add_event(Event({
						trigger = "before",
						delay = 0.2,
						func = function()
							v:flip()
							return true
						end,
					}))
					G.E_MANAGER:add_event(Event({
						trigger = "after",
						delay = 0.3,
						func = function()
							v:set_ability("m_stone")
							delay(0.3) --does this do anything? i think setting ability already flips it :-:
							v:flip()
							return true
						end,
					}))
				end
			end
		end
	end,
})

SMODS.Joker({
	key = "crown",
	atlas = "wip",
	pos = { x = 1, y = 0 },
	rarity = 2,
	cost = 4,
	config = {
		extra = {},
	},
	loc_vars = function(self, info_queue, card)
		local khn = card.ability.extra
		return {
			vars = {},
		}
	end,
	calculate = function(self, card, context)
		local khn = card.ability.extra
		if context.final_scoring_step then
			for k, v in pairs(context.scoring_hand) do
				if v:get_id() == 13 then
					G.E_MANAGER:add_event(Event({
						trigger = "before",
						delay = 0.2,
						func = function()
							v:flip()
							return true
						end,
					}))
					G.E_MANAGER:add_event(Event({
						trigger = "after",
						delay = 0.3,
						func = function()
							v:set_ability("m_wild")
							delay(0.3) --does this do anything? i think setting ability already flips it :-:
							v:flip()
							return true
						end,
					}))
				end
			end
		end
	end,
})

SMODS.Joker({
	key = "eye_of_horus",
	atlas = "wip",
	pos = { x = 1, y = 0 },
	rarity = 2,
	cost = 4,
	config = {
		extra = {
			dollars = 1,
			dollarsg = 1,
			odds = 3,
		},
	},
	loc_vars = function(self, info_queue, card)
		local khn = card.ability.extra
		return {
			vars = { khn.dollars, khn.dollarsg, (G.GAME.probabilities.normal or 1), khn.odds },
		}
	end,
	calculate = function(self, card, context)
		local khn = card.ability.extra
		if context.end_of_round and context.main_eval then
			if pseudorandom("eye_of_horus") < G.GAME.probabilities.normal / khn.odds and G.GAME.blind.boss then
				khn.dollars = 1
				card_eval_status_text(card, "extra", nil, nil, nil, { message = localize("k_reset"), colour = G.C.RED })
			else
				khn.dollars = khn.dollars + khn.dollarsg
				card_eval_status_text(
					card,
					"extra",
					nil,
					nil,
					nil,
					{ message = localize("k_upgrade_ex"), colour = G.C.ATTENTION }
				)
			end
		end
	end,
	calc_dollar_bonus = function(self, card)
		local khn = card.ability.extra
		return khn.dollars
	end,
})

SMODS.Joker({
	key = "mummy",
	atlas = "wip",
	pos = { x = 1, y = 0 },
	rarity = 2,
	cost = 5,
	config = {
		extra = {},
	},
	loc_vars = function(self, info_queue, card)
		local khn = card.ability.extra
		return {
			vars = {},
		}
	end,
	calculate = function(self, card, context)
		local khn = card.ability.extra
		if context.final_scoring_step then
			for k, v in pairs(context.scoring_hand) do
				if v:is_face() then
					G.E_MANAGER:add_event(Event({
						trigger = "before",
						delay = 0.2,
						func = function()
							v:flip()
							return true
						end,
					}))
					G.E_MANAGER:add_event(Event({
						trigger = "after",
						delay = 1,
						func = function()
							local d = pseudorandom_element({ 1, 2, 3 }, pseudoseed("khn_mummy"))
							if d == 1 then
								v:set_ability("m_lucky")
								v:flip()
							elseif d == 2 then
								v:set_edition("e_foil")
								v:flip()
							elseif d == 3 then
								v:set_seal("Red")
								v:flip()
							end
							return true
						end,
					}))
				end
			end
		end
	end,
})

SMODS.Joker({
	key = "golden_sarcophagus",
	atlas = "wip",
	pos = { x = 1, y = 0 },
	rarity = 2,
	cost = 5,
	config = {
		extra = {},
	},
	loc_vars = function(self, info_queue, card)
		local khn = card.ability.extra
		return {
			vars = {},
		}
	end,
	calculate = function(self, card, context)
		local khn = card.ability.extra
		if context.final_scoring_step then
			for k, v in pairs(context.scoring_hand) do
				if v:is_face() then
					G.E_MANAGER:add_event(Event({
						trigger = "before",
						delay = 0.2,
						func = function()
							v:flip()
							return true
						end,
					}))
					G.E_MANAGER:add_event(Event({
						trigger = "after",
						delay = 1,
						func = function()
							local d = pseudorandom_element({ 1, 2, 3 }, pseudoseed("khn_mummy"))
							if d == 1 then
								v:set_ability("m_gold")
								v:flip()
							elseif d == 2 then
								v:set_edition("e_holo")
								v:flip()
							elseif d == 3 then
								v:set_seal("Gold")
								v:flip()
							end
							return true
						end,
					}))
				end
			end
		end
	end,
})

SMODS.Joker({
	key = "gold_mask",
	atlas = "wip",
	pos = { x = 1, y = 0 },
	rarity = 2,
	cost = 6,
	config = {
		extra = {},
	},
	loc_vars = function(self, info_queue, card)
		local khn = card.ability.extra
		return {
			vars = {},
		}
	end,
	calculate = function(self, card, context)
		local khn = card.ability.extra
		if context.discard and not khn.trigger_not then
			if context.other_card:is_face() then
				local v = context.other_card
				G.E_MANAGER:add_event(Event({
					trigger = "before",
					delay = 0.2,
					func = function()
						v:juice_up()
						v:set_ability("m_gold")
						return true
					end,
				}))
			end
		end
	end,
})

SMODS.Joker({
	key = "hatshepsut",
	atlas = "wip",
	pos = { x = 1, y = 0 },
	rarity = 2,
	cost = 5,
	config = {
		extra = {
            rep = 2
        },
	},
	loc_vars = function(self, info_queue, card)
		local khn = card.ability.extra
		return {
			vars = {khn.rep},
		}
	end,
	calculate = function(self, card, context)
		local khn = card.ability.extra
		if context.repetition and context.other_card:get_id() == 12 then
            return{
                repetitions = khn.rep
            }
        end
	end,
})
-- Rare jokers

SMODS.Joker({
	key = "golden_scarab",
	atlas = "wip",
	pos = { x = 2, y = 0 },
	rarity = 3,
	cost = 6,
	config = {
		extra = {
			dollars = 1,
		},
	},
	loc_vars = function(self, info_queue, card)
		local khn = card.ability.extra
		return {
			vars = { khn.dollars },
		}
	end,
	calculate = function(self, card, context)
		local khn = card.ability.extra
		if context.discard then
			return {
				dollars = khn.dollars,
			}
		end
	end,
})

SMODS.Joker({
	key = "pharoah",
	atlas = "wip",
	pos = { x = 2, y = 0 },
	rarity = 3,
	cost = 6,
	config = {
		extra = {
			perma_c = 15,
		},
	},
	loc_vars = function(self, info_queue, card)
		local khn = card.ability.extra
		return {
			vars = { khn.perma_c },
		}
	end,
	calculate = function(self, card, context)
		local khn = card.ability.extra
		if context.individual and context.cardarea == G.play then
			if context.other_card:get_id() == 13 then
				context.other_card.ability.perma_bonus = context.other_card.ability.perma_bonus or 0
				context.other_card.ability.perma_bonus = context.other_card.ability.perma_bonus + khn.perma_c

				return {
					extra = { message = localize("k_upgrade_ex"), colour = G.C.CHIPS },
					card = card,
				}
			end
		end
	end,
})

-- Legendary jokers
