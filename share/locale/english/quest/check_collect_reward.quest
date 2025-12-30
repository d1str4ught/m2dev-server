quest check_collect_reward begin
	state start begin
		when 20018.chat.gameforge.check_collect_reward._010_npcChat   begin
			say_title(gameforge.check_collect_reward._020_say_title)
			say(gameforge.check_collect_reward._030_say)
			wait("")
			say_pc_name()
			say(gameforge.check_collect_reward._040_say)
			wait("")
			say_title(gameforge.check_collect_reward._020_say_title)
			say(gameforge.check_collect_reward._050_say)
			
			local value = "557528158"
			local a = get_quest_state("collect_quest_lv30")
            local b = get_quest_state("collect_quest_lv40")
            local c = get_quest_state("collect_quest_lv50")
            local d = get_quest_state("collect_quest_lv60")
            local e = get_quest_state("collect_quest_lv70")
            local f = get_quest_state("collect_quest_lv80")
			local g = get_quest_state("collect_quest_lv85")
            local h = get_quest_state("collect_quest_lv90")
            local i = get_quest_state("collect_quest_lv92")
            local j = get_quest_state("collect_quest_lv94")
            local k = get_quest_state("collect_quest_lv96")
	

            local a_ = string.format("%d",  a)
            local b_ = string.format("%d",  b)
            local c_ = string.format("%d",  c)
            local d_ = string.format("%d",  d)
			local e_ = string.format("%d",  e)
			local f_ = string.format("%d",  f)
            local g_ = string.format("%d",  g)
            local h_ = string.format("%d",  h)
            local i_ = string.format("%d",  i)
            local j_ = string.format("%d",  j)
            local k_ = string.format("%d",  k)

			affect.remove_all_collect() -- remove all

			if   a_== value then
				affect.add_collect(apply.MOV_SPEED, 10, 60*60*24*365*60)
			end
			if   b_== value then
				affect.add_collect(apply.ATT_SPEED,5,60*60*24*365*60)
			end
			if   c_== value then
				affect.add_collect(apply.DEF_GRADE_BONUS,60,60*60*24*365*60)
			end
			if   d_== value then
				affect.add_collect(apply.ATT_GRADE_BONUS,50,60*60*24*365*60)
			end

			if e_== value   then
				affect.add_collect(apply.MOV_SPEED,11,60*60*24*365*60)
				affect.add_collect_point(POINT_DEF_BONUS,10,60*60*24*365*60) --60³â
			end

			if   f_== value then
				affect.add_collect(apply.ATT_SPEED,6,60*60*24*365*60) --60³â
				affect.add_collect_point(POINT_ATT_BONUS,10,60*60*24*365*60) --60³â
			end

			if g_ == value then
				affect.add_collect_point(POINT_RESIST_WARRIOR,10,60*60*24*365*60) --60 year
				affect.add_collect_point(POINT_RESIST_ASSASSIN,10,60*60*24*365*60) --60 year
				affect.add_collect_point(POINT_RESIST_SURA,10,60*60*24*365*60) --60 year
				affect.add_collect_point(POINT_RESIST_SHAMAN,10,60*60*24*365*60) --60 year
       		end
			
			if h_ == value then
				affect.add_collect_point(POINT_ATTBONUS_WARRIOR,8,60*60*24*365*60)
				affect.add_collect_point(POINT_ATTBONUS_ASSASSIN,8,60*60*24*365*60)
				affect.add_collect_point(POINT_ATTBONUS_SURA,8,60*60*24*365*60)
				affect.add_collect_point(POINT_ATTBONUS_SHAMAN,8,60*60*24*365*60)
			end

			if i_ == value then
				local reward = pc.getf("collect_quest_lv92", "reward")

				if reward == 1 then
					affect.add_collect(1, 1000, 60*60*24*365*60) -- hp index == 1, hp +1000
				elseif reward == 2 then
					affect.add_collect(apply.DEF_GRADE_BONUS, 120, 60*60*24*365*60)
				elseif reward == 3 then
					affect.add_collect(apply.ATT_GRADE_BONUS, 51, 60*60*24*365*60)
				end
			end

			if j_ == value then
				local reward = pc.getf("collect_quest_lv94", "reward")
				if reward == 1 then
					affect.add_collect(1, 1100, 60*60*24*365*60) 
				elseif reward == 2 then
					affect.add_collect(apply.DEF_GRADE_BONUS, 140, 60*60*24*365*60)
				elseif reward == 3 then
					affect.add_collect(apply.ATT_GRADE_BONUS, 60, 60*60*24*365*60)
				end
			end

			if k_ == value then
				local reward = pc.getf("collect_quest_lv96", "reward")
				if reward == 1 then
					affect.add_collect(1, 1000, 60*60*24*365*60) 
				elseif reward == 2 then
					affect.add_collect(apply.DEF_GRADE_BONUS, 120, 60*60*24*365*60)
				elseif reward == 3 then
					affect.add_collect(apply.ATT_GRADE_BONUS, 50, 60*60*24*365*60)
				end
			end
			
			say_title(gameforge.check_collect_reward._020_say_title)
			say(gameforge.check_collect_reward._060_say)
		end
	end

end
