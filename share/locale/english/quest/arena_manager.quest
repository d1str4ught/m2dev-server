quest arena_manager begin
	state start begin
		when 20017.chat.gameforge.arena_manager._10_npcChat begin
			if game.get_event_flag("arena_close") > 0 then
				say_title(gameforge.arena_manager._20_sayTitle)
				say(gameforge.arena_manager._30_say)
				return
			end

			if not npc.lock() then
				say_title(gameforge.arena_manager._20_sayTitle)
				say(gameforge.arena_manager._40_say)
				return
			end

			local useMinLevel = game.get_event_flag("arena_use_min_level")

			if useMinLevel == 0 then
				useMinLevel = 25 ;
			end

			if pc.get_level() < useMinLevel then
				say_title(gameforge.arena_manager._20_sayTitle)
				say(string.format(gameforge.arena_manager._50_say, useMinLevel))
				npc.unlock()
				return
			else
				say_title(gameforge.arena_manager._20_sayTitle)
				say(gameforge.arena_manager._60_say)

				local sname = input()

				if sname == "" then
				say_title(gameforge.arena_manager._20_sayTitle)
				say(gameforge.arena_manager._70_say)
					npc.unlock()
					return
				else
				say_title(gameforge.arena_manager._20_sayTitle)
				say(string.format(gameforge.arena_manager._80_say, pc.name, sname))
				wait("")

					local opp_vid = find_pc_by_name(sname)

					if opp_vid == 0 then
				say_title(gameforge.arena_manager._20_sayTitle)
				say(string.format(gameforge.arena_manager._90_say, sname))
						npc.unlock()
						return
					elseif opp_vid == pc.get_vid() then
				say_title(gameforge.arena_manager._20_sayTitle)
				say(gameforge.arena_manager._100_say)
						npc.unlock()
						return
					end

					local old = pc. select(opp_vid , opp_vid )
					local opp_level = pc.get_level()
					pc. select(old , old )

					if opp_level < useMinLevel then
				say_title(gameforge.arena_manager._20_sayTitle)
				say(string.format(gameforge.arena_manager._110_say, useMinLevel))
						npc.unlock()
						return
					end
					if not npc.is_near_vid(opp_vid, 10) then
				say_title(gameforge.arena_manager._20_sayTitle)
				say(string.format(gameforge.arena_manager._120_say, sname))
						npc.unlock()
						return ;
					end

					local a = arena.is_in_arena(opp_vid)
					if a == 0 then
				say_title(gameforge.arena_manager._20_sayTitle)
				say(string.format(gameforge.arena_manager._130_say, sname))
						npc.unlock()
						return ;
					end
				say_title(gameforge.arena_manager._140_sayTitle)
				say(string.format(gameforge.arena_manager._85_say, pc.name, sname))
					local agree = confirm(opp_vid, string.format(gameforge.arena_manager._87_say, sname, pc.name), 30)
					if agree!= CONFIRM_OK then
				say_title(gameforge.arena_manager._20_sayTitle)
				say(string.format(gameforge.arena_manager._150_say, sname))
						npc.unlock()
						return
					end

					s = arena.start_duel(sname, 3)
			
					if s == 0 then
				say_title(gameforge.arena_manager._20_sayTitle)
				say(gameforge.arena_manager._160_say)
					elseif s == 2 then
				say_title(gameforge.arena_manager._20_sayTitle)
				say(gameforge.arena_manager._170_say)
					elseif s == 3 then
				say_title(gameforge.arena_manager._20_sayTitle)
				say(gameforge.arena_manager._180_say)
					end
				end
			end
			npc.unlock()
		end

		when 20017.chat.gameforge.arena_manager._190_npcChat begin
			local g = arena.get_duel_list()
			local arena_name = {}
			local arena_observer = {}

			table.foreachi(g,
				function(n, p)
					arena_name[n] = string.format(gameforge.arena_manager._195_say, p[1], p[2])
					arena_observer[n] = { p[3], p[4], p[5] }
				end
			)

			table.insert(arena_name, gameforge.arena_manager._200_tableInsert)
			table.insert(arena_observer, 0)

			local count = table.getn(g)
			if count == 0 then
			say_title(gameforge.arena_manager._20_sayTitle)
			say(gameforge.arena_manager._210_say)
			return ;
			else
			say_title(gameforge.arena_manager._20_sayTitle)
			say(string.format(gameforge.arena_manager._220_say, count))
			wait()
			end

			if table.getn(g)!= 0 then
				local s = select_table(arena_name)

				if table.getn(arena_observer) == s then
					return ;
				end

				if table.getn(arena_observer) >= s then
					arena.add_observer(arena_observer[s][1], arena_observer[s][2], arena_observer[s][3])
				end
			end
		end
	end
end


