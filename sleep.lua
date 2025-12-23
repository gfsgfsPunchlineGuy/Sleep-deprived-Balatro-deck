--- STEAMODDED HEADER
--- MOD_NAME: SLD: Sleep deprived
--- MOD_ID: sleep_deck
--- PREFIX: sleep
--- MOD_AUTHOR: [Gfsgfs]
--- MOD_DESCRIPTION: The gang of g**ners are all here to play balatro with you ! Maker: Gfsgfs
--- LOADER_VERSION_GEQ: 1.0.0
--- VERSION: 2.0.0
--- BADGE_COLOR: FC03DF

local atlas_key = 'sleep_atlas' -- Format: PREFIX_KEY
-- See end of file for notes
local atlas_path = 'sleep_lc.png' -- Filename for the image in the asset folder
local atlas_path_hc = 'sleep_hc.png' -- Filename for the high-contrast version of the texture, if existing

local suits = {'hearts', 'clubs', 'diamonds', 'spades'} -- Which suits to replace
local ranks = {'2', '3', '4', '5', '6', '7', '8', '9', '10', 'Jack', 'Queen', "King", "Ace",}  -- Which ranks to replace

local description = 'Sleep deprived' -- English-language description, also used as default

-----------------------------------------------------------
-- You should only need to change things above this line --
-----------------------------------------------------------

SMODS.Atlas{  
    key = atlas_key..'_lc',
    px = 71,
    py = 95,
    path = atlas_path,
    prefix_config = {key = false}, -- See end of file for notes
}

if atlas_path_hc then
    SMODS.Atlas{  
        key = atlas_key..'_hc',
        px = 71,
        py = 95,
        path = atlas_path_hc,
        prefix_config = {key = false}, -- See end of file for notes
    }
end

for _, suit in ipairs(suits) do
    SMODS.DeckSkin{
        key = suit.."_skin",
        suit = suit:gsub("^%l", string.upper),
        ranks = ranks,
        lc_atlas = atlas_key..'_lc',
        hc_atlas = (atlas_path_hc and atlas_key..'_hc') or atlas_key..'_lc',
        loc_txt = {
            ['en-us'] = description
        },
        posStyle = 'deck'
    }
end

SMODS.Atlas{  
    key = 'sleep_modicon',
    px = 32,
    py = 32,
    path = 'sleep_icon.png',
    prefix_config = {key = false},
}


--big poo my beloved <3
