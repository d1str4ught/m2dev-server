quest priv_guild begin
	state start begin
		when guild_man1.chat."GM: Bonus nach Gilde" or 	guild_man2.chat."GM: Bonus nach Gilde" or guild_man3.chat."GM: Bonus nach Gilde" with pc.get_gm_level()== 5 begin

			-- Select guild
			say_title("Gildenbonus gewähren")
			say( "Gildenname eingeben" )

			local g_name = input()
			local g_id = __get_guildid_byname( g_name )
			if 0 == g_id then
				say( 'Dieser Gildenname existiert nicht.' )
				return
			end

			-- Select bonus type
			say_title("Gildenbonus gewähren")
			say('Aktueller Parameter:')
			say( __get_guild_priv_string( g_id ) )
			say('Typ wählen')

			local titles = {
				"Prozentsatz f. fallen gelassene Gegenstände", 
				"Prozentsatz f. fallen gelassenes Gold", 
				"Prozentsatz f. fallen gelassene Gold-Zehner",
				"Erfahrungsverhältnis",
			}

			local t = select(
				titles[1],
				titles[2],
				titles[3],
				titles[4],
				"Abbrechen")

			if t == 5 then
				return
			end

			-- Select the number of bonus
			say_title("Gildenbonus gewähren")
			say(string.format('%s Bonus : %s', g_name, titles[t]))
			say('')
			local g = {0,10,20,30,40,50}
			say('Wie viel?')
			local p = select(g[1]..'%',g[2]..'%',g[3]..'%',g[4]..'%',g[5]..'%',g[6]..'%', 'Abbrechen')
			if p == 7 then
				return
			end

			-- Select bonus time
			say_title("Gildenbonus gewähren")
			say(string.format('%s Bonus : %s %d%%', g_name, titles[t], g[p]))
			say('')

			say('Bonuszeit wählen')
			local v = 0
			local h = select("6 Stunden", "12 Stunden", "24 Stunden", "Direkt eingeben", "Abbrechen")
			if 5 == h then
				return
			elseif 4 == h then

				-- Enter bonus time directly
				say_title("Gildenbonus gewähren")
				say(string.format('%s Bonus : %s %d%%', g_name, titles[t], g[p]))
				say('')
				say('Bonuszeit eingeben')
				v= input()

				if v == "" then
					v = 0
				else
					v = tonumber( v )
				end

			elseif 3 == h then
				v=24
			elseif 2 == h then
				v=12
			elseif 1 == h then
				v=6
			end

			-- Confirm setting
			say_title("Gildenbonus gewähren")
			say(string.format('%s Bonus : %s %d%% (%dZeit)', g_name, titles[t], g[p], v))
			say('')
			say('Obige Einstellung übernehmen?')

			local s = select('Ja', 'Nein')
			if 1 == s then
				__give_guild_priv(g_id, t, g[p], v*60*60)
				say('Einstellung vorgenommen')
			else
				say('Abgebrochen')
			end
		end
	end
end


