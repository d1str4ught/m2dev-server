quest guild_ranking begin
	state start begin
		when guild_man1.chat.gameforge.locale.show_guild_ranking_around or guild_man2.chat.gameforge.locale.show_guild_ranking_around or guild_man3.chat.gameforge.locale.show_guild_ranking_around with pc.hasguild() begin
			say_title(gameforge.find_squareguard._30_sayTitle)
			say(string.format(gameforge.guild_ranking._10_say, guild.around_ranking_string()))
		end
		when guild_man1.chat.gameforge.locale.show_guild_ranking_top or guild_man2.chat.gameforge.locale.show_guild_ranking_top or guild_man3.chat.gameforge.locale.show_guild_ranking_top with pc.hasguild() begin
			say_title(gameforge.find_squareguard._30_sayTitle)
			say(string.format(gameforge.guild_ranking._20_say, guild.high_ranking_string()))
		end
		when guild_man1.chat.gameforge.locale.show_guild_cur_score or guild_man2.chat.gameforge.locale.show_guild_cur_score or guild_man3.chat.gameforge.locale.show_guild_cur_score with pc.hasguild() begin
			say_title(gameforge.find_squareguard._30_sayTitle)
			say(string.format(gameforge.guild_ranking._30_say, guild.get_rank()))
			say(string.format(gameforge.guild_ranking._35_say, guild.get_ladder_point()))
		end
	end
end


