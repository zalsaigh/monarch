extends Node

# TODO: `caster` comes from PartyManager or info passed in from combatManager's
# start combat 
func execute(caster, spell_to_steal: Spell):
	caster.add_spell(spell_to_steal)
	
