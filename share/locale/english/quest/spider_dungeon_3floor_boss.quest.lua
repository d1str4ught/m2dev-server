----------------------------------
-- 거미굴 3층과 보스룸 관련 전부
--  2012.2.3 김용욱
----------------------------------
define lair_time 1200
define lair_enter_wait_time 300
define king_kill_wait_time 180
define access_limit_time 3600

quest spider_dungeon_3floor_boss begin
	state start begin
	--2, 던전 끝 시간.
		when spider_end_timer.server_timer with game.get_event_flag("spider_dead"..get_channel_id()) == 0 begin  --
			warp_all_in_area_to_area(82700, 612700, 93700,625700, 69100, 614800, 69100, 614800)
			game.set_event_flag("spider_lair_ongoing_"..get_channel_id(),0)
			game.set_event_flag("spider_lair_leader_"..get_channel_id(), 0)
			game.set_event_flag("spider_dead"..get_channel_id(),0)
			purge_area(82700, 612700, 93700,625700)
		end
		
		when spider_dead_timer.server_timer begin
			warp_all_in_area_to_area(82700, 612700, 93700,625700, 69100, 614800, 69100, 614800)
			game.set_event_flag("spider_lair_ongoing_"..get_channel_id(), 0)
			game.set_event_flag("spider_lair_leader_"..get_channel_id(), 0)
			game.set_event_flag("spider_dead"..get_channel_id(),0)
			purge_area(82700, 612700, 93700,625700)
		end
	
		when login or levelup or enter with pc.get_level() >= 50 begin
			set_state( step1 )
		end
		
		when 30130.chat.locale.spider_dungeon_3floor_boss.title_1 begin
			say(locale.spider_dungeon_3floor_boss.say_1)
		end
	end

	state step1 begin
		when 20011.chat.locale.spider_dungeon_3floor_boss.title_2 with is_test_server() begin   --테스트용
			set_state(start)
			say(locale.spider_dungeon_3floor_boss.say_2)
		end
		
		when 30130.chat.locale.spider_dungeon_3floor_boss.title_1 begin
			say(locale.spider_dungeon_3floor_boss.say_1)
		end
		
		when 20355.chat.locale.spider_dungeon_3floor_boss.title_4 begin   --경비대장에게 말을 걸어 퀘스트를 시작한다.
			
			say_title(mob_name(20355)) 
			----"12345678901234567890123456789012345678901234567890"|
			say(locale.spider_dungeon_3floor_boss.say_4)
			set_state( step2 )
		end
	end

	state step2 begin --비석에 탁본을 뜨러 가야한다.
		when 20011.chat.locale.spider_dungeon_3floor_boss.title_2 with is_test_server() begin   --테스트용
			set_state(start)
			say(locale.spider_dungeon_3floor_boss.say_2)
		end
		
		
		
		
		-----------퀘스트편지2------------
		when letter begin
			send_letter(locale.spider_dungeon_3floor_boss.title_5)

			local v = find_npc_by_vnum(30130)
			if 0 != v then
				target.vid("__TARGET__", v, mob_name(30130))
			end
		end

		when button or info begin
			say_title(locale.spider_dungeon_3floor_boss.title_5)
			say(locale.spider_dungeon_3floor_boss.say_5)
			say("")
		end

		when 30130.chat.locale.spider_dungeon_3floor_boss.title_5 begin
			target.delete("__TARGET__")
			
			say_title(pc.getname())
			----"12345678901234567890123456789012345678901234567890"|
			say(locale.spider_dungeon_3floor_boss.say_5_1)
			set_state(step3)
		end
		
		
		when 30130.chat.locale.spider_dungeon_3floor_boss.title_1 begin
			say(locale.spider_dungeon_3floor_boss.say_1)
		end
		
		when 20355.chat.locale.spider_dungeon_3floor_boss.title_4 begin
			
			say_title(mob_name(20355))
			----"12345678901234567890123456789012345678901234567890"|
			say(locale.spider_dungeon_3floor_boss.say_6)
		end
		
	end
	
	state step3 begin --탁본을 떴으니 경비에게 돌아간다.
		when 20011.chat.locale.spider_dungeon_3floor_boss.title_2 with is_test_server() begin   --테스트용
			set_state(start)
			say(locale.spider_dungeon_3floor_boss.say_2)
		end
		
		when 30130.chat.locale.spider_dungeon_3floor_boss.title_1 begin
			say(locale.spider_dungeon_3floor_boss.say_1)
		end
		
		when letter begin
			send_letter(locale.spider_dungeon_3floor_boss.title_7)

			--경비대장을 가리킨다.
			local v = find_npc_by_vnum(20355)
			if 0 != v then
				target.vid("__TARGET__", v, mob_name(20355))
			end
		end

		when button or info begin
			say_title(locale.spider_dungeon_3floor_boss.title_7)
			say(locale.spider_dungeon_3floor_boss.say_7)
			say("")
		end
		
		--을두지를 선택하면 해당 퀘스트에 관련된 대화를 나눌 수 있다.
		when 20355.chat.locale.spider_dungeon_3floor_boss.title_7 begin
			say_title(mob_name(20355))
			say(locale.spider_dungeon_3floor_boss.say_7_1)
			set_state(step4)
		end
		
	end
		
	state step4 begin  --을두지에게 탁본을 맡기자.
		when 20011.chat.locale.spider_dungeon_3floor_boss.title_2 with is_test_server() begin   --테스트용
			set_state(start)
			say(locale.spider_dungeon_3floor_boss.say_2)
		end
		
		when 30130.chat.locale.spider_dungeon_3floor_boss.title_1 begin
			say(locale.spider_dungeon_3floor_boss.say_1)
		end
		
		-----------퀘스트편지2------------
		when letter begin
			send_letter(locale.spider_dungeon_3floor_boss.title_7)

			-- 을두지를 가리킨다.
			local v = find_npc_by_vnum(20011)
			if 0 != v then
				target.vid("__TARGET__", v, mob_name(20011))
			end
		end

		when button or info begin
			say_title(locale.spider_dungeon_3floor_boss.title_7)
			say(locale.spider_dungeon_3floor_boss.say_7_2)
			say("")
		end
		
		when 20011.chat.locale.spider_dungeon_3floor_boss.title_7 begin
			target.delete("__TARGET__")
			
			say_title(mob_name(20011))
			say(locale.spider_dungeon_3floor_boss.say_7_3)
			say("")
			
			set_state(step5)
		end
	
		when 20355.chat.locale.spider_dungeon_3floor_boss.title_7 begin
			say_title(mob_name(20355))
			say(locale.spider_dungeon_3floor_boss.say_7_1)
		end
	end
	
	state step5 begin  --경비한테 편지 배달
		when 20011.chat.locale.spider_dungeon_3floor_boss.title_2 with is_test_server() begin   --테스트용
			set_state(start)
			say(locale.spider_dungeon_3floor_boss.say_2)
		end
		
		when 30130.chat.locale.spider_dungeon_3floor_boss.title_1 begin
			say(locale.spider_dungeon_3floor_boss.say_1)
		end
		
		when letter begin
			send_letter("을두지의 편지배달")

			-- 을두지를 가리킨다.
			local v = find_npc_by_vnum(20355)
			if 0 != v then
				target.vid("__TARGET__", v, mob_name(20355))
			end
		end

		when button or info begin
			say_title(locale.spider_dungeon_3floor_boss.title_8)
			say(locale.spider_dungeon_3floor_boss.say_8)
			say("")
		end
		
		when 20355.chat.locale.spider_dungeon_3floor_boss.title_9 begin
			target.delete("__TARGET__")
			say_title(mob_name(20355))
			----"12345678901234567890123456789012345678901234567890"|
			say(locale.spider_dungeon_3floor_boss.say_9)
			say("")
			
			set_state(step6)
		end	
		
		when 20011.chat.locale.spider_dungeon_3floor_boss.title_7 begin
			say_title(mob_name(20011))
			say(locale.spider_dungeon_3floor_boss.say_7_4)
			say("")
		end
		
	end
	
	state step6 begin --경비는 나만 일시킨다. 을두지와 상의하자.
		when 20011.chat.locale.spider_dungeon_3floor_boss.title_2 with is_test_server() begin   --테스트용
			set_state(start)
			say(locale.spider_dungeon_3floor_boss.say_2)
		end
		
		when 30130.chat.locale.spider_dungeon_3floor_boss.title_1 begin
			say(locale.spider_dungeon_3floor_boss.say_1)
		end
		
		when letter begin
			send_letter(locale.spider_dungeon_3floor_boss.title_9)
			
			-- 을두지를 가리킨다.
			local v = find_npc_by_vnum(20011)
			if 0 != v then
				target.vid("__TARGET__", v, mob_name(20011))
			end
		end

		when button or info begin
			say_title(locale.spider_dungeon_3floor_boss.title_9)
			say(locale.spider_dungeon_3floor_boss.say_9)
			say("")
		end

		--을두지를 선택하면 해당 퀘스트에 관련된 대화를 나눌 수 있다.
		when 20011.chat.locale.spider_dungeon_3floor_boss.title_9 begin
			target.delete("__TARGET__")
			say_title(mob_name(20011))
			say(locale.spider_dungeon_3floor_boss.say_9_1)
			
			set_state(boss_ok)
			
		end
		
	end
	
	state boss_ok begin  -- 열쇠를 만들수 있게 된 최종상태. 이제부터 거미굴 보스룸에 입장할 수 있다.
		when 20011.chat.locale.spider_dungeon_3floor_boss.title_2 with is_test_server() begin   --테스트용
			set_state(start)
			say(locale.spider_dungeon_3floor_boss.say_2)
		end
	
		when	20011.chat.locale.spider_dungeon_3floor_boss.title_9 begin
			say_title(mob_name(20011))
			say(locale.spider_dungeon_3floor_boss.say_9_2)
			wait()
			
			if pc.count_item(30025) > 0 and pc.count_item(30056) > 0 and pc.count_item(30057) > 0 and pc.count_item(30058) > 0 and pc.count_item(30059) > 0 and pc.count_item(30326) > 0 then
				say_title(mob_name(20011))
				say(locale.spider_dungeon_3floor_boss.say_9_3)
				pc.remove_item(30025, 1)
				pc.remove_item(30056, 1)
				pc.remove_item(30057, 1)
				pc.remove_item(30058, 1)
				pc.remove_item(30059, 1)
				pc.remove_item(30326, 1)
				if math.random(1,2000) <= 1000 then
					say(locale.spider_dungeon_3floor_boss.say_9_4)
					pc.give_item2(30324, 1)
				else
					say(locale.spider_dungeon_3floor_boss.say_9_5)
				end
			else
				say_title(mob_name(20011))
				say(locale.spider_dungeon_3floor_boss.say_9_6)
			end
		end
		
		


		when 30130.chat.locale.spider_dungeon_3floor_boss.title_1 begin
			if game.get_event_flag("spider_lair_ongoing_"..get_channel_id()) == 1 then
			
				local starttime = game.get_event_flag("spider_lair_start_time_"..get_channel_id())
				local current_time = get_global_time()
				
				if party.get_leader_pid() == game.get_event_flag("spider_lair_leader_"..get_channel_id()) then
				
					if  starttime +  lair_enter_wait_time >= current_time  and party.get_leader_pid() == game.get_event_flag("spider_lair_leader_"..get_channel_id()) and game.get_event_flag("spider_lair_ongoing_"..get_channel_id()) == 1 then
						say(locale.spider_dungeon_3floor_boss.say_10) -- 테스트용
						local warp = select("확인","취소")
						if warp == 1 then
							pc.setqf("firstIn",1)
							pc.setqf("retry_limit_time", starttime + lair_time + access_limit_time )
							set_state(inLair)
							pc.warp(88100,614800)
							return
						end
					else
						say(locale.spider_dungeon_3floor_boss.say_11) -- 테스트용
						return
					end
				else
					local remain_time = game.get_event_flag("spider_lair_end_time_"..get_channel_id() ) - get_global_time()
					say(locale.spider_dungeon_3floor_boss.say_12)
					say(""..remain_time..locale.spider_dungeon_3floor_boss.say_13)
					return
				end	
			elseif  pc.getqf("retry_limit_time") > get_global_time() then
				local access_limit = pc.getqf("retry_limit_time") - get_global_time()
				say(locale.spider_dungeon_3floor_boss.say_14)
				say(""..access_limit..locale.spider_dungeon_3floor_boss.say_15)
				return
			elseif party.is_leader()   then
				 if false == pc.can_warp() then
					  say(locale.spider_dungeon_3floor_boss.say_16)
					  return
				 end
				if pc.count_item(30324) > 0 then
					say(locale.spider_dungeon_3floor_boss.say_17)
					local warp = select(locale.confirm,locale.cancel)
					if warp == 1 then
						
						set_state(inLair)
						
						pc.remove_item(30324, 1)
						
						mob.spawn(2094,369,551,0,0)
						
						--값 설정.
						game.set_event_flag("spider_lair_ongoing_"..get_channel_id()		,			1)
						game.set_event_flag("spider_lair_start_time_"..get_channel_id()	, get_global_time())
						game.set_event_flag("spider_lair_end_time_"..get_channel_id()		, get_global_time() + lair_time)
						game.set_event_flag("spider_lair_leader_"..get_channel_id()			, party.get_leader_pid())
						
						pc.setqf("retry_limit_time", get_global_time() + lair_time + access_limit_time )
						pc.setqf("firstIn",1)
						
						
						server_timer("spider_end_timer", lair_time )
						
						
						pc.warp(88100,614800)
					end
					return
				else
					say(locale.spider_dungeon_3floor_boss.say_18)
					return
				end
			else --리더 아니다.
				say(locale.spider_dungeon_3floor_boss.say_19)
				return
			end
			
		end
		

	end

	state inLair begin
		when 20011.chat.locale.spider_dungeon_3floor_boss.title_2 with is_test_server() begin   --테스트용
			set_state(start)
			say(locale.spider_dungeon_3floor_boss.say_2)
		end
		
	
	
		when login  begin 
			if pc.getqf("firstIn") == 1  and party.get_leader_pid() == game.get_event_flag("spider_lair_leader_"..get_channel_id()) then
				pc.setqf("firstIn",0)
			elseif pc.getx() >= 827 and pc.getx() <= 937 and pc.gety() >= 6127 and  pc.gety() <= 6257 then 
				pc.warp(95900,571000)
				pc.remove_item(30327, 1)
			else
				pc.remove_item(30327, 1)
				set_state( boss_ok )
				local limit = pc.getqf("retry_limit_time")
				
				if limit > ( get_global_time() + access_limit_time ) then
					limit = ( get_global_time() + access_limit_time )
				end
				pc.setqf("retry_limit_time", limit )
				
				local duration = limit - get_global_time()
			end
		end

		
		when 2092.kill begin --대왕거미 죽임
			server_timer("spider_dead_timer", king_kill_wait_time)
			game.set_event_flag("spider_dead"..get_channel_id(), 1)
			notice_in_map(locale.spider_dungeon_3floor_boss.say_20)
		end
		
		
		when 2095.kill begin --거미알 죽임
			local kingVid = game.get_event_flag("king_vid")
			local remain_egg = game.get_event_flag("remain_egg"..get_channel_id())
			
			if remain_egg > 0 then
				remain_egg = remain_egg - 1
				game.set_event_flag("remain_egg"..get_channel_id(), remain_egg)
			end
			
			--거미의 공격력 보정
			 npc.set_vid_attack_mul(kingVid, 10/(remain_egg + 1))
			 
			 --거미가 받는 피해량 보정
			 npc.set_vid_damage_mul(kingVid, 10/(remain_egg + 1))
		end
		
		
		--  2012.4.5 이상현 리젠위치 수정
		when 30327.use with pc.getx() >= 827 and pc.get_map_index() == 217 and pc.getx() <= 937 and pc.gety() >= 6127 and  pc.gety() <= 6257 begin
			--say("맵번호 : "..pc.get_map_index())
			pc.remove_item(30327, 1)
			i = mob.spawn(2095,400,566,0,0)
			mob.spawn(2095,400,594,0,0)
			mob.spawn(2095,362,600,0,0)
			mob.spawn(2095,337,599,0,0)
			mob.spawn(2095,335,581,0,0)
			mob.spawn(2095,344,562,0,0)
			mob.spawn(2095,364,588,0,0)
			mob.spawn(2095,379,562,0,0)
			mob.spawn(2095,368,525,0,0)
			
			
			local kingVid = mob.spawn(2092,367,588,0,0)
			game.set_event_flag("king_vid",kingVid)
			game.set_event_flag("remain_egg",9)
		end
		
	end
end
