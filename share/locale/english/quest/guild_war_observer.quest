quest guild_war_observer begin
    state start begin
	when guild_war_observer1.chat.locale.guild.war_list_button begin
	    local g = guild.get_warp_war_list() -- return format {{1,2}, {3,4}}
	    local gname_table = {}

	    table.foreachi(g,
	    function(n, p) 
		gname_table[n] = guild.get_name(p[1]).." vs "..guild.get_name(p[2])
	    end)

	    if table.getn(g) == 0 then
		say(locale.guild.war_list_none)
	    else
		gname_table[table.getn(g)+1] = locale.confirm
		say(locale.guild.war_list_choose)

		local s = select_table(gname_table)

		if s != table.getn(gname_table) then
		    pc.warp_to_guild_war_observer_position(g[s][1], g[s][2])
		end
	    end
	end
	when guild_war_observer2.chat.locale.guild.war_list_button begin
	    local g = guild.get_warp_war_list() -- return format {{1,2}, {3,4}}
	    local gname_table = {}

	    table.foreachi(g,
	    function(n, p) 
		gname_table[n] = guild.get_name(p[1]).." vs "..guild.get_name(p[2])
	    end)

	    if table.getn(g) == 0 then
		say(locale.guild.war_list_none)
	    else
		gname_table[table.getn(g)+1] = locale.confirm
		say(locale.guild.war_list_choose)

		local s = select_table(gname_table)

		if s != table.getn(gname_table) then
		    pc.warp_to_guild_war_observer_position(g[s][1], g[s][2])
		end
	    end
	end
	when guild_war_observer3.chat.locale.guild.war_list_button begin
	    local g = guild.get_warp_war_list() -- return format {{1,2}, {3,4}}
	    local gname_table = {}

	    table.foreachi(g,
	    function(n, p) 
		gname_table[n] = guild.get_name(p[1]).." vs "..guild.get_name(p[2])
	    end)

	    if table.getn(g) == 0 then
		say(locale.guild.war_list_none)
	    else
		gname_table[table.getn(g)+1] = locale.confirm
		say(locale.guild.war_list_choose)

		local s = select_table(gname_table)

		if s != table.getn(gname_table) then
		    pc.warp_to_guild_war_observer_position(g[s][1], g[s][2])
		end
	    end
	end
    end
end
