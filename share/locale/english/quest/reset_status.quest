quest reset_status begin
    state start begin
        when 71103.use or 71104.use or 71105.use or 71106.use begin
            local name = { gameforge.reset_status._10_say, gameforge.reset_status._20_say, gameforge.reset_status._30_say, gameforge.reset_status._40_say}
            local idx = item.get_vnum() - 71103
            local func = { pc.get_ht, pc.get_iq, pc.get_st, pc.get_dx }

            if func[idx+1]() == 1 then
				say_title(gameforge.reset_scroll._10_sayTitle)
                say(name[idx+1]..gameforge.reset_status._50_say)
                say(name[idx+1]..gameforge.reset_status._60_say)
                say("")
                return
            end
		
			say_title(gameforge.reset_scroll._10_sayTitle)
            say(name[idx+1]..gameforge.reset_status._70_say)
            say(gameforge.reset_status._80_say)
            say("")
            say(gameforge.reset_status._90_say)
		
            say("")

            local s = select(gameforge.reset_status._100_say, gameforge.reset_status._110_say)

            if s == 1 then
                if pc.reset_status( idx ) == true then
					say_title(gameforge.reset_scroll._10_sayTitle)
                    say(gameforge.reset_status._120_say)
                    pc.remove_item(item.get_vnum())
                else
					say_title(gameforge.reset_scroll._10_sayTitle)
                    say(gameforge.reset_status._130_say)
                end
            end
        end
    end
end
