quest alter_of_power begin
	state start begin
		when 20077.click with npc.get_guild() == pc.get_guild() and pc.is_guild_master() begin
			say_title(gameforge.guild_building_alter_of_power._10_sayTitle)
			say(gameforge.guild_building_alter_of_power._20_say)

			if pc.getqf("build_level") == 0 then
				pc.setqf("build_level", guild.level(pc.get_guild()))
			end

			wait()

			say(gameforge.guild_building_alter_of_power._30_say)

			if pc.getqf("build_level") < guild.level(pc.get_guild()) or guild.level(pc.get_guild()) >= 20 then
				say_title(gameforge.guild_building_alter_of_power._10_sayTitle)
				say(gameforge.guild_building_alter_of_power._40_say)
				say_reward(gameforge.guild_building_alter_of_power._50_sayReward)
				
				local s =  select(gameforge.guild_building_alter_of_power._60_select, gameforge.guild_building_alter_of_power._70_select)

				if s == 1 then
					if pc.count_item(90010) >= 10 and pc.count_item(90012) >= 15 and pc.count_item(90011) >= 10 and pc.get_gold() >= 25000000 then
						say_title(gameforge.guild_building_alter_of_power._10_sayTitle)
						say(gameforge.guild_building_alter_of_power._80_say)
						building.reconstruct(14062)
						pc.setqf("build_level", guild.level(pc.get_guild()))
						char_log(0, "GUILD_BUILDING", "alter_of_power 14062 constructed")

						pc.change_gold(-25000000)
						pc.remove_item("90010", 10)
						pc.remove_item("90011", 10)
						pc.remove_item("90012", 15)
					else
						say_title(gameforge.guild_building_alter_of_power._10_sayTitle)
						say(gameforge.guild_building_alter_of_power._90_say)
					end
				elseif s == 2 then
				say_title(gameforge.guild_building_alter_of_power._10_sayTitle)
				say(gameforge.guild_building_alter_of_power._100_say)
				end
			else
				say_title(gameforge.guild_building_alter_of_power._10_sayTitle)
				say(gameforge.guild_building_alter_of_power._110_say)
			end
		end

		when 20078.click with npc.get_guild() == pc.get_guild() and pc.is_guild_master() begin
			say_title(gameforge.guild_building_alter_of_power._10_sayTitle)
			say(gameforge.guild_building_alter_of_power._120_say)

			wait()
			say_title(gameforge.guild_building_alter_of_power._10_sayTitle)
			say(gameforge.guild_building_alter_of_power._130_say)

			if pc.getqf("build_level") < guild.level(pc.get_guild()) or guild.level(pc.get_guild()) >= 20 then
				say(gameforge.guild_building_alter_of_power._140_say)
				say_reward(gameforge.guild_building_alter_of_power._150_sayReward)
				
				local s =  select(gameforge.guild_building_alter_of_power._60_select, gameforge.guild_building_alter_of_power._70_select)

				if s == 1 then
					if pc.count_item(90010) >= 15 and pc.count_item(90012) >= 20 and pc.count_item(90011) >= 15 and pc.get_gold() >= 30000000 then
						say_title(gameforge.guild_building_alter_of_power._10_sayTitle)
						say(gameforge.guild_building_alter_of_power._160_say)
						building.reconstruct(14063)
						pc.setqf("build_level", guild.level(pc.get_guild()))
						char_log(0, "GUILD_BUILDING", "alter_of_power 14063 constructed")

						pc.change_gold(-30000000)
						pc.remove_item("90010", 15)
						pc.remove_item("90011", 20)
						pc.remove_item("90012", 20)
					else
						say_title(gameforge.guild_building_alter_of_power._10_sayTitle)
						say(gameforge.guild_building_alter_of_power._90_say)
					end
				elseif s == 2 then
					say_title(gameforge.guild_building_alter_of_power._10_sayTitle)
					say(gameforge.guild_building_alter_of_power._100_say)
				end
			end
		end

		when 20079.click with npc.get_guild() == pc.get_guild() and pc.is_guild_master() begin
			say_title(gameforge.guild_building_alter_of_power._10_sayTitle)
			say(gameforge.guild_building_alter_of_power._170_say)
		end

		when 20077.click or 20078.click or 20079.click with npc.get_guild() == pc.get_guild() and pc.is_guild_master()!= true begin
			say_title(gameforge.guild_building_alter_of_power._10_sayTitle)
			say(gameforge.guild_building_alter_of_power._180_say)
		end
	end
end



