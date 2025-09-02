return {
	descriptions = {
		Back = {},
		Blind = {},
		Edition = {},
		Enhanced = {},
		Joker = {
			-- Common
			j_khn_egyptian_cat = {
				name = "Egyptian Cat",
				text = {
					"{C:chips}+#1#{} Chips and",
					"{C:mult}+#2#{} Mult",
				},
			},
			j_khn_eye_of_ra = {
				name = "Eye of Ra",
				text = {
					"Earn an additional",
					"{C:money}#1#{} at the",
					"end of each round",
				},
			},
			-- Uncommon
			j_khn_pyramids = {
				name = "Great Pyramids of Giza",
				text = {
					"Gains {C:mult}+#4${} Mult and",
					"{C:chips}+#3#{} Chips for each",
					"played {C:attention}3{} or {C:attention}4{}",
					"{C:inactive}(Currently {C:mult}+#2#{C:inactive} Mult and {C:chips}+#1#{C:inactive} Chips)",
				},
			},
			j_khn_eye_of_horus = {
				name = "Eye of Horus",
				text = {
					"Earn an additional {C:money}$#1#{} at the",
					"end of each round. Increases by {C:money}+#2#{}",
					"after each round.",
					"{C:green}#3# in #4#{} Chance to {C:red}Reset{}",
					"after each ante",
				},
			},
			j_khn_sphinx = {
				name = "Great Sphinx",
				text = {
					"Each scored {C:attention}2{}",
					"turns into {C:attention}Stone{}",
				},
			},
			j_khn_crown = {
				name = "Crown of Egypt",
				text = {
					"Each scored {C:attention}King{}",
					"becomes a {C:attention}Wild{} card"
				},
			},
            j_khn_mummy = {
                name = "Mummy",
                text = {"Each scored {C:attention}Face{} Card",
                "randomly gains either {C:attention}Lucky",
                "enhancement, {C:dark_edition}Foil{} edition",
                "or {C:red}Red{} Seal"}
            },
            j_khn_golden_sarcophagus = {
                name = "Golden Sarcophagus",
                text = {"Each scored {C:attention}Face{} Card",
                "randomly gains either {C:attention}Gold",
                "enhancement, {C:dark_edition}Holographic{} edition",
                "or {C:money}Gold{} Seal"}
            },
            j_khn_hatshepsut = {
                name = "Hatshepsut",
                text = {
                    "Retrigger each scored",
                    "{C:attention}Queen{} {C:money}2{} times"
                }
            },
            j_khn_gold_mask = {
                name = "Golden mask of Tutankhamun",
                text = {
                    "{C:red}Discarded{} face cards",
                    "becomes {C:money}Gold{}"
                }
            },

			j_khn_falcon = {
                name = "Canopic Jar with Falcon Head",
                text = {
                    "for each scored {C:spades}Spade{}",
					"gain {C:money}+1{} sell value.",
					"{C:red}self-destruct{} if exceeds 20"
                }
            },

			j_khn_monkey = {
                name = "Canopic Jar with Monkey Head",
                text = {
                    "for each scored {C:hearts}Heart{}",
					"gain {C:money}+1{} sell value.",
					"{C:red}self-destruct{} if exceeds 20"
                }
            },

			j_khn_human = {
                name = "Canopic Jar with Human Head",
                text = {
                    "for each scored {C:diamonds}Diamond{}",
					"gain {C:money}+1{} sell value.",
					"{C:red}self-destruct{} if exceeds 20"
                }
            },

			j_khn_jackal = {
                name = "Canopic Jar with Jackal Head",
                text = {
                    "for each scored {C:clubs}Club{}",
					"gain {C:money}+1{} sell value.",
					"{C:red}self-destruct{} if exceeds 20"
                }
            },

			j_khn_anubis_judgement = {
                name = "Judgement of Anubis",
                text = {
                    "at the end of the {C:attention}Ante{}",
					"if you havent skipped any blinds",
					"add {C:attention}4{} {C:attention}Aces{}",
					"with random suits to",
					"your deck.",
					"{C:red}destroy{} 4 card otherwise"
                }
            },

			j_khn_maat_scale = {
                name = "Scale of Maat",
                text = {
                    "at the end of the {C:attention}Ante{}",
					"if you havent skipped any blinds",
					"add {C:attention}4{} {C:attention}Kings{}",
					"with random suits to",
					"your deck.",
					"{C:red}destroy{} 4 card otherwise"
                }
            },

			j_khn_feather_truth = {
                name = "Feather of Truth",
                text = {
                    "at the end of the {C:attention}Ante{}",
					"if you havent skipped any blinds",
					"add {C:attention}4{} {C:attention}QUeens{}",
					"with random suits to",
					"your deck.",
					"{C:red}destroy{} 4 card otherwise"
                }
            },

			j_khn_ammit = {
                name = "Ammit, Beast of Afterlife",
                text = {
                    "at the end of the {C:attention}Ante{}",
					"if you havent skipped any blinds",
					"turn {C:attention}4{} random cards",
					"in your deck to {C:attention}Stone{}"
                }
            },

			-- Rare
			j_khn_golden_scarab = {
				name = "Golden Scarab",
				text = {
					"Each {C:red}Discarded{} card",
					"gives {C:money}+#1#{}",
				},
			},
            j_khn_pharoah = {
                name = "Pharoah",
                text = {
                    "Scored {C:attention}Kings{} permanently",
                    "gains {C:chips}+#1#{} Chips"
                }
            },
			j_khn_ra = {
                name = "Ra, God of Sun ",
                text = {
                    "Scored {C:attention}Ace{} permanently",
                    "gains {C:chips}+#1#{} Chips"
                }
            },
			j_khn_isis = {
                name = "Isis, God of Motherhood ",
                text = {
                    "Scored {C:attention}Queen{} permanently",
                    "gains {C:chips}+#1#{} Chips"
                }
            },
			j_khn_horus = {
                name = "Horus, God of People ",
                text = {
                    "Each scored {C:attention}Jack{}",
					"becomes a {C:attention}QUeen{}",
					"each scored {C:attention}10{}",
					"becomes a {C:attention}Jack{}"
                }
            },
			j_khn_osiris = {
                name = "Osiris, King of Gods",
                text = {
                    "At the {C:attention}end of a round",
					"add a completely random {C:attention}King{}",
					"to your deck"
                }
            },
			j_khn_thoth = {
                name = "Osiris, King of Knowledge",
                text = {
                    "{C:attention}+1{} Level",
					"to each played",
					"poker hand"
                }
            },
			j_khn_bastet = {
                name = "Bastet, Cat Goddess",
                text = {
                    "When a {C:attention}Boss{}",
					"blind is defeated,",
					"add an {C:attention Egyptian Cat{}",
					"to your jokers"
                }
            },
			j_khn_sobek = {
                name = "Sobek, Crocodile God of Nile River",
                text = {
                    "When a {C:attention}Straight{}",
					"is played, straight gains",
					"{C:green}+2{} levels"
                }
            },
			j_khn_anubis = {
                name = "Anubis, God of Death",
                text = {
                    "{C:red}Discarded{} 10s, 9s,","8s, 7s, 6s and 5s", "becomes {C:attention}Glass{}"
                }
            },
			j_khn_set = {
                name = "Set, God of Chaos",
                text = {
                    "{C:red}Discarded{} cards",
					"are {C:red}destroyed{}"
                }
            },
		},
		Other = {},
		Planet = {},
		Spectral = {},
		Stake = {},
		Tag = {},
		Tarot = {},
		Voucher = {},
	},
	misc = {
		achievement_descriptions = {},
		achievement_names = {},
		blind_states = {},
		challenge_names = {},
		collabs = {},
		dictionary = {},
		high_scores = {},
		labels = {},
		poker_hand_descriptions = {},
		poker_hands = {},
		quips = {},
		ranks = {},
		suits_plural = {},
		suits_singular = {},
		tutorial = {},
		v_dictionary = {},
		v_text = {},
	},
}
