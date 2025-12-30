quest skill_reset2 begin
    state start begin
        when 9006.chat.gameforge.skill_reset2._10_npcChat begin
            if pc.level < 5 then
                say_title(gameforge.couple_ring._20_sayTitle)
                say(gameforge.skill_reset2._20_say)
                return
            end
            if pc.level >30 then
                say_title(gameforge.couple_ring._20_sayTitle)
                 say(string.format(gameforge.skill_reset2._30_say, pc.level))
                 return
             end
            if  pc.get_skill_group()==0 then
                say_title(gameforge.couple_ring._20_sayTitle)
                say(gameforge.skill_reset2._40_say)
                return
            end

            local cost = 10000 + pc.level * 2000
            local s = 0

            if not pc.has_master_skill() then
                say_title(gameforge.couple_ring._20_sayTitle)
                say(string.format(gameforge.skill_reset2._50_say, cost))
                s =  select(gameforge.skill_reset2._10_npcChat, gameforge.skill_reset2._60_select)
            else
                say_title(gameforge.couple_ring._20_sayTitle)
                say(gameforge.skill_reset2._70_say)
                wait()
                say(string.format(gameforge.skill_reset2._80_say, cost))
                s =  select(gameforge.skill_reset2._90_select, gameforge.locale.cancel)
            end
            if 2==s then
                say_title(gameforge.couple_ring._20_sayTitle)
                say(gameforge.skill_reset2._110_say)
                return
            end
            if pc.money < cost then
                say_title(gameforge.couple_ring._20_sayTitle)
                say(gameforge.skill_reset2._120_say)
                return
            end
            pc.changegold(-cost)
            pc.clear_skill()
            pc.set_skill_group(0)
            set_quest_state("skill_group","run")
        end

        when 71100.use begin
            if pc.level <=31 or pc.level >=98 then
                say_title(item_name(71100))
                say(gameforge.skill_reset2._140_say)
                return
            end
            
            if  pc.get_skill_group()==0 then
                say_title(item_name(71100))
                say(gameforge.skill_reset2._40_say)
                return
            end
            
            say_title(item_name(71100))
            say(gameforge.skill_reset2._130_say)
            s =  select(locale.yes, locale.no)
            if 2==s then
                return
            end
            
            pc.clear_skill()
            pc.set_skill_group(0)
            horse.set_level(horse_level)
            char_log(0, "RESET_SKILL", "RESET_SKILL_BY_71100")
            pc.remove_item(71100) ;
            set_quest_state("skill_group","run")
        end
    end
end

