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
    loc_vars = function(self,info_queue,card)
        local khn = card.ability.extra
        return{
            vars = {khn.chips,khn.mult}
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
            chipg = 3
		},
	},
    loc_vars = function(self,info_queue,card)
        local khn = card.ability.extra
        return{
            vars = {khn.chips,khn.mult,khn.chipg,khn.multg}
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
                return{
                    message = localize("k_upgrade_ex")
                }
            end
        end
        if context.joker_main then
            return{
                chips = khn.chips,
                mult = khn.mult,
                Khonsu.message("upgrade")
            }
        end
	end,
})

-- Rare jokers

-- Legendary jokers
