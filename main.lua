Khonsu = SMODS.current_mod
Khonsu.config = SMODS.current_mod.config

to_big = to_big or function(x)
	return x
end

Khonsu.files = {
    atlas = true,
    funcs = true,
    jokers = true
}

for k, v in pairs(Khonsu.files) do
    if v then SMODS.load_file("items/"..k..".lua")() end
end