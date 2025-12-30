quest main_quest_lv1 begin
	state start begin
		when login or levelup with pc.get_level() == 1 begin
			set_state ( gotoinfomation )
		end
	end
	state gotoinfomation begin
		when letter begin
			send_letter(gameforge.main_quest_lv1._10_sendLetter)
		end
		when button or info begin
			say_title(gameforge.main_quest_lv1._10_sendLetter)
			say(gameforge.main_quest_lv1._20_say)
			set_state ( gototeacher )
		end
	end

	state gototeacher begin
		when letter begin
			local v=find_npc_by_vnum(20354)
			if 0==v then
			else
				target.vid("__TARGET__", v, gameforge.main_quest_lv1._30_targetVid)
			end
		end

		when button or info begin
			say_title(gameforge.main_quest_lv1._40_sayTitle)
						say_reward(gameforge.main_quest_lv1._50_sayReward)
					end
		when __TARGET__.target.click begin
			target.delete("__TARGET__")
			say_title(gameforge.main_quest_lv1._60_sayTitle)
			say(gameforge.main_quest_lv1._70_say)
			wait()
			say_title(gameforge.main_quest_lv1._60_sayTitle)

			say(gameforge.main_quest_lv1._80_say)
			clear_letter()
			set_state (__COMPLETE__)
			set_quest_state("find_squareguard","find")
			set_quest_state("main_quest_lv2","run")

		end
	end
	state __COMPLETE__ begin
	end
end


