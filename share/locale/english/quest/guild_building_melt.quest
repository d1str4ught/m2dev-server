quest guild_building_melt begin
    state start begin
		function GetOreRefineCost(cost)
			if pc.empire != npc.empire then
			return 3 * cost
			end
			if pc.get_guild() == npc.get_guild() then
			return cost * 0.9
			end
			return cost
		end

		function GetOreRefineGoodPct()
			return 60
		end

		function GetOreRefineBadPct()
			return 30
		end

			function GetMyRefineNum(race)
				return({
					[20060] = 50601,
					[20061] = 50602,
					[20062] = 50603,
					[20063] = 50604,
					[20064] = 50605,
					[20065] = 50606,
					[20066] = 50607,
					[20067] = 50608,
					[20068] = 50609,
					[20069] = 50610,
					[20070] = 50611,
					[20071] = 50612,
					[20072] = 50613,
					[33009] = 50614,
					[33010] = 50615,
					[33011] = 50616,
					[33012] = 50617,
					[33013] = 50618
				})[race]
				--return race - 20060 + 50601 or race - 33009 + 50614
			end

		function IsRefinableRawOre(vnum)
			return vnum >= 50601 and vnum <= 50618
		end

		function DoRefineDiamond(pct)
			local from_postfix
			local from_name = item_name(item.vnum)
			local to_vnum = item.vnum + 20
			local to_name = item_name(to_vnum)
			local to_postfix

			say(gameforge.guild_building_melt._10_say)

			if item.count >= 100 then
			say(string.format(gameforge.guild_building_melt._20_say, pct, guild_building_melt.GetOreRefineCost(10000)))
			local s =  select(gameforge.locale.guild.yes, gameforge.locale.guild.no)
			if s == 1 then
				if pc.get_gold() < guild_building_melt.GetOreRefineCost(10000) then
				say(gameforge.guild_building_melt._30_say)
				return
				end

				if pc.diamond_refine(10000, pct) then
				say(gameforge.guild_building_melt._40_say)
				say_item(to_name, to_vnum, "")
				else
				say(gameforge.guild_building_melt._50_say)
				end
			end
			else
			say(string.format(gameforge.guild_building_melt._60_say,from_name))
			end
		end
		function DoRefine(pct)
			local from_postfix
			local from_name = item_name(item.vnum)
			local to_vnum = item.vnum + 20
			local to_name = item_name(to_vnum)
			local to_postfix

			say(string.format(gameforge.guild_building_melt._70_say,  from_name , to_name ))
			if item.count >= 100 then
			say(string.format(gameforge.guild_building_melt._20_say, pct, guild_building_melt.GetOreRefineCost(3000)))
			local s =  select(gameforge.locale.guild.yes, gameforge.locale.guild.no)
			if s == 1 then
				if pc.get_gold() < guild_building_melt.GetOreRefineCost(3000) then
				say(gameforge.guild_building_melt._30_say)
				return
				end

				local selected_item_cell = select_item()
				if selected_item_cell == 0 then
				say(gameforge.guild_building_melt._90_say)
				return
				end
				local old_item = item.get_id()

				if (not item.select_cell(selected_item_cell)) or item.vnum < 28000 or item.vnum >= 28300 then
				say(gameforge.guild_building_melt._100_say)
				return
				end

				item. select(old_item , old_item )

				if pc.ore_refine(3000, pct, selected_item_cell) then
				say(gameforge.guild_building_melt._120_say)
				say_item(to_name, to_vnum, "")
				else
				say(gameforge.guild_building_melt._50_say)
				end
			end
			else
			say(string.format(gameforge.guild_building_melt._60_say,from_name))
			end
		end

		when 20060.take or 20061.take or 20062.take or 20063.take or 20064.take or 20065.take or 20066.take or
			 20067.take or 20068.take or 20069.take or 20070.take or 20071.take or 20072.take or 
			 33009.take or 33010.take or 33011.take or 33012.take or 33013.take
			with guild_building_melt.GetMyRefineNum(npc.race) == item.vnum
		begin
			if item.vnum == 50601 then
			guild_building_melt.DoRefineDiamond(guild_building_melt.GetOreRefineGoodPct())
			else
			guild_building_melt.DoRefine(guild_building_melt.GetOreRefineGoodPct())
			end
		end

		when 20060.take or 20061.take or 20062.take or 20063.take or 20064.take or 20065.take or 20066.take or
			 20067.take or 20068.take or 20069.take or 20070.take or 20071.take or 20072.take or 
			 33009.take or 33010.take or 33011.take or 33012.take or 33013.take
			with guild_building_melt.IsRefinableRawOre(item.vnum) and 
			guild_building_melt.GetMyRefineNum(npc.race) != item.vnum
		begin
			if item.vnum == 50601 then
			guild_building_melt.DoRefineDiamond(guild_building_melt.GetOreRefineBadPct())
			else
			guild_building_melt.DoRefine(guild_building_melt.GetOreRefineBadPct())
			end
		end

		when 20060.click or 20061.click or 20062.click or 20063.click or 20064.click or 20065.click or 20066.click or
			 20067.click or 20068.click or 20069.click or 20070.click or 20071.click or 20072.click or 
			 33009.click or  33010.click or 33011.click or  33012.click or 33013.click
			with npc.get_guild() == pc.get_guild() and pc.isguildmaster()
		begin
			say_npc()
			say(gameforge.guild_building_melt._130_say)
			wait()
			if pc.get_gold() < 3000000 then
				say(gameforge.guild_building_melt._140_say)
			else
				-- say(gameforge.guild_building_melt._150_say)

				-- local sel = 0
				
				-- local timetable1 = {gameforge.guild_building_melt._180_say, 
									-- gameforge.guild_building_melt._190_say,
									-- gameforge.guild_building_melt._200_say,
									-- gameforge.guild_building_melt._210_say,
									-- gameforge.guild_building_melt._220_say,
									-- gameforge.guild_building_melt._230_say,
									-- gameforge.locale.levelup.prev_quest_go, 
									-- gameforge.guild_building_melt._170_say}
				-- local valuetable1 = {14043, 14045, 14046, 14047, 14048, 14049, 0, -1}

				-- local timetable2 = {gameforge.guild_building_melt._240_say,
									-- gameforge.guild_building_melt._250_say,
									-- gameforge.guild_building_melt._260_say,
									-- gameforge.guild_building_melt._270_say,
									-- gameforge.guild_building_melt._280_say,
									-- gameforge.guild_building_melt._290_say,
									-- gameforge.locale.levelup.prev_quest_go, 
									-- gameforge.guild_building_melt._170_say}
				-- local valuetable2 = {14050, 14051, 14052, 14053, 14054, 14055, 0, -1}
				
				-- repeat
					-- local s = select_table(timetable1)
					-- sel = valuetable1[s]
					-- if sel == 0 then
						-- local s = select_table(timetable2)
						-- sel = valuetable2[s]
					-- end
				-- until sel != 0
				-- if sel != -1 then
					-- npc_num = sel + 20060 - 14043
					-- if npc_num == npc.get_race() then
					-- say(gameforge.guild_building_melt._160_say)
					-- else
					-- pc.changegold(-3000000)
					-- building.reconstruct(sel)
					-- end
				-- end
				
				local sel = 0
				local timetable1 = {gameforge.guild_building_melt._180_say, 
									gameforge.guild_building_melt._190_say,
									gameforge.guild_building_melt._200_say,
									gameforge.guild_building_melt._210_say,
									gameforge.guild_building_melt._220_say,
									gameforge.guild_building_melt._230_say,
									gameforge.locale.levelup.prev_quest_go, 
									gameforge.guild_building_melt._170_say}
				local valuetable1 = {14043, 14045, 14046, 14047, 14048, 14049, 1, 3}
				local timetable2 = {gameforge.guild_building_melt._240_say,
									gameforge.guild_building_melt._250_say,
									gameforge.guild_building_melt._260_say,
									gameforge.guild_building_melt._270_say,
									gameforge.guild_building_melt._280_say,
									gameforge.locale.levelup.prev_quest_go, 
									gameforge.map_warp._96_select,
									gameforge.guild_building_melt._170_say}
				local valuetable2 = {14050, 10451, 14052, 14053, 14054, 2, 0, 3}
				local timetable3 = {gameforge.guild_building_melt._290_say,
									"Soul crystal",
									"Rubin",
									"Garnet",
									"Smaragd",
									"Sapphire",
									gameforge.map_warp._96_select,
									gameforge.guild_building_melt._170_say}
				local valuetable3 = {14055, 26992, 26993, 26994, 26995, 26996, 1, 3}
				repeat
					say_npc()
					say(gameforge.guild_building_melt._150_say)
					if sel == 0 then
						local s = select_table(timetable1)
						sel = valuetable1[s]
					elseif sel == 1 then
						local s = select_table(timetable2)
						sel = valuetable2[s]
					elseif sel == 2 then
						local s = select_table(timetable3)
						sel = valuetable3[s]
					end
				until sel > 2
				if sel != 3 then
					npc_num = sel + 20060 - 14043
					--chat("#debug#sel:"..sel.."#npc_num:"..npc_num)
					if npc_num == npc.get_race() then
						say(gameforge.guild_building_melt._160_say)
					else
						pc.changegold(-3000000)
						building.reconstruct(sel)
					end
				end
				
			end
		end
    end
end

