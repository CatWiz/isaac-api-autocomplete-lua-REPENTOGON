---@class WeightedOutcomePicker
local WeightedOutcomePicker = {}

---@return WeightedOutcomePicker
_G.WeightedOutcomePicker = function() end 

---Adds an outcome to the outcome selector with the specified `weight`.
---The internal weight is still an integer calculated like this: `fWeight` * `scaleFactor`, where ScaleFactor is the maximum weight (equivalent to 1.0).
---
---**Example Code**
---```lua
---local picker = WeightedOutcomePicker()
---
---picker:AddOutcomeFloat(1, 1.0) -- ~45%
---picker:AddOutcomeFloat(2, 1.0) -- ~45%
---picker:AddOutcomeFloat(3, 0.2) -- ~9%
---```
---<hr>
---@param value integer
---@param weight number
---@param scaleFactor number? @default: 100
function WeightedOutcomePicker:AddOutcomeFloat(value, weight, scaleFactor) end

---Adds an outcome to the outcome selector with the specified `weight`.
---
---**Example Code**
---```lua
---local picker = WeightedOutcomePicker()
---
---picker:AddOutcomeWeight(1, 65) -- 65%
---picker:AddOutcomeWeight(2, 30) -- 30%
---picker:AddOutcomeWeight(3, 5) -- 5%
---```
---@param value integer 
---@param weight integer 
function WeightedOutcomePicker:AddOutcomeWeight(value, weight) end

---Clears all outcomes from the outcome picker.
function WeightedOutcomePicker:ClearOutcomes() end

---Returns the number of outcomes in the outcome picker.
---@return integer
function WeightedOutcomePicker:GetNumOutcomes() end

---Returns a table that is a list of all outcomes in the outcome picker.
---
---The table is structured as follows:
--- - `Value` - value of the outcome.
--- - `Weight` - weight of the outcome.
---@return { Value: integer, Weight: integer }[]
function WeightedOutcomePicker:GetOutcomes() end

---Returns a random outcome from the list in WeightedOutcomePicker. 
---@param rng RNG 
---@return integer 
function WeightedOutcomePicker:PickOutcome(rng) end

---Removes an outcome from the outcome picker with the given `value`.
---@param value integer
function WeightedOutcomePicker:RemoveOutcome(value) end