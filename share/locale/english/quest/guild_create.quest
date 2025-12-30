quest guild_create begin
    state start begin
    end
    state run begin
        when letter begin
			send_letter(gameforge.guild_create._10_sendLetter)
		end
		when button or info begin
                 	----"12345678901234567890123456789012345678901234567890"|
            		say_title(gameforge.guild_create._10_sendLetter)
            		            		say_reward(gameforge.guild_create._20_sayReward)
            		say_item_vnum(70101)
            		say_reward(gameforge.guild_create._30_sayReward)
			        end
		when 691.party_kill begin
			set_state(reward)
		end
    end
	state reward begin
		when letter begin
			send_letter(gameforge.guild_create._40_sendLetter)
		end
		when button or info begin
			say_title(gameforge.guild_create._50_sayTitle)
                                                say_reward(gameforge.guild_create._60_sayReward)
            		say_item_vnum(70101)
                        say_reward(gameforge.guild_create._70_sayReward)
						set_state(start)
			pc.give_item2(70101)
		end
	end
end

