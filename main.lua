local nomorebulbs = RegisterMod("No More Bulbs", 1)

function nomorebulbs:onBulbSpawn(entity, variant, subtype, _, _, _, sneed)
  if entity == 61 and variant == 5 then
    local poof = {1000, 15, 0, sneed}
    return poof
  end
end

nomorebulbs:AddCallback(ModCallbacks.MC_PRE_ENTITY_SPAWN, nomorebulbs.onBulbSpawn, EntityType.ENTITY_SUCKER)
