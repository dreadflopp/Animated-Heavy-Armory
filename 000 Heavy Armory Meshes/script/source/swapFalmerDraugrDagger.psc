Scriptname swapFalmerDraugrDagger extends ObjectReference  

;	Script is inspired/in practice a copy of a script from waccf, but it is too short to be done in any other way

Weapon Property fakeDagger Auto
Weapon Property realDagger Auto

Event OnContainerChanged(ObjectReference akNewContainer, ObjectReference akOldContainer)
	if akNewContainer == Game.GetPlayer()
		Game.GetPlayer().RemoveItem(fakeDagger, 1, true)
		Game.GetPlayer().AddItem(realDagger, 1, true)
	endIf
endEvent