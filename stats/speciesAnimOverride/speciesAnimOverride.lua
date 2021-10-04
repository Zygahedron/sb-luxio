

function initAfterInit()
	self.species = world.entitySpecies(entity.id())
	self.animationData = root.assetJson("/stats/speciesAnimOverride/"..config.getParameter("animationConfig")).animatedParts.stateTypes
	self.animStateData = root.assetJson("/humanoid/"..self.species.."/speciesAnimOverride.config")

	for partname, filepath in pairs(self.animStateData.partImages) do
		animator.setPartTag(partname, "partImage", filepath)
	end
	self.inited = true
end

function update(dt)
	if not self.inited then
		initAfterInit()
	end
	animator.setFlipped(mcontroller.facingDirection() == -1)
	if mcontroller.walking() then

	end
	if mcontroller.running() then

	end
	if mcontroller.falling() then

	end
	if mcontroller.jumping() then

	end
	if mcontroller.crouching() then

	end
	if mcontroller.flying() then

	end
	if mcontroller.groundMovement() then

	end
	if mcontroller.liquidMovement() then

	end
end

function uninit()
end
