MarketMaxAmount = 2000
MarketMaxAmountStackable = 64000
MarketMaxPrice = 999999999
MarketMaxOffers = 100

MarketAction = {
    Buy = 0,
    Sell = 1
}

MarketRequest = {
    MyHistory = 1,
    MyOffers = 2,
    BrowseItem = 3,
    OldMyOffers = 0xFFFE,
    OldMyHistory = 0xFFFF
}

MarketOfferState = {
    Active = 0,
    Cancelled = 1,
    Expired = 2,
    Accepted = 3,
    AcceptedEx = 255
}

MarketOfferStateString = {
    [0] = 'active',
    [1] = 'cancelled',
    [2] = 'expired',
    [3] = 'accepted',
    [255] = 'acceptedEx'
}

MarketCategory = {
    All = 0,
    Armors = 1,
    Amulets = 2,
    Boots = 3,
    Containers = 4,
    Decoration = 5,
    Food = 6,
    HelmetsHats = 7,
    Legs = 8,
    Others = 9,
    Potions = 10,
    Rings = 11,
    Runes = 12,
    Shields = 13,
    Tools = 14,
    Valuables = 15,
    Ammunition = 16,
    Axes = 17,
    Clubs = 18,
    DistanceWeapons = 19,
    Swords = 20,
    WandsRods = 21,
    PremiumScrolls = 22,
    TibiaCoins = 23,
    MetaWeapons = 255
}

MarketCategory.First = MarketCategory.Armors
MarketCategory.Last = MarketCategory.TibiaCoins

MarketCategoryWeapons = {
    [MarketCategory.Ammunition] = {
        slots = {255}
    },
    [MarketCategory.Axes] = {
        slots = {255, InventorySlotOther, InventorySlotLeft}
    },
    [MarketCategory.Clubs] = {
        slots = {255, InventorySlotOther, InventorySlotLeft}
    },
    [MarketCategory.DistanceWeapons] = {
        slots = {255, InventorySlotOther, InventorySlotLeft}
    },
    [MarketCategory.Swords] = {
        slots = {255, InventorySlotOther, InventorySlotLeft}
    },
    [MarketCategory.WandsRods] = {
        slots = {255, InventorySlotOther, InventorySlotLeft}
    }
}

MarketCategoryStrings = {
    [0] = 'All',
    [1] = 'Armors',
    [2] = 'Amulets',
    [3] = 'Boots',
    [4] = 'Containers',
    [5] = 'Decoration',
    [6] = 'Food',
    [7] = 'Helmets and Hats',
    [8] = 'Legs',
    [9] = 'Others',
    [10] = 'Potions',
    [11] = 'Rings',
    [12] = 'Runes',
    [13] = 'Shields',
    [14] = 'Tools',
    [15] = 'Valuables',
    [16] = 'Ammunition',
    [17] = 'Axes',
    [18] = 'Clubs',
    [19] = 'Distance Weapons',
    [20] = 'Swords',
    [21] = 'Wands and Rods',
    [22] = 'Premium Scrolls',
    [23] = 'Tibia Coins',
    [255] = 'Weapons'
}

function getMarketCategoryName(id)
    if table.haskey(MarketCategoryStrings, id) then
        return MarketCategoryStrings[id]
    end
end

function getMarketCategoryId(name)
    local id = table.find(MarketCategoryStrings, name)
    if id then
        return id
    end
end

MarketItemDescription = {
    Armor = 1,
    Attack = 2,
    Container = 3,
    Defense = 4,
    General = 5,
    DecayTime = 6,
    Combat = 7,
    MinLevel = 8,
    MinMagicLevel = 9,
    Vocation = 10,
    Rune = 11,
    Ability = 12,
    Charges = 13,
    WeaponName = 14,
    Weight = 15,
    Augment = 16,
    ImbuingSlots = 17,
    MagicShield = 18,
    Cleave = 19,
    Reflection = 20,
    Perfect = 21,
    UpgradeClassification = 22,
    CurrentTier = 23
}

MarketItemDescription.First = MarketItemDescription.Armor
MarketItemDescription.Last = MarketItemDescription.CurrentTier

MarketItemDescriptionStrings = {
    [1] = 'Armor',
    [2] = 'Attack',
    [3] = 'Container',
    [4] = 'Defense',
    [5] = 'Description',
    [6] = 'Use Time',
    [7] = 'Combat',
    [8] = 'Min Level',
    [9] = 'Min Magic Level',
    [10] = 'Vocation',
    [11] = 'Rune',
    [12] = 'Ability',
    [13] = 'Charges',
    [14] = 'Weapon Type',
    [15] = 'Weight',
    [16] = 'Augment',
    [17] = 'Imbuing Slots',
    [18] = 'Magic Shield',
    [19] = 'Cleave',
    [20] = 'Reflection',
    [21] = 'Perfect Show',
    [22] = 'Upgrade Classification',
    [23] = 'Tier',
    [24] = 'test1', -- @note: improve name
    [25] = 'test2', -- @note: improve name
    [26] = 'test3', -- @note: improve name
}

function getMarketDescriptionName(id)
    if table.haskey(MarketItemDescriptionStrings, id) then
        return MarketItemDescriptionStrings[id]
    end
end

function getMarketDescriptionId(name)
    local id = table.find(MarketItemDescriptionStrings, name)
    if id then
        return id
    end
end

MarketSlotFilters = {
    [InventorySlotOther] = 'Two-Handed',
    [InventorySlotLeft] = 'One-Handed',
    [255] = 'Any'
}

MarketFilters = {
    Vocation = 1,
    Level = 2,
    Depot = 3,
    SearchAll = 4
}

MarketFilters.First = MarketFilters.Vocation
MarketFilters.Last = MarketFilters.Depot

function getMarketSlotFilterId(name)
    local id = table.find(MarketSlotFilters, name)
    if id then
        return id
    end
end

function getMarketSlotFilterName(id)
    if table.haskey(MarketSlotFilters, id) then
        return MarketSlotFilters[id]
    end
end
