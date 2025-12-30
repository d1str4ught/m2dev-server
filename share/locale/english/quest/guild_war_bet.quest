quest guild_war_bet begin
	state start begin
		when guild_war_observer1.chat.gameforge.guild_war_bet._10_npcChat or	guild_war_observer2.chat.gameforge.guild_war_bet._10_npcChat or	guild_war_observer3.chat.gameforge.guild_war_bet._10_npcChat begin
			local info_counter = pc.getqf("info")

			if info_counter < 3 then
				say_title(gameforge.guild_war_bet._20_sayTitle)
				say(gameforge.guild_war_bet._30_say)
				wait()
			end

			local g = guild.get_reserve_war_table() 
			local gname_table = {}

			table.foreachi(g,
			function(n, p) 
				gname_table[n] = guild.get_name(p[2])..gameforge.guild_war_bet._35_table..guild.get_name(p[3])
			end)

			if table.getn(g) == 0 then
				say_title(gameforge.guild_war_bet._40_sayTitle)
				say(gameforge.guild_war_bet._50_say)
			else
				gname_table[table.getn(g)+1] = gameforge.locale.cancel
				say_title(gameforge.guild_war_bet._40_sayTitle)
				say(gameforge.guild_war_bet._60_say)

				local s = select_table(gname_table)

				if s != table.getn(gname_table) then
					if guild.is_bet(g[s][1]) then
						say_title(gameforge.guild_war_bet._40_sayTitle)
						say(gameforge.guild_war_bet._70_say)
					else
						local name1 = guild.get_name(g[s][2])	
						local name2 = guild.get_name(g[s][3])

						say_title(gameforge.guild_war_bet._40_sayTitle)
						say(string.format(gameforge.guild_war_bet._80_say, name1.." "..name2..gameforge.guild_war_bet._45_say..g[s][4]))
						local guild_s =  select(name1, name1)

						if guild_s != 3 then
							local bet_guild = g[s][guild_s+1]

							say_title(gameforge.guild_war_bet._90_sayTitle)
							say(gameforge.locale.guild.war_bet_price)

							local price_button_table = {}

							table.foreachi(guild_war_bet_price_table,
							function(n, p) 
								price_button_table[n] = p..gameforge.locale.gold
							end)

							price_button_table[table.getn(price_button_table)+1] =  gameforge.locale.cancel

							local price_idx = select_table(price_button_table)

							if price_idx != table.getn(price_button_table) then -- ? ??? ?? ??? ???
								if pc.gold < guild_war_bet_price_table[price_idx] then
									say_title(gameforge.guild_war_bet._40_sayTitle)
									say(gameforge.guild_war_bet._100_say)
								else
									say_title(gameforge.guild_war_bet._40_sayTitle)
																		pc.changegold(-guild_war_bet_price_table[price_idx])
									guild.war_bet(g[s][1], bet_guild, guild_war_bet_price_table[price_idx])
									say(gameforge.guild_war_bet._110_say)
								end
							end
						end -- if guild_s != 3
					end -- if guild.is_bet(g[s][1])
				end -- if s != table.getn(gname_table)
			end
		end
	end
end

