---@class EntityTear : Entity
---@field BaseDamage number @const
---@field BaseScale number @const
---@field Bounced boolean
---@field CanTriggerStreakEnd boolean
---@field ContinueVelocity Vector
---@field FallingAcceleration number
---@field FallingSpeed number
---@field Height number
---@field HomingFriction number
---@field KnockbackMultiplier number
---@field ParentOffset Vector
---@field PosDisplacement Vector @const
---@field Rotation number
---@field Scale number
---@field StickDiff Vector
---@field StickTarget Entity
---@field StickTimer integer
---@field TearFlags TearFlags
---@field TearIndex integer @const
---@field WaitFrames integer
local EntityTear = {}

---@param Flags TearFlags
function EntityTear:AddTearFlags(Flags)
end

---@param NewVariant integer
function EntityTear:ChangeVariant(NewVariant)
end

---@param Flags TearFlags
function EntityTear:ClearTearFlags(Flags)
end

---Returns the intensity value of the tear as a result of the Dead Eye collectible. It is between 0 and 1.
---@return number
function EntityTear:GetDeadEyeIntensity()
end

---@param Flags TearFlags
---@return boolean
function EntityTear:HasTearFlags(Flags)
end

---Copies the tear and applies a black and white effect to it. This effect is the same one used by the Multidimensional Baby familiar.
---@return EntityTear newTear The newly created tear.
function EntityTear:MakeMultidimensionalCopy()
end

function EntityTear:ResetSpriteScale()
end

---@param Intensity number
function EntityTear:SetDeadEyeIntensity(Intensity)
end

---@param Multiplier number
function EntityTear:SetKnockbackMultiplier(Multiplier)
end

---@param Offset Vector
function EntityTear:SetParentOffset(Offset)
end

---@param Value integer
function EntityTear:SetWaitFrames(Value)
end
