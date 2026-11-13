package com.aksmp;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.function.Function;

import net.fabricmc.api.ModInitializer;
import net.fabricmc.fabric.api.creativetab.v1.FabricCreativeModeTab;
import net.minecraft.core.Holder;
import net.minecraft.core.Registry;
import net.minecraft.core.component.DataComponents;
import net.minecraft.core.registries.BuiltInRegistries;
import net.minecraft.core.registries.Registries;
import net.minecraft.nbt.CompoundTag;
import net.minecraft.network.chat.Component;
import net.minecraft.resources.Identifier;
import net.minecraft.resources.ResourceKey;
import net.minecraft.sounds.SoundEvent;
import net.minecraft.sounds.SoundEvents;
import net.minecraft.stats.Stats;
import net.minecraft.tags.BlockTags;
import net.minecraft.tags.ItemTags;
import net.minecraft.tags.TagKey;
import net.minecraft.util.Unit;
import net.minecraft.world.InteractionHand;
import net.minecraft.world.InteractionResult;
import net.minecraft.world.entity.EquipmentSlotGroup;
import net.minecraft.world.entity.ai.attributes.AttributeModifier;
import net.minecraft.world.entity.ai.attributes.Attributes;
import net.minecraft.world.entity.player.Player;
import net.minecraft.world.item.BlockItem;
import net.minecraft.world.item.CreativeModeTab;
import net.minecraft.world.item.Item;
import net.minecraft.world.item.ItemStack;
import net.minecraft.world.item.Items;
import net.minecraft.world.item.Rarity;
import net.minecraft.world.item.ToolMaterial;
import net.minecraft.world.item.component.CustomData;
import net.minecraft.world.item.component.ItemAttributeModifiers;
import net.minecraft.world.item.equipment.ArmorMaterial;
import net.minecraft.world.item.equipment.ArmorType;
import net.minecraft.world.item.equipment.EquipmentAssets;
import net.minecraft.world.level.Level;
import net.minecraft.world.level.block.Block;
import net.minecraft.world.level.block.SoundType;
import net.minecraft.world.level.block.state.BlockBehaviour;

/** AK SMP: argonite ore and gear, the armor sets, gacha ticket and crates as real items. Everything else runs from the bundled data pack. */
public class AkSmp implements ModInitializer {
	public static final String MOD_ID = "aksmp";
	static final List<Item> TAB = new ArrayList<>();
	static final TagKey<Item> REPAIRS_ARGONITE = TagKey.create(Registries.ITEM, id("repairs_argonite"));

	public static Identifier id(String path) {
		return Identifier.fromNamespaceAndPath(MOD_ID, path);
	}

	@Override
	public void onInitialize() {
		block("deepslate_argonite_ore", BlockBehaviour.Properties.of().strength(4.5F, 3.0F).requiresCorrectToolForDrops().sound(SoundType.DEEPSLATE), Rarity.RARE);
		block("argonite_ore", BlockBehaviour.Properties.of().strength(3.0F, 3.0F).requiresCorrectToolForDrops().sound(SoundType.STONE), Rarity.RARE);
		block("argonite_block", BlockBehaviour.Properties.of().strength(5.0F, 6.0F).requiresCorrectToolForDrops().sound(SoundType.NETHERITE_BLOCK), Rarity.RARE);
		ArmorMaterial m_argonite = material(37, 4, 9, 7, 4, 15, SoundEvents.ARMOR_EQUIP_NETHERITE, 4.00F, 0.15F, REPAIRS_ARGONITE, "argonite");
		item("argonite_helmet", Item::new, tagged(new Item.Properties().humanoidArmor(m_argonite, ArmorType.HELMET).rarity(Rarity.RARE).durability(520).fireResistant().component(DataComponents.ATTRIBUTE_MODIFIERS, ItemAttributeModifiers.builder()
				.add(Attributes.ARMOR, new AttributeModifier(id("argonite.head.armor"), 4.0, AttributeModifier.Operation.ADD_VALUE), EquipmentSlotGroup.HEAD)
				.add(Attributes.ARMOR_TOUGHNESS, new AttributeModifier(id("argonite.head.tough"), 4.0, AttributeModifier.Operation.ADD_VALUE), EquipmentSlotGroup.HEAD)
				.add(Attributes.KNOCKBACK_RESISTANCE, new AttributeModifier(id("argonite.head.kb"), 0.15, AttributeModifier.Operation.ADD_VALUE), EquipmentSlotGroup.HEAD)
				.add(Attributes.MAX_HEALTH, new AttributeModifier(id("argonite.head.max_health"), 1.0, AttributeModifier.Operation.ADD_VALUE), EquipmentSlotGroup.HEAD)
				.build()), "argonite_helmet", "argonite"));
		item("argonite_chestplate", Item::new, tagged(new Item.Properties().humanoidArmor(m_argonite, ArmorType.CHESTPLATE).rarity(Rarity.RARE).durability(760).fireResistant().component(DataComponents.ATTRIBUTE_MODIFIERS, ItemAttributeModifiers.builder()
				.add(Attributes.ARMOR, new AttributeModifier(id("argonite.chest.armor"), 9.0, AttributeModifier.Operation.ADD_VALUE), EquipmentSlotGroup.CHEST)
				.add(Attributes.ARMOR_TOUGHNESS, new AttributeModifier(id("argonite.chest.tough"), 4.0, AttributeModifier.Operation.ADD_VALUE), EquipmentSlotGroup.CHEST)
				.add(Attributes.KNOCKBACK_RESISTANCE, new AttributeModifier(id("argonite.chest.kb"), 0.15, AttributeModifier.Operation.ADD_VALUE), EquipmentSlotGroup.CHEST)
				.add(Attributes.MAX_HEALTH, new AttributeModifier(id("argonite.chest.max_health"), 1.0, AttributeModifier.Operation.ADD_VALUE), EquipmentSlotGroup.CHEST)
				.build()), "argonite_chestplate", "argonite"));
		item("argonite_leggings", Item::new, tagged(new Item.Properties().humanoidArmor(m_argonite, ArmorType.LEGGINGS).rarity(Rarity.RARE).durability(710).fireResistant().component(DataComponents.ATTRIBUTE_MODIFIERS, ItemAttributeModifiers.builder()
				.add(Attributes.ARMOR, new AttributeModifier(id("argonite.legs.armor"), 7.0, AttributeModifier.Operation.ADD_VALUE), EquipmentSlotGroup.LEGS)
				.add(Attributes.ARMOR_TOUGHNESS, new AttributeModifier(id("argonite.legs.tough"), 4.0, AttributeModifier.Operation.ADD_VALUE), EquipmentSlotGroup.LEGS)
				.add(Attributes.KNOCKBACK_RESISTANCE, new AttributeModifier(id("argonite.legs.kb"), 0.15, AttributeModifier.Operation.ADD_VALUE), EquipmentSlotGroup.LEGS)
				.add(Attributes.MAX_HEALTH, new AttributeModifier(id("argonite.legs.max_health"), 1.0, AttributeModifier.Operation.ADD_VALUE), EquipmentSlotGroup.LEGS)
				.build()), "argonite_leggings", "argonite"));
		item("argonite_boots", Item::new, tagged(new Item.Properties().humanoidArmor(m_argonite, ArmorType.BOOTS).rarity(Rarity.RARE).durability(620).fireResistant().component(DataComponents.ATTRIBUTE_MODIFIERS, ItemAttributeModifiers.builder()
				.add(Attributes.ARMOR, new AttributeModifier(id("argonite.feet.armor"), 4.0, AttributeModifier.Operation.ADD_VALUE), EquipmentSlotGroup.FEET)
				.add(Attributes.ARMOR_TOUGHNESS, new AttributeModifier(id("argonite.feet.tough"), 4.0, AttributeModifier.Operation.ADD_VALUE), EquipmentSlotGroup.FEET)
				.add(Attributes.KNOCKBACK_RESISTANCE, new AttributeModifier(id("argonite.feet.kb"), 0.15, AttributeModifier.Operation.ADD_VALUE), EquipmentSlotGroup.FEET)
				.add(Attributes.MAX_HEALTH, new AttributeModifier(id("argonite.feet.max_health"), 1.0, AttributeModifier.Operation.ADD_VALUE), EquipmentSlotGroup.FEET)
				.build()), "argonite_boots", "argonite"));
		ArmorMaterial m_god = material(37, 5, 11, 9, 5, 15, SoundEvents.ARMOR_EQUIP_NETHERITE, 5.00F, 0.25F, REPAIRS_ARGONITE, "god");
		item("god_helmet", Item::new, tagged(new Item.Properties().humanoidArmor(m_god, ArmorType.HELMET).rarity(Rarity.EPIC).component(DataComponents.UNBREAKABLE, Unit.INSTANCE).component(DataComponents.ENCHANTMENT_GLINT_OVERRIDE, true).fireResistant().component(DataComponents.ATTRIBUTE_MODIFIERS, ItemAttributeModifiers.builder()
				.add(Attributes.ARMOR, new AttributeModifier(id("god.head.armor"), 5.0, AttributeModifier.Operation.ADD_VALUE), EquipmentSlotGroup.HEAD)
				.add(Attributes.ARMOR_TOUGHNESS, new AttributeModifier(id("god.head.tough"), 5.0, AttributeModifier.Operation.ADD_VALUE), EquipmentSlotGroup.HEAD)
				.add(Attributes.KNOCKBACK_RESISTANCE, new AttributeModifier(id("god.head.kb"), 0.25, AttributeModifier.Operation.ADD_VALUE), EquipmentSlotGroup.HEAD)
				.add(Attributes.MAX_HEALTH, new AttributeModifier(id("god.head.max_health"), 5.0, AttributeModifier.Operation.ADD_VALUE), EquipmentSlotGroup.HEAD)
				.add(Attributes.MOVEMENT_SPEED, new AttributeModifier(id("god.head.movement_speed"), 0.05, AttributeModifier.Operation.ADD_MULTIPLIED_BASE), EquipmentSlotGroup.HEAD)
				.add(Attributes.ATTACK_DAMAGE, new AttributeModifier(id("god.head.attack_damage"), 1.5, AttributeModifier.Operation.ADD_VALUE), EquipmentSlotGroup.HEAD)
				.build()), "god_helmet", "god"));
		item("god_chestplate", Item::new, tagged(new Item.Properties().humanoidArmor(m_god, ArmorType.CHESTPLATE).rarity(Rarity.EPIC).component(DataComponents.UNBREAKABLE, Unit.INSTANCE).component(DataComponents.ENCHANTMENT_GLINT_OVERRIDE, true).fireResistant().component(DataComponents.GLIDER, Unit.INSTANCE).component(DataComponents.ATTRIBUTE_MODIFIERS, ItemAttributeModifiers.builder()
				.add(Attributes.ARMOR, new AttributeModifier(id("god.chest.armor"), 11.0, AttributeModifier.Operation.ADD_VALUE), EquipmentSlotGroup.CHEST)
				.add(Attributes.ARMOR_TOUGHNESS, new AttributeModifier(id("god.chest.tough"), 5.0, AttributeModifier.Operation.ADD_VALUE), EquipmentSlotGroup.CHEST)
				.add(Attributes.KNOCKBACK_RESISTANCE, new AttributeModifier(id("god.chest.kb"), 0.25, AttributeModifier.Operation.ADD_VALUE), EquipmentSlotGroup.CHEST)
				.add(Attributes.MAX_HEALTH, new AttributeModifier(id("god.chest.max_health"), 5.0, AttributeModifier.Operation.ADD_VALUE), EquipmentSlotGroup.CHEST)
				.add(Attributes.MOVEMENT_SPEED, new AttributeModifier(id("god.chest.movement_speed"), 0.05, AttributeModifier.Operation.ADD_MULTIPLIED_BASE), EquipmentSlotGroup.CHEST)
				.add(Attributes.ATTACK_DAMAGE, new AttributeModifier(id("god.chest.attack_damage"), 1.5, AttributeModifier.Operation.ADD_VALUE), EquipmentSlotGroup.CHEST)
				.build()), "god_chestplate", "god"));
		item("god_leggings", Item::new, tagged(new Item.Properties().humanoidArmor(m_god, ArmorType.LEGGINGS).rarity(Rarity.EPIC).component(DataComponents.UNBREAKABLE, Unit.INSTANCE).component(DataComponents.ENCHANTMENT_GLINT_OVERRIDE, true).fireResistant().component(DataComponents.ATTRIBUTE_MODIFIERS, ItemAttributeModifiers.builder()
				.add(Attributes.ARMOR, new AttributeModifier(id("god.legs.armor"), 9.0, AttributeModifier.Operation.ADD_VALUE), EquipmentSlotGroup.LEGS)
				.add(Attributes.ARMOR_TOUGHNESS, new AttributeModifier(id("god.legs.tough"), 5.0, AttributeModifier.Operation.ADD_VALUE), EquipmentSlotGroup.LEGS)
				.add(Attributes.KNOCKBACK_RESISTANCE, new AttributeModifier(id("god.legs.kb"), 0.25, AttributeModifier.Operation.ADD_VALUE), EquipmentSlotGroup.LEGS)
				.add(Attributes.MAX_HEALTH, new AttributeModifier(id("god.legs.max_health"), 5.0, AttributeModifier.Operation.ADD_VALUE), EquipmentSlotGroup.LEGS)
				.add(Attributes.MOVEMENT_SPEED, new AttributeModifier(id("god.legs.movement_speed"), 0.05, AttributeModifier.Operation.ADD_MULTIPLIED_BASE), EquipmentSlotGroup.LEGS)
				.add(Attributes.ATTACK_DAMAGE, new AttributeModifier(id("god.legs.attack_damage"), 1.5, AttributeModifier.Operation.ADD_VALUE), EquipmentSlotGroup.LEGS)
				.build()), "god_leggings", "god"));
		item("god_boots", Item::new, tagged(new Item.Properties().humanoidArmor(m_god, ArmorType.BOOTS).rarity(Rarity.EPIC).component(DataComponents.UNBREAKABLE, Unit.INSTANCE).component(DataComponents.ENCHANTMENT_GLINT_OVERRIDE, true).fireResistant().component(DataComponents.ATTRIBUTE_MODIFIERS, ItemAttributeModifiers.builder()
				.add(Attributes.ARMOR, new AttributeModifier(id("god.feet.armor"), 5.0, AttributeModifier.Operation.ADD_VALUE), EquipmentSlotGroup.FEET)
				.add(Attributes.ARMOR_TOUGHNESS, new AttributeModifier(id("god.feet.tough"), 5.0, AttributeModifier.Operation.ADD_VALUE), EquipmentSlotGroup.FEET)
				.add(Attributes.KNOCKBACK_RESISTANCE, new AttributeModifier(id("god.feet.kb"), 0.25, AttributeModifier.Operation.ADD_VALUE), EquipmentSlotGroup.FEET)
				.add(Attributes.MAX_HEALTH, new AttributeModifier(id("god.feet.max_health"), 5.0, AttributeModifier.Operation.ADD_VALUE), EquipmentSlotGroup.FEET)
				.add(Attributes.MOVEMENT_SPEED, new AttributeModifier(id("god.feet.movement_speed"), 0.05, AttributeModifier.Operation.ADD_MULTIPLIED_BASE), EquipmentSlotGroup.FEET)
				.add(Attributes.ATTACK_DAMAGE, new AttributeModifier(id("god.feet.attack_damage"), 1.5, AttributeModifier.Operation.ADD_VALUE), EquipmentSlotGroup.FEET)
				.build()), "god_boots", "god"));
		ArmorMaterial m_tide = material(33, 3, 8, 6, 3, 15, SoundEvents.ARMOR_EQUIP_DIAMOND, 2.00F, 0.00F, ItemTags.REPAIRS_DIAMOND_ARMOR, "tide");
		item("tide_helmet", Item::new, tagged(new Item.Properties().humanoidArmor(m_tide, ArmorType.HELMET).rarity(Rarity.UNCOMMON).durability(400).component(DataComponents.ATTRIBUTE_MODIFIERS, ItemAttributeModifiers.builder()
				.add(Attributes.ARMOR, new AttributeModifier(id("tide.head.armor"), 3.0, AttributeModifier.Operation.ADD_VALUE), EquipmentSlotGroup.HEAD)
				.add(Attributes.ARMOR_TOUGHNESS, new AttributeModifier(id("tide.head.tough"), 2.0, AttributeModifier.Operation.ADD_VALUE), EquipmentSlotGroup.HEAD)
				.add(Attributes.OXYGEN_BONUS, new AttributeModifier(id("tide.head.oxygen_bonus"), 1.0, AttributeModifier.Operation.ADD_VALUE), EquipmentSlotGroup.HEAD)
				.add(Attributes.WATER_MOVEMENT_EFFICIENCY, new AttributeModifier(id("tide.head.water_movement_efficiency"), 0.25, AttributeModifier.Operation.ADD_VALUE), EquipmentSlotGroup.HEAD)
				.build()), "tide_helmet", "tide"));
		item("tide_chestplate", Item::new, tagged(new Item.Properties().humanoidArmor(m_tide, ArmorType.CHESTPLATE).rarity(Rarity.UNCOMMON).durability(580).component(DataComponents.ATTRIBUTE_MODIFIERS, ItemAttributeModifiers.builder()
				.add(Attributes.ARMOR, new AttributeModifier(id("tide.chest.armor"), 8.0, AttributeModifier.Operation.ADD_VALUE), EquipmentSlotGroup.CHEST)
				.add(Attributes.ARMOR_TOUGHNESS, new AttributeModifier(id("tide.chest.tough"), 2.0, AttributeModifier.Operation.ADD_VALUE), EquipmentSlotGroup.CHEST)
				.add(Attributes.OXYGEN_BONUS, new AttributeModifier(id("tide.chest.oxygen_bonus"), 1.0, AttributeModifier.Operation.ADD_VALUE), EquipmentSlotGroup.CHEST)
				.add(Attributes.WATER_MOVEMENT_EFFICIENCY, new AttributeModifier(id("tide.chest.water_movement_efficiency"), 0.25, AttributeModifier.Operation.ADD_VALUE), EquipmentSlotGroup.CHEST)
				.build()), "tide_chestplate", "tide"));
		item("tide_leggings", Item::new, tagged(new Item.Properties().humanoidArmor(m_tide, ArmorType.LEGGINGS).rarity(Rarity.UNCOMMON).durability(540).component(DataComponents.ATTRIBUTE_MODIFIERS, ItemAttributeModifiers.builder()
				.add(Attributes.ARMOR, new AttributeModifier(id("tide.legs.armor"), 6.0, AttributeModifier.Operation.ADD_VALUE), EquipmentSlotGroup.LEGS)
				.add(Attributes.ARMOR_TOUGHNESS, new AttributeModifier(id("tide.legs.tough"), 2.0, AttributeModifier.Operation.ADD_VALUE), EquipmentSlotGroup.LEGS)
				.add(Attributes.OXYGEN_BONUS, new AttributeModifier(id("tide.legs.oxygen_bonus"), 1.0, AttributeModifier.Operation.ADD_VALUE), EquipmentSlotGroup.LEGS)
				.add(Attributes.WATER_MOVEMENT_EFFICIENCY, new AttributeModifier(id("tide.legs.water_movement_efficiency"), 0.25, AttributeModifier.Operation.ADD_VALUE), EquipmentSlotGroup.LEGS)
				.build()), "tide_leggings", "tide"));
		item("tide_boots", Item::new, tagged(new Item.Properties().humanoidArmor(m_tide, ArmorType.BOOTS).rarity(Rarity.UNCOMMON).durability(470).component(DataComponents.ATTRIBUTE_MODIFIERS, ItemAttributeModifiers.builder()
				.add(Attributes.ARMOR, new AttributeModifier(id("tide.feet.armor"), 3.0, AttributeModifier.Operation.ADD_VALUE), EquipmentSlotGroup.FEET)
				.add(Attributes.ARMOR_TOUGHNESS, new AttributeModifier(id("tide.feet.tough"), 2.0, AttributeModifier.Operation.ADD_VALUE), EquipmentSlotGroup.FEET)
				.add(Attributes.OXYGEN_BONUS, new AttributeModifier(id("tide.feet.oxygen_bonus"), 1.0, AttributeModifier.Operation.ADD_VALUE), EquipmentSlotGroup.FEET)
				.add(Attributes.WATER_MOVEMENT_EFFICIENCY, new AttributeModifier(id("tide.feet.water_movement_efficiency"), 0.25, AttributeModifier.Operation.ADD_VALUE), EquipmentSlotGroup.FEET)
				.build()), "tide_boots", "tide"));
		ArmorMaterial m_inferno = material(33, 3, 8, 6, 3, 15, SoundEvents.ARMOR_EQUIP_DIAMOND, 3.00F, 0.05F, ItemTags.REPAIRS_DIAMOND_ARMOR, "inferno");
		item("inferno_helmet", Item::new, tagged(new Item.Properties().humanoidArmor(m_inferno, ArmorType.HELMET).rarity(Rarity.UNCOMMON).durability(400).component(DataComponents.ATTRIBUTE_MODIFIERS, ItemAttributeModifiers.builder()
				.add(Attributes.ARMOR, new AttributeModifier(id("inferno.head.armor"), 3.0, AttributeModifier.Operation.ADD_VALUE), EquipmentSlotGroup.HEAD)
				.add(Attributes.ARMOR_TOUGHNESS, new AttributeModifier(id("inferno.head.tough"), 3.0, AttributeModifier.Operation.ADD_VALUE), EquipmentSlotGroup.HEAD)
				.add(Attributes.KNOCKBACK_RESISTANCE, new AttributeModifier(id("inferno.head.kb"), 0.05, AttributeModifier.Operation.ADD_VALUE), EquipmentSlotGroup.HEAD)
				.add(Attributes.BURNING_TIME, new AttributeModifier(id("inferno.head.burning_time"), -0.25, AttributeModifier.Operation.ADD_MULTIPLIED_BASE), EquipmentSlotGroup.HEAD)
				.add(Attributes.ATTACK_DAMAGE, new AttributeModifier(id("inferno.head.attack_damage"), 0.5, AttributeModifier.Operation.ADD_VALUE), EquipmentSlotGroup.HEAD)
				.build()), "inferno_helmet", "inferno"));
		item("inferno_chestplate", Item::new, tagged(new Item.Properties().humanoidArmor(m_inferno, ArmorType.CHESTPLATE).rarity(Rarity.UNCOMMON).durability(580).component(DataComponents.ATTRIBUTE_MODIFIERS, ItemAttributeModifiers.builder()
				.add(Attributes.ARMOR, new AttributeModifier(id("inferno.chest.armor"), 8.0, AttributeModifier.Operation.ADD_VALUE), EquipmentSlotGroup.CHEST)
				.add(Attributes.ARMOR_TOUGHNESS, new AttributeModifier(id("inferno.chest.tough"), 3.0, AttributeModifier.Operation.ADD_VALUE), EquipmentSlotGroup.CHEST)
				.add(Attributes.KNOCKBACK_RESISTANCE, new AttributeModifier(id("inferno.chest.kb"), 0.05, AttributeModifier.Operation.ADD_VALUE), EquipmentSlotGroup.CHEST)
				.add(Attributes.BURNING_TIME, new AttributeModifier(id("inferno.chest.burning_time"), -0.25, AttributeModifier.Operation.ADD_MULTIPLIED_BASE), EquipmentSlotGroup.CHEST)
				.add(Attributes.ATTACK_DAMAGE, new AttributeModifier(id("inferno.chest.attack_damage"), 0.5, AttributeModifier.Operation.ADD_VALUE), EquipmentSlotGroup.CHEST)
				.build()), "inferno_chestplate", "inferno"));
		item("inferno_leggings", Item::new, tagged(new Item.Properties().humanoidArmor(m_inferno, ArmorType.LEGGINGS).rarity(Rarity.UNCOMMON).durability(540).component(DataComponents.ATTRIBUTE_MODIFIERS, ItemAttributeModifiers.builder()
				.add(Attributes.ARMOR, new AttributeModifier(id("inferno.legs.armor"), 6.0, AttributeModifier.Operation.ADD_VALUE), EquipmentSlotGroup.LEGS)
				.add(Attributes.ARMOR_TOUGHNESS, new AttributeModifier(id("inferno.legs.tough"), 3.0, AttributeModifier.Operation.ADD_VALUE), EquipmentSlotGroup.LEGS)
				.add(Attributes.KNOCKBACK_RESISTANCE, new AttributeModifier(id("inferno.legs.kb"), 0.05, AttributeModifier.Operation.ADD_VALUE), EquipmentSlotGroup.LEGS)
				.add(Attributes.BURNING_TIME, new AttributeModifier(id("inferno.legs.burning_time"), -0.25, AttributeModifier.Operation.ADD_MULTIPLIED_BASE), EquipmentSlotGroup.LEGS)
				.add(Attributes.ATTACK_DAMAGE, new AttributeModifier(id("inferno.legs.attack_damage"), 0.5, AttributeModifier.Operation.ADD_VALUE), EquipmentSlotGroup.LEGS)
				.build()), "inferno_leggings", "inferno"));
		item("inferno_boots", Item::new, tagged(new Item.Properties().humanoidArmor(m_inferno, ArmorType.BOOTS).rarity(Rarity.UNCOMMON).durability(470).component(DataComponents.ATTRIBUTE_MODIFIERS, ItemAttributeModifiers.builder()
				.add(Attributes.ARMOR, new AttributeModifier(id("inferno.feet.armor"), 3.0, AttributeModifier.Operation.ADD_VALUE), EquipmentSlotGroup.FEET)
				.add(Attributes.ARMOR_TOUGHNESS, new AttributeModifier(id("inferno.feet.tough"), 3.0, AttributeModifier.Operation.ADD_VALUE), EquipmentSlotGroup.FEET)
				.add(Attributes.KNOCKBACK_RESISTANCE, new AttributeModifier(id("inferno.feet.kb"), 0.05, AttributeModifier.Operation.ADD_VALUE), EquipmentSlotGroup.FEET)
				.add(Attributes.BURNING_TIME, new AttributeModifier(id("inferno.feet.burning_time"), -0.25, AttributeModifier.Operation.ADD_MULTIPLIED_BASE), EquipmentSlotGroup.FEET)
				.add(Attributes.ATTACK_DAMAGE, new AttributeModifier(id("inferno.feet.attack_damage"), 0.5, AttributeModifier.Operation.ADD_VALUE), EquipmentSlotGroup.FEET)
				.build()), "inferno_boots", "inferno"));
		ArmorMaterial m_shadow = material(33, 3, 8, 6, 3, 15, SoundEvents.ARMOR_EQUIP_DIAMOND, 2.00F, 0.00F, ItemTags.REPAIRS_DIAMOND_ARMOR, "shadow");
		item("shadow_helmet", Item::new, tagged(new Item.Properties().humanoidArmor(m_shadow, ArmorType.HELMET).rarity(Rarity.UNCOMMON).durability(400).component(DataComponents.ATTRIBUTE_MODIFIERS, ItemAttributeModifiers.builder()
				.add(Attributes.ARMOR, new AttributeModifier(id("shadow.head.armor"), 3.0, AttributeModifier.Operation.ADD_VALUE), EquipmentSlotGroup.HEAD)
				.add(Attributes.ARMOR_TOUGHNESS, new AttributeModifier(id("shadow.head.tough"), 2.0, AttributeModifier.Operation.ADD_VALUE), EquipmentSlotGroup.HEAD)
				.add(Attributes.MOVEMENT_SPEED, new AttributeModifier(id("shadow.head.movement_speed"), 0.06, AttributeModifier.Operation.ADD_MULTIPLIED_BASE), EquipmentSlotGroup.HEAD)
				.add(Attributes.SNEAKING_SPEED, new AttributeModifier(id("shadow.head.sneaking_speed"), 0.15, AttributeModifier.Operation.ADD_VALUE), EquipmentSlotGroup.HEAD)
				.build()), "shadow_helmet", "shadow"));
		item("shadow_chestplate", Item::new, tagged(new Item.Properties().humanoidArmor(m_shadow, ArmorType.CHESTPLATE).rarity(Rarity.UNCOMMON).durability(580).component(DataComponents.ATTRIBUTE_MODIFIERS, ItemAttributeModifiers.builder()
				.add(Attributes.ARMOR, new AttributeModifier(id("shadow.chest.armor"), 8.0, AttributeModifier.Operation.ADD_VALUE), EquipmentSlotGroup.CHEST)
				.add(Attributes.ARMOR_TOUGHNESS, new AttributeModifier(id("shadow.chest.tough"), 2.0, AttributeModifier.Operation.ADD_VALUE), EquipmentSlotGroup.CHEST)
				.add(Attributes.MOVEMENT_SPEED, new AttributeModifier(id("shadow.chest.movement_speed"), 0.06, AttributeModifier.Operation.ADD_MULTIPLIED_BASE), EquipmentSlotGroup.CHEST)
				.add(Attributes.SNEAKING_SPEED, new AttributeModifier(id("shadow.chest.sneaking_speed"), 0.15, AttributeModifier.Operation.ADD_VALUE), EquipmentSlotGroup.CHEST)
				.build()), "shadow_chestplate", "shadow"));
		item("shadow_leggings", Item::new, tagged(new Item.Properties().humanoidArmor(m_shadow, ArmorType.LEGGINGS).rarity(Rarity.UNCOMMON).durability(540).component(DataComponents.ATTRIBUTE_MODIFIERS, ItemAttributeModifiers.builder()
				.add(Attributes.ARMOR, new AttributeModifier(id("shadow.legs.armor"), 6.0, AttributeModifier.Operation.ADD_VALUE), EquipmentSlotGroup.LEGS)
				.add(Attributes.ARMOR_TOUGHNESS, new AttributeModifier(id("shadow.legs.tough"), 2.0, AttributeModifier.Operation.ADD_VALUE), EquipmentSlotGroup.LEGS)
				.add(Attributes.MOVEMENT_SPEED, new AttributeModifier(id("shadow.legs.movement_speed"), 0.06, AttributeModifier.Operation.ADD_MULTIPLIED_BASE), EquipmentSlotGroup.LEGS)
				.add(Attributes.SNEAKING_SPEED, new AttributeModifier(id("shadow.legs.sneaking_speed"), 0.15, AttributeModifier.Operation.ADD_VALUE), EquipmentSlotGroup.LEGS)
				.build()), "shadow_leggings", "shadow"));
		item("shadow_boots", Item::new, tagged(new Item.Properties().humanoidArmor(m_shadow, ArmorType.BOOTS).rarity(Rarity.UNCOMMON).durability(470).component(DataComponents.ATTRIBUTE_MODIFIERS, ItemAttributeModifiers.builder()
				.add(Attributes.ARMOR, new AttributeModifier(id("shadow.feet.armor"), 3.0, AttributeModifier.Operation.ADD_VALUE), EquipmentSlotGroup.FEET)
				.add(Attributes.ARMOR_TOUGHNESS, new AttributeModifier(id("shadow.feet.tough"), 2.0, AttributeModifier.Operation.ADD_VALUE), EquipmentSlotGroup.FEET)
				.add(Attributes.MOVEMENT_SPEED, new AttributeModifier(id("shadow.feet.movement_speed"), 0.06, AttributeModifier.Operation.ADD_MULTIPLIED_BASE), EquipmentSlotGroup.FEET)
				.add(Attributes.SNEAKING_SPEED, new AttributeModifier(id("shadow.feet.sneaking_speed"), 0.15, AttributeModifier.Operation.ADD_VALUE), EquipmentSlotGroup.FEET)
				.build()), "shadow_boots", "shadow"));
		ArmorMaterial m_storm = material(33, 3, 8, 6, 3, 15, SoundEvents.ARMOR_EQUIP_DIAMOND, 2.00F, 0.00F, ItemTags.REPAIRS_DIAMOND_ARMOR, "storm");
		item("storm_helmet", Item::new, tagged(new Item.Properties().humanoidArmor(m_storm, ArmorType.HELMET).rarity(Rarity.UNCOMMON).durability(400).component(DataComponents.ATTRIBUTE_MODIFIERS, ItemAttributeModifiers.builder()
				.add(Attributes.ARMOR, new AttributeModifier(id("storm.head.armor"), 3.0, AttributeModifier.Operation.ADD_VALUE), EquipmentSlotGroup.HEAD)
				.add(Attributes.ARMOR_TOUGHNESS, new AttributeModifier(id("storm.head.tough"), 2.0, AttributeModifier.Operation.ADD_VALUE), EquipmentSlotGroup.HEAD)
				.add(Attributes.JUMP_STRENGTH, new AttributeModifier(id("storm.head.jump_strength"), 0.06, AttributeModifier.Operation.ADD_VALUE), EquipmentSlotGroup.HEAD)
				.add(Attributes.SAFE_FALL_DISTANCE, new AttributeModifier(id("storm.head.safe_fall_distance"), 3.0, AttributeModifier.Operation.ADD_VALUE), EquipmentSlotGroup.HEAD)
				.add(Attributes.MOVEMENT_SPEED, new AttributeModifier(id("storm.head.movement_speed"), 0.03, AttributeModifier.Operation.ADD_MULTIPLIED_BASE), EquipmentSlotGroup.HEAD)
				.build()), "storm_helmet", "storm"));
		item("storm_chestplate", Item::new, tagged(new Item.Properties().humanoidArmor(m_storm, ArmorType.CHESTPLATE).rarity(Rarity.UNCOMMON).durability(580).component(DataComponents.ATTRIBUTE_MODIFIERS, ItemAttributeModifiers.builder()
				.add(Attributes.ARMOR, new AttributeModifier(id("storm.chest.armor"), 8.0, AttributeModifier.Operation.ADD_VALUE), EquipmentSlotGroup.CHEST)
				.add(Attributes.ARMOR_TOUGHNESS, new AttributeModifier(id("storm.chest.tough"), 2.0, AttributeModifier.Operation.ADD_VALUE), EquipmentSlotGroup.CHEST)
				.add(Attributes.JUMP_STRENGTH, new AttributeModifier(id("storm.chest.jump_strength"), 0.06, AttributeModifier.Operation.ADD_VALUE), EquipmentSlotGroup.CHEST)
				.add(Attributes.SAFE_FALL_DISTANCE, new AttributeModifier(id("storm.chest.safe_fall_distance"), 3.0, AttributeModifier.Operation.ADD_VALUE), EquipmentSlotGroup.CHEST)
				.add(Attributes.MOVEMENT_SPEED, new AttributeModifier(id("storm.chest.movement_speed"), 0.03, AttributeModifier.Operation.ADD_MULTIPLIED_BASE), EquipmentSlotGroup.CHEST)
				.build()), "storm_chestplate", "storm"));
		item("storm_leggings", Item::new, tagged(new Item.Properties().humanoidArmor(m_storm, ArmorType.LEGGINGS).rarity(Rarity.UNCOMMON).durability(540).component(DataComponents.ATTRIBUTE_MODIFIERS, ItemAttributeModifiers.builder()
				.add(Attributes.ARMOR, new AttributeModifier(id("storm.legs.armor"), 6.0, AttributeModifier.Operation.ADD_VALUE), EquipmentSlotGroup.LEGS)
				.add(Attributes.ARMOR_TOUGHNESS, new AttributeModifier(id("storm.legs.tough"), 2.0, AttributeModifier.Operation.ADD_VALUE), EquipmentSlotGroup.LEGS)
				.add(Attributes.JUMP_STRENGTH, new AttributeModifier(id("storm.legs.jump_strength"), 0.06, AttributeModifier.Operation.ADD_VALUE), EquipmentSlotGroup.LEGS)
				.add(Attributes.SAFE_FALL_DISTANCE, new AttributeModifier(id("storm.legs.safe_fall_distance"), 3.0, AttributeModifier.Operation.ADD_VALUE), EquipmentSlotGroup.LEGS)
				.add(Attributes.MOVEMENT_SPEED, new AttributeModifier(id("storm.legs.movement_speed"), 0.03, AttributeModifier.Operation.ADD_MULTIPLIED_BASE), EquipmentSlotGroup.LEGS)
				.build()), "storm_leggings", "storm"));
		item("storm_boots", Item::new, tagged(new Item.Properties().humanoidArmor(m_storm, ArmorType.BOOTS).rarity(Rarity.UNCOMMON).durability(470).component(DataComponents.ATTRIBUTE_MODIFIERS, ItemAttributeModifiers.builder()
				.add(Attributes.ARMOR, new AttributeModifier(id("storm.feet.armor"), 3.0, AttributeModifier.Operation.ADD_VALUE), EquipmentSlotGroup.FEET)
				.add(Attributes.ARMOR_TOUGHNESS, new AttributeModifier(id("storm.feet.tough"), 2.0, AttributeModifier.Operation.ADD_VALUE), EquipmentSlotGroup.FEET)
				.add(Attributes.JUMP_STRENGTH, new AttributeModifier(id("storm.feet.jump_strength"), 0.06, AttributeModifier.Operation.ADD_VALUE), EquipmentSlotGroup.FEET)
				.add(Attributes.SAFE_FALL_DISTANCE, new AttributeModifier(id("storm.feet.safe_fall_distance"), 3.0, AttributeModifier.Operation.ADD_VALUE), EquipmentSlotGroup.FEET)
				.add(Attributes.MOVEMENT_SPEED, new AttributeModifier(id("storm.feet.movement_speed"), 0.03, AttributeModifier.Operation.ADD_MULTIPLIED_BASE), EquipmentSlotGroup.FEET)
				.build()), "storm_boots", "storm"));
		ToolMaterial argonite = new ToolMaterial(BlockTags.INCORRECT_FOR_NETHERITE_TOOL, 3000, 12.0F, 5.0F, 15, REPAIRS_ARGONITE);
		item("argonite_sword", Item::new, tagged(new Item.Properties().sword(argonite, 4.0F, -2.4F).rarity(Rarity.RARE).fireResistant(), "argonite_sword", null));
		item("argonite_pickaxe", Item::new, tagged(new Item.Properties().pickaxe(argonite, 1.0F, -2.8F).rarity(Rarity.RARE).fireResistant(), "argonite_pickaxe", null));
		item("argonite_axe", Item::new, tagged(new Item.Properties().axe(argonite, 5.0F, -3.0F).rarity(Rarity.RARE).fireResistant(), "argonite_axe", null));
		item("raw_argonite", Item::new, tagged(new Item.Properties().rarity(Rarity.RARE), "raw_argonite", null));
		item("argonite_ingot", Item::new, tagged(new Item.Properties().rarity(Rarity.RARE).fireResistant().component(DataComponents.ENCHANTMENT_GLINT_OVERRIDE, true), "argonite_ingot", null));
		item("gacha_ticket", Item::new, tagged(new Item.Properties().rarity(Rarity.UNCOMMON).component(DataComponents.ENCHANTMENT_GLINT_OVERRIDE, true), "ticket", null));
		item("crate_common", CrateItem::new, tagged(new Item.Properties().rarity(Rarity.COMMON), "crate1", null));
		item("crate_rare", CrateItem::new, tagged(new Item.Properties().rarity(Rarity.UNCOMMON), "crate2", null));
		item("crate_epic", CrateItem::new, tagged(new Item.Properties().rarity(Rarity.RARE), "crate3", null));
		item("crate_legendary", CrateItem::new, tagged(new Item.Properties().rarity(Rarity.EPIC), "crate4", null));
		item("crate_mythic", CrateItem::new, tagged(new Item.Properties().rarity(Rarity.EPIC), "crate5", null));

		ResourceKey<CreativeModeTab> tabKey = ResourceKey.create(BuiltInRegistries.CREATIVE_MODE_TAB.key(), id("main"));
		CreativeModeTab tab = FabricCreativeModeTab.builder()
				.icon(() -> new ItemStack(TAB.get(TAB.size() - 1)))
				.title(Component.translatable("itemGroup.aksmp.main"))
				.displayItems((params, output) -> {
					for (Item it : TAB) output.accept(it);
				})
				.build();
		Registry.register(BuiltInRegistries.CREATIVE_MODE_TAB, tabKey, tab);
	}

	static ArmorMaterial material(int durability, int head, int chest, int legs, int feet, int enchant, Holder<SoundEvent> sound,
			float toughness, float knockback, TagKey<Item> repair, String asset) {
		return new ArmorMaterial(durability,
				Map.of(ArmorType.HELMET, head, ArmorType.CHESTPLATE, chest, ArmorType.LEGGINGS, legs, ArmorType.BOOTS, feet, ArmorType.BODY, chest),
				enchant, sound, toughness, knockback, repair, ResourceKey.create(EquipmentAssets.ROOT_ID, id(asset)));
	}

	/** every AK item carries custom_data {ak:"<key>"} so the data pack recognises it exactly like the older component-based items */
	static Item.Properties tagged(Item.Properties props, String ak, String set) {
		CompoundTag tag = new CompoundTag();
		tag.putString("ak", ak);
		if (set != null) tag.putString("akset", set);
		return props.component(DataComponents.CUSTOM_DATA, CustomData.of(tag));
	}

	static Item item(String name, Function<Item.Properties, Item> factory, Item.Properties props) {
		ResourceKey<Item> key = ResourceKey.create(Registries.ITEM, id(name));
		Item item = factory.apply(props.setId(key));
		Registry.register(BuiltInRegistries.ITEM, key, item);
		TAB.add(item);
		return item;
	}

	static Block block(String name, BlockBehaviour.Properties props, Rarity rarity) {
		ResourceKey<Block> key = ResourceKey.create(Registries.BLOCK, id(name));
		Block block = Registry.register(BuiltInRegistries.BLOCK, key, new Block(props.setId(key)));
		ResourceKey<Item> itemKey = ResourceKey.create(Registries.ITEM, id(name));
		Item item = new BlockItem(block, new Item.Properties().useBlockDescriptionPrefix().rarity(rarity).setId(itemKey));
		Registry.register(BuiltInRegistries.ITEM, itemKey, item);
		TAB.add(item);
		return block;
	}

	/** crates open on right click: the data pack listens to the carrot-on-a-stick "used" statistic, so award that */
	static class CrateItem extends Item {
		CrateItem(Item.Properties props) {
			super(props);
		}

		@Override
		public InteractionResult use(Level level, Player player, InteractionHand hand) {
			player.awardStat(Stats.ITEM_USED.get(Items.CARROT_ON_A_STICK));
			return InteractionResult.SUCCESS;
		}
	}
}
