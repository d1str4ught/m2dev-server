-- #################################################################
-- ##                                                             ##
-- ##                        LOCALE.LUA                           ##
-- ##                                                             ##
-- ## Background:                                                 ##
-- ##   This file provides Metin2 with one big array!             ##
-- ##   This array contains some configurations values and a lot  ##
-- ##   of strings to translate. Also every quest-file contains   ##
-- ##   string to translate.                                      ##
-- ##                                                             ##
-- ## Gameforge-Way-To-Do:                                        ##
-- ##   We extract everything we need to translate from this file ##
-- ##   into one big "Key = Value"-file. Simple key-value-files   ##
-- ##   can be managed by our localisation-tool.                  ##
-- ##   Also we extract every string out of every .quest-file and ##
-- ##   generate a lots of new keys. These keys are used in the   ##
-- ##   .quest-files.                                             ##
-- ##                                                             ##
-- ##   !! The key-value-file is called 'translate.lua'           ##
-- ##                                                             ##
-- ## The Advantage:                                              ##
-- ##   1) We can easily translate everything with our tool       ##
-- ##   2) We cant create syntax-errors in this file              ##
-- ##   3) We cant create syntax-errors in the quest-files        ##
-- ##   4) We can compare the quest-files between two languages   ##
-- ##      to find differences if something is broken in only     ##
-- ##      country.                                               ##
-- ##                                                             ##
-- #################################################################

locale = {}
locale.man_postfix = gameforge.locale.man_postfix
locale.woman_postfix = gameforge.locale.woman_postfix
locale.confirm = gameforge.locale.confirm
locale.reward = gameforge.locale.reward
locale.exp = gameforge.locale.exp
locale.count_prefix = gameforge.locale.count_prefix
locale.count_postfix = gameforge.locale.count_postfix
locale.level = gameforge.locale.level
locale.quest_word = gameforge.locale.quest_word
locale.complete = gameforge.locale.complete
locale.start = gameforge.locale.start
locale.chat = gameforge.locale.chat
locale.eliminate_on_begin = gameforge.locale.eliminate_on_begin
locale.eliminate_on_end = gameforge.locale.eliminate_on_end
locale.yes = gameforge.locale.yes
locale.no = gameforge.locale.no
locale.cancel = gameforge.locale.cancel
locale.gold = gameforge.locale.gold
locale.need_item_prefix = gameforge.locale.need_item_prefix
locale.need_item_postfix = gameforge.locale.need_item_postfix
locale.map_name = {
	[61] = gameforge.locale.map_name_1,
	[62] = gameforge.locale.map_name_2,
	[63] = gameforge.locale.map_name_3,
	[64] = gameforge.locale.map_name_4,
}
locale.empire_names = {
	[0] = gameforge.locale.empire_names_1,
	[1] = gameforge.locale.empire_names_2,
	[2] = gameforge.locale.empire_names_3,
	[3] = gameforge.locale.empire_names_4,
}
locale.item_drop_pct = gameforge.locale.item_drop_pct
locale.gold_drop_pct = gameforge.locale.gold_drop_pct
locale.tengold_drop_pct = gameforge.locale.tengold_drop_pct
locale.exp_pct = gameforge.locale.exp_pct
locale.show_guild_ranking_top = gameforge.locale.show_guild_ranking_top
locale.show_guild_ranking_around = gameforge.locale.show_guild_ranking_around
locale.show_guild_cur_score = gameforge.locale.show_guild_cur_score
locale.guild_around_rank_msg = gameforge.locale.guild_around_rank_msg
locale.guild_top_rank_msg = gameforge.locale.guild_top_rank_msg
locale.guild_rank_head = gameforge.locale.guild_rank_head
locale.guild_your_rank1 = gameforge.locale.guild_your_rank1
locale.guild_your_rank2 = gameforge.locale.guild_your_rank2
locale.guild_your_rank3 = gameforge.locale.guild_your_rank3
locale.deviltower_man_chat = gameforge.locale.deviltower_man_chat
locale.deviltower_man_say = gameforge.locale.deviltower_man_say
locale.deviltower_man_say_you_cant = gameforge.locale.deviltower_man_say_you_cant 
locale.deviltower_enter = gameforge.locale.deviltower_enter
locale.deviltower_no_enter = gameforge.locale.deviltower_no_enter
locale.forked_man_chat = gameforge.locale.forked_man_chat
locale.forked_man_say = gameforge.locale.forked_man_say
locale.forked_man_say_cant = gameforge.locale.forked_man_say_cant
locale.forked_enter = gameforge.locale.forked_enter
locale.forked_no_enter = gameforge.locale.forked_no_enter
locale.forked_open_gate = gameforge.locale.forked_open_gate
locale.forked_kill_boss = gameforge.locale.forked_kill_boss
locale.forked_condition = gameforge.locale.forked_condition
locale.forked_condition2 = gameforge.locale.forked_condition2
locale.forked_rule = gameforge.locale.forked_rule
locale.forked_rule_sungzi = gameforge.locale.forked_rule_sungzi
locale.login_notice = gameforge.locale.login_notice
locale.NOTICE_COLOR = color256(255, 230, 186)
locale.NORMAL_COLOR = color256(196, 196, 196)
locale.QUEST_TEMP_REWARD = locale.NOTICE_COLOR .. gameforge.locale.quest_temp_reward_1 .. locale.NORMAL_COLOR .. gameforge.locale.quest_temp_reward_2 

locale.yeonnahwan = {}
locale.yeonnahwan.start_level_begin = 99
locale.yeonnahwan.start_level_end = 99
locale.yeonnahwan.start_probability = 1
locale.yeonnahwan.end_level = 99
locale.yeonnahwan.kill_count = 1
locale.yeonnahwan.event_item = gameforge.locale.yeonnahwan.event_item
locale.yeonnahwan.find_yeonnahwan_label = gameforge.locale.yeonnahwan.find_yeonnahwan_label
locale.yeonnahwan.find_yeonnahwan_text = locale.NOTICE_COLOR .. gameforge.locale.yeonnahwan.find_yeonnahwan_text_1 .. locale.NORMAL_COLOR .. gameforge.locale.yeonnahwan.find_yeonnahwan_text_2
locale.yeonnahwan.find_eulduji_label = gameforge.locale.yeonnahwan.find_eulduji_label
locale.yeonnahwan.find_eulduji_text = locale.NOTICE_COLOR .. gameforge.locale.yeonnahwan.find_eulduji_text_1 .. locale.NORMAL_COLOR .. gameforge.locale.yeonnahwan.find_eulduji_text_2
locale.yeonnahwan.report_label = gameforge.locale.yeonnahwan.report_label
locale.yeonnahwan.report_text = gameforge.locale.yeonnahwan.report_text
locale.yeonnahwan.kill_unggwi_label = gameforge.locale.yeonnahwan.kill_unggwi_label
locale.yeonnahwan.kill_unggwi_text = locale.NOTICE_COLOR .. gameforge.locale.yeonnahwan.kill_unggwi_text_1 .. locale.NORMAL_COLOR .. gameforge.locale.yeonnahwan.kill_unggwi_text_2

locale.huanso = {}
locale.huanso.start_level_begin = 32
locale.huanso.start_level_end = 35
locale.huanso.start_probability = 3
locale.huanso.end_level = 38
locale.huanso.kill_count = 3
locale.huanso.event_item = 30102
locale.huanso.order_label = gameforge.locale.huanso.order_label
locale.huanso.order_text = locale.NOTICE_COLOR .. gameforge.locale.huanso.order_text_1 .. locale.NORMAL_COLOR .. gameforge.locale.huanso.order_text_2
locale.huanso.too_late = gameforge.locale.huanso.too_late
locale.huanso.find_label = gameforge.locale.huanso.find_label
locale.huanso.find_text = locale.NOTICE_COLOR .. gameforge.locale.huanso.find_text_1 .. locale.NORMAL_COLOR .. gameforge.locale.huanso.find_text_2
locale.huanso.kill_label = gameforge.locale.huanso.kill_label
locale.huanso.kill_text = locale.NOTICE_COLOR .. gameforge.locale.huanso.kill_text_1 .. locale.NORMAL_COLOR .. gameforge.locale.huanso.kill_text_2
locale.huanso.make_label = gameforge.locale.huanso.make_label
locale.huanso.make_text = locale.NOTICE_COLOR .. gameforge.locale.huanso.make_text_1 .. locale.NORMAL_COLOR .. gameforge.locale.huanso.make_text_2
locale.huanso.deliver_label = gameforge.locale.huanso.deliver_label
locale.huanso.deliver_text = locale.NOTICE_COLOR .. gameforge.locale.huanso.deliver_text_1 .. locale.NORMAL_COLOR .. gameforge.locale.huanso.deliver_text_2
locale.huanso.success_label = gameforge.locale.huanso.success_label
locale.huanso.success_text = locale.NOTICE_COLOR .. gameforge.locale.huanso.success_text_1 .. locale.NORMAL_COLOR .. gameforge.locale.huanso.success_text_2
locale.huanso.failure_label = gameforge.locale.huanso.failure_label
locale.huanso.failure_text = locale.NOTICE_COLOR .. gameforge.locale.huanso.failure_text_1 .. locale.NORMAL_COLOR .. gameforge.locale.huanso.failure_text_2

locale.yuhwan = {}
locale.yuhwan.start_level_begin = 40
locale.yuhwan.start_level_end = 43
locale.yuhwan.start_probability = 3
locale.yuhwan.end_level = 45
locale.yuhwan.kill_count = 3
locale.yuhwan.event_item = 30102
locale.yuhwan.find_label = gameforge.locale.yuhwan.find_label
locale.yuhwan.find_text = locale.NOTICE_COLOR .. gameforge.locale.yuhwan.find_text_1 .. locale.NORMAL_COLOR .. gameforge.locale.yuhwan.find_text_2
locale.yuhwan.too_late = gameforge.locale.yuhwan.too_late
locale.yuhwan.kill_label = gameforge.locale.yuhwan.kill_label
locale.yuhwan.kill_text = locale.NOTICE_COLOR .. gameforge.locale.yuhwan.kill_text_1 .. locale.NORMAL_COLOR .. gameforge.locale.yuhwan.kill_text_2
locale.yuhwan.success_info_label = gameforge.locale.yuhwan.success_info_label
locale.yuhwan.success_info_text = locale.NOTICE_COLOR .. gameforge.locale.yuhwan.success_info_text_1 .. locale.NORMAL_COLOR .. gameforge.locale.yuhwan.success_info_text_2
locale.yuhwan.failure_info_label = gameforge.locale.yuhwan.failure_info_label
locale.yuhwan.failure_info_text = locale.NOTICE_COLOR .. gameforge.locale.yuhwan.failure_info_text_1 .. locale.NORMAL_COLOR .. gameforge.locale.yuhwan.failure_info_text_2

locale.deokbae = {}
locale.deokbae.start_level_begin = 80
locale.deokbae.start_level_end = 80
locale.deokbae.start_probability = 3
locale.deokbae.end_level = 40
locale.deokbae.kill_count = 3
locale.deokbae.event_item = 30102
locale.deokbae.find_deokbae_label = gameforge.locale.deokbae.find_deokbae_label
locale.deokbae.find_deokbae_text = locale.NOTICE_COLOR .. gameforge.locale.deokbae.find_deokbae_text_1 .. locale.NORMAL_COLOR .. gameforge.locale.deokbae.find_deokbae_text_2
locale.deokbae.too_late = gameforge.locale.deokbae.too_late
locale.deokbae.kill_label = gameforge.locale.deokbae.kill_label
locale.deokbae.kill_text = locale.NOTICE_COLOR .. gameforge.locale.deokbae.kill_text_1 .. locale.NORMAL_COLOR .. gameforge.locale.deokbae.kill_text_2
locale.deokbae.success_info_label = gameforge.locale.deokbae.success_info_label
locale.deokbae.success_info_text = locale.NOTICE_COLOR .. gameforge.locale.deokbae.success_info_text_1 .. locale.NORMAL_COLOR .. gameforge.locale.deokbae.success_info_text_2
locale.deokbae.failure_info_label = gameforge.locale.deokbae.failure_info_label
locale.deokbae.failure_info_text = locale.NOTICE_COLOR .. gameforge.locale.deokbae.failure_info_text_1 .. locale.NORMAL_COLOR .. gameforge.locale.deokbae.failure_info_text_2

locale.bookworm = {}
locale.bookworm.start_level_begin = 28
locale.bookworm.start_level_end = 31
locale.bookworm.start_probability = 3
locale.bookworm.end_level = 34
locale.bookworm.kill_count = 3
locale.bookworm.talk = gameforge.locale.bookworm.talk
locale.bookworm.aranyeo_talk = gameforge.locale.bookworm.aranyeo_talk
locale.bookworm.etc_shop_talk_about_bookworm = gameforge.locale.bookworm.etc_shop_talk_about_bookworm
locale.bookworm.talk_about_milgyo_book = gameforge.locale.bookworm.talk_about_milgyo_book
locale.bookworm.do_you_find_the_book = gameforge.locale.bookworm.do_you_find_the_book
locale.bookworm.do_you_mean_this_book = gameforge.locale.bookworm.do_you_mean_this_book
locale.bookworm.START_say = gameforge.locale.bookworm.start_say
locale.bookworm.START_say2 = gameforge.locale.bookworm.start_say2
locale.bookworm.aranyeo_START_say = gameforge.locale.bookworm.aranyeo_start_say
locale.bookworm.aranyeo_START_say2 = gameforge.locale.bookworm.aranyeo_start_say2
locale.bookworm.etc_shop_START_say = gameforge.locale.bookworm.etc_shop_start_say
locale.bookworm.etc_shop_START_say2 = gameforge.locale.bookworm.etc_shop_start_say2
locale.bookworm.START_find_bookworm_label = gameforge.locale.bookworm.start_find_bookworm_label
locale.bookworm.START_find_bookworm_text = locale.NOTICE_COLOR .. gameforge.locale.bookworm.start_find_bookworm_text_1 .. locale.NORMAL_COLOR .. gameforge.locale.bookworm.start_find_bookworm_text_2
locale.bookworm.ORDER_say1 = gameforge.locale.bookworm.order_say1
locale.bookworm.ORDER_say2 = gameforge.locale.bookworm.order_say2
locale.bookworm.ORDER_accept = gameforge.locale.bookworm.order_accept
locale.bookworm.ORDER_refuse = gameforge.locale.bookworm.order_refuse
locale.bookworm.ORDER_accept_answer = gameforge.locale.bookworm.order_accept_answer
locale.bookworm.ORDER_refuse_answer = gameforge.locale.bookworm.order_refuse_answer
locale.bookworm.ORDER_find_book_label = gameforge.locale.bookworm.order_find_book_label
locale.bookworm.ORDER_find_book_text = locale.NOTICE_COLOR .. gameforge.locale.bookworm.order_find_book_text_1 .. locale.NORMAL_COLOR .. gameforge.locale.bookworm.order_find_book_text_2
locale.bookworm.ORDER_too_late = gameforge.locale.bookworm.order_too_late
locale.bookworm.ACCEPT_success_say = locale.NOTICE_COLOR .. gameforge.locale.bookworm.accept_success_say_1 .. locale.NORMAL_COLOR .. gameforge.locale.bookworm.accept_success_say_2
locale.bookworm.ACCEPT_failure_say = locale.NOTICE_COLOR .. gameforge.locale.bookworm.accept_failure_say_1 .. locale.NORMAL_COLOR .. gameforge.locale.bookworm.accept_failure_say_2
locale.bookworm.ACCEPT_ask = gameforge.locale.bookworm.accept_ask
locale.bookworm.ACCEPT_success_info_label = gameforge.locale.bookworm.accept_success_info_label
locale.bookworm.ACCEPT_success_info_text = locale.NOTICE_COLOR .. gameforge.locale.bookworm.accept_success_info_text_1 .. locale.NORMAL_COLOR .. gameforge.locale.bookworm.accept_success_info_text_2
locale.bookworm.ACCEPT_failure_info_label = gameforge.locale.bookworm.accept_failure_info_label
locale.bookworm.ACCEPT_failure_info_text = locale.NOTICE_COLOR .. gameforge.locale.bookworm.accept_failure_info_text_1 .. locale.NORMAL_COLOR .. gameforge.locale.bookworm.accept_failure_info_text_2
locale.bookworm.SUCCESS_thanks = gameforge.locale.bookworm.success_thanks
locale.bookworm.COMPLETE_say = gameforge.locale.bookworm.complete_say
locale.bookworm.aranyeo_COMPLETE_say = gameforge.locale.bookworm.aranyeo_complete_say
locale.bookworm.aranyeo_COMPLETE_say2 = gameforge.locale.bookworm.aranyeo_complete_say2

locale.old_pirate = {}
locale.old_pirate.start_level_begin = 48
locale.old_pirate.start_level_end = 51
locale.old_pirate.start_probability = 3
locale.old_pirate.end_level = 54
locale.old_pirate.kill_count = 3
locale.old_pirate.talk = gameforge.locale.old_pirate.talk
locale.old_pirate.baekgo_talk = gameforge.locale.old_pirate.baekgo_talk
locale.old_pirate.etc_shop_talk_about_old_pirate = gameforge.locale.old_pirate.etc_shop_talk_about_old_pirate
locale.old_pirate.talk_about_medicine = gameforge.locale.old_pirate.talk_about_medicine
locale.old_pirate.do_you_get_the_medicine = gameforge.locale.old_pirate.do_you_get_the_medicine
locale.old_pirate.do_you_mean_this_medicine = gameforge.locale.old_pirate.do_you_mean_this_medicine
locale.old_pirate.baekgo_talk_about_old_pirate = gameforge.locale.old_pirate.baekgo_talk_about_old_pirate
locale.old_pirate.baekgo_do_you_get_the_virus = gameforge.locale.old_pirate.baekgo_do_you_get_the_virus
locale.old_pirate.baekgo_iv_got_the_virus = gameforge.locale.old_pirate.baekgo_iv_got_the_virus
locale.old_pirate.START_say = gameforge.locale.old_pirate.start_say
locale.old_pirate.etc_shop_START_say = gameforge.locale.old_pirate.etc_shop_start_say
locale.old_pirate.etc_shop_START_say2 = gameforge.locale.old_pirate.etc_shop_start_say2
locale.old_pirate.START_find_old_pirate_label = gameforge.locale.old_pirate.start_find_old_pirate_label
locale.old_pirate.START_find_old_pirate_text = locale.NOTICE_COLOR .. gameforge.locale.old_pirate.start_find_old_pirate_text_1 .. locale.NORMAL_COLOR .. gameforge.locale.old_pirate.start_find_old_pirate_text_2
locale.old_pirate.ORDER_say1 = gameforge.locale.old_pirate.order_say1
locale.old_pirate.ORDER_say2 = gameforge.locale.old_pirate.order_say2
locale.old_pirate.ORDER_accept = gameforge.locale.old_pirate.order_accept
locale.old_pirate.ORDER_refuse = gameforge.locale.old_pirate.order_refuse
locale.old_pirate.ORDER_accept_answer = gameforge.locale.old_pirate.order_accept_answer
locale.old_pirate.ORDER_refuse_answer = gameforge.locale.old_pirate.order_refuse_answer
locale.old_pirate.ORDER_find_medicine_label = gameforge.locale.old_pirate.order_find_medicine_label
locale.old_pirate.ORDER_find_medicine_text = locale.NOTICE_COLOR .. gameforge.locale.old_pirate.order_find_medicine_text_1 .. locale.NORMAL_COLOR .. gameforge.locale.old_pirate.order_find_medicine_text_2
locale.old_pirate.ORDER_too_late = gameforge.locale.old_pirate.order_too_late
locale.old_pirate.ACCEPT_success_say = locale.NOTICE_COLOR .. gameforge.locale.old_pirate.accept_success_say_1 .. locale.NORMAL_COLOR .. gameforge.locale.old_pirate.accept_success_say_2
locale.old_pirate.ACCEPT_failure_say = locale.NOTICE_COLOR .. gameforge.locale.old_pirate.accept_failure_say_1 .. locale.NORMAL_COLOR .. gameforge.locale.old_pirate.accept_failure_say_2
locale.old_pirate.ACCEPT_ask = gameforge.locale.old_pirate.accept_ask
locale.old_pirate.ACCEPT_success_info_label = gameforge.locale.old_pirate.accept_success_info_label
locale.old_pirate.ACCEPT_success_info_text = locale.NOTICE_COLOR .. gameforge.locale.old_pirate.accept_success_info_text_1 .. locale.NORMAL_COLOR .. gameforge.locale.old_pirate.accept_success_info_text_2
locale.old_pirate.ACCEPT_failure_info_label = gameforge.locale.old_pirate.accept_failure_info_label
locale.old_pirate.ACCEPT_failure_info_text = locale.NOTICE_COLOR .. gameforge.locale.old_pirate.accept_failure_info_text_1 .. locale.NORMAL_COLOR .. gameforge.locale.old_pirate.accept_failure_info_text_2
locale.old_pirate.BAEKGO_START_say = gameforge.locale.old_pirate.baekgo_start_say
locale.old_pirate.BAEKGO_START_say2 = gameforge.locale.old_pirate.baekgo_start_say2
locale.old_pirate.BAEKGO_START_say3 = gameforge.locale.old_pirate.baekgo_start_say3
locale.old_pirate.BAEKGO_ORDER_find_virus_label = gameforge.locale.old_pirate.baekgo_order_find_virus_label
locale.old_pirate.BAEKGO_ORDER_find_virus_text = locale.NOTICE_COLOR .. gameforge.locale.old_pirate.baekgo_order_find_virus_text_1 .. locale.NORMAL_COLOR .. gameforge.locale.old_pirate.baekgo_order_find_virus_text_2
locale.old_pirate.BAEKGO_ORDER_too_late = gameforge.locale.old_pirate.baekgo_order_too_late
locale.old_pirate.BAEKGO_ACCEPT_success_say = locale.NOTICE_COLOR .. gameforge.locale.old_pirate.baekgo_accept_success_say_1 .. locale.NORMAL_COLOR .. gameforge.locale.old_pirate.baekgo_accept_success_say_2
locale.old_pirate.BAEKGO_ACCEPT_failure_say = locale.NOTICE_COLOR .. gameforge.locale.old_pirate.baekgo_accept_failure_say_1 .. locale.NORMAL_COLOR .. gameforge.locale.old_pirate.baekgo_accept_failure_say_2
locale.old_pirate.BAEKGO_ACCEPT_ask = gameforge.locale.old_pirate.baekgo_accept_ask
locale.old_pirate.BAEKGO_ACCEPT_success_info_label = gameforge.locale.old_pirate.baekgo_accept_success_info_label
locale.old_pirate.BAEKGO_ACCEPT_success_info_text = locale.NOTICE_COLOR .. gameforge.locale.old_pirate.baekgo_accept_success_info_text_1 .. locale.NORMAL_COLOR .. gameforge.locale.old_pirate.baekgo_accept_success_info_text_2
locale.old_pirate.BAEKGO_ACCEPT_failure_info_label = gameforge.locale.old_pirate.baekgo_accept_failure_info_label
locale.old_pirate.BAEKGO_ACCEPT_failure_info_text = locale.NOTICE_COLOR .. gameforge.locale.old_pirate.baekgo_accept_failure_info_text_1 .. locale.NORMAL_COLOR .. gameforge.locale.old_pirate.baekgo_accept_failure_info_text_2
locale.old_pirate.BAEKGO_SUCCESS_say = gameforge.locale.old_pirate.baekgo_success_say
locale.old_pirate.SUCCESS_thanks = gameforge.locale.old_pirate.success_thanks
locale.old_pirate.COMPLETE_say = gameforge.locale.old_pirate.complete_say

locale.stamina_food = {}
locale.stamina_food.butcher = {}
locale.stamina_food.food_manager = {}
locale.stamina_food.start_probability = 3
locale.stamina_food.start_level_begin = 90
locale.stamina_food.start_level_end = 90
locale.stamina_food.end_level = 59
locale.stamina_food.kill_count = 3
locale.stamina_food.butcher.talk = gameforge.locale.stamina_food.butcher.talk
locale.stamina_food.food_manager.talk = gameforge.locale.stamina_food.food_manager.talk
locale.stamina_food.food_manager.talk_about_greeenfrog_soup = gameforge.locale.stamina_food.food_manager.talk_about_greeenfrog_soup
locale.stamina_food.i_dont_have_the_greeenfrog_meat_yet = gameforge.locale.stamina_food.i_dont_have_the_greeenfrog_meat_yet
locale.stamina_food.i_have_the_greenfrog_meat = gameforge.locale.stamina_food.i_have_the_greenfrog_meat
locale.stamina_food.butcher.START_say = gameforge.locale.stamina_food.butcher.start_say
locale.stamina_food.butcher.START_say2 = gameforge.locale.stamina_food.butcher.start_say2
locale.stamina_food.food_manager.ORDER_say = gameforge.locale.stamina_food.food_manager.order_say
locale.stamina_food.food_manager.ORDER_say2 = gameforge.locale.stamina_food.food_manager.order_say2
locale.stamina_food.ORDER_accept = gameforge.locale.stamina_food.order_accept
locale.stamina_food.ORDER_refuse = gameforge.locale.stamina_food.order_refuse
locale.stamina_food.ORDER_accept_answer = gameforge.locale.stamina_food.order_accept_answer
locale.stamina_food.ORDER_refuse_answer = gameforge.locale.stamina_food.order_refuse_answer
locale.stamina_food.ORDER_get_greenfrog_general_meat_label = gameforge.locale.stamina_food.order_get_greenfrog_general_meat_label
locale.stamina_food.ORDER_get_greenfrog_general_meat_text = locale.NOTICE_COLOR .. gameforge.locale.stamina_food.order_get_greenfrog_general_meat_text
locale.stamina_food.ORDER_too_late = gameforge.locale.stamina_food.order_too_late
locale.stamina_food.ACCEPT_success_say = locale.NOTICE_COLOR .. gameforge.locale.stamina_food.accept_success_say_1 .. locale.NORMAL_COLOR .. gameforge.locale.stamina_food.accept_success_say_2
locale.stamina_food.ACCEPT_failure_say = locale.NOTICE_COLOR .. gameforge.locale.stamina_food.accept_failure_say_1 .. locale.NORMAL_COLOR .. gameforge.locale.stamina_food.accept_failure_say_2
locale.stamina_food.ACCEPT_ask = gameforge.locale.stamina_food.accept_ask
locale.stamina_food.ACCEPT_success_info_label = gameforge.locale.stamina_food.accept_success_info_label
locale.stamina_food.ACCEPT_success_info_text = locale.NOTICE_COLOR .. gameforge.locale.stamina_food.accept_success_info_text_1 .. locale.NORMAL_COLOR .. gameforge.locale.stamina_food.accept_success_info_text_2
locale.stamina_food.BAEKGO_ACCEPT_failure_info_label = gameforge.locale.stamina_food.baekgo_accept_failure_info_label
locale.stamina_food.BAEKGO_ACCEPT_failure_info_text = locale.NOTICE_COLOR .. gameforge.locale.stamina_food.baekgo_accept_failure_info_text_1 .. locale.NORMAL_COLOR .. gameforge.locale.stamina_food.baekgo_accept_failure_info_text_2
locale.stamina_food.SUCCESS_say = gameforge.locale.stamina_food.success_say
locale.stamina_food.COMPLETE_say = gameforge.locale.stamina_food.complete_say

locale.skeleton_gem = {}
locale.skeleton_gem.start_probability = 3
locale.skeleton_gem.start_level_begin = 55
locale.skeleton_gem.start_level_end = 57
locale.skeleton_gem.end_level = 60
locale.skeleton_gem.kill_count = 3
locale.skeleton_gem.talk_about_skeleton_gem = gameforge.locale.skeleton_gem.talk_about_skeleton_gem
locale.skeleton_gem.i_dont_have_the_skeleton_gem_yet = gameforge.locale.skeleton_gem.i_dont_have_the_skeleton_gem_yet
locale.skeleton_gem.i_have_the_skeleton_gem = gameforge.locale.skeleton_gem.i_have_the_skeleton_gem
locale.skeleton_gem.START_say = gameforge.locale.skeleton_gem.start_say
locale.skeleton_gem.START_find_peddler_label = gameforge.locale.skeleton_gem.start_find_peddler_label
locale.skeleton_gem.START_find_peddler_text = locale.NOTICE_COLOR .. gameforge.locale.skeleton_gem.start_find_peddler_text_1 .. locale.NORMAL_COLOR .. gameforge.locale.skeleton_gem.start_find_peddler_text_2
locale.skeleton_gem.ORDER_say = gameforge.locale.skeleton_gem.order_say
locale.skeleton_gem.ORDER_say2 = gameforge.locale.skeleton_gem.order_say2
locale.skeleton_gem.ORDER_accept = gameforge.locale.skeleton_gem.order_accept
locale.skeleton_gem.ORDER_refuse = gameforge.locale.skeleton_gem.order_refuse
locale.skeleton_gem.ORDER_accept_answer = gameforge.locale.skeleton_gem.order_accept_answer
locale.skeleton_gem.ORDER_refuse_answer = gameforge.locale.skeleton_gem.order_refuse_answer
locale.skeleton_gem.ORDER_get_skeleton_gem_ = gameforge.locale.skeleton_gem.order_get_skeleton_gem_
locale.skeleton_gem.ORDER_get_skeleton_gem_text = locale.NOTICE_COLOR .. gameforge.locale.skeleton_gem.order_get_skeleton_gem_text
locale.skeleton_gem.ORDER_too_late = gameforge.locale.skeleton_gem.order_too_late
locale.skeleton_gem.ACCEPT_success_say = locale.NOTICE_COLOR .. gameforge.locale.skeleton_gem.accept_success_say_1 .. locale.NORMAL_COLOR .. gameforge.locale.skeleton_gem.accept_success_say_2
locale.skeleton_gem.ACCEPT_failure_say = locale.NOTICE_COLOR .. gameforge.locale.skeleton_gem.accept_failure_say_1 .. locale.NORMAL_COLOR .. gameforge.locale.skeleton_gem.accept_failure_say_2
locale.skeleton_gem.ACCEPT_ask = gameforge.locale.skeleton_gem.accept_ask
locale.skeleton_gem.ACCEPT_success_info_label = gameforge.locale.skeleton_gem.accept_success_info_label
locale.skeleton_gem.ACCEPT_success_info_text = locale.NOTICE_COLOR .. gameforge.locale.skeleton_gem.accept_success_info_text_1 .. locale.NORMAL_COLOR .. gameforge.locale.skeleton_gem.accept_success_info_text_2
locale.skeleton_gem.ACCEPT_failure_info_label = gameforge.locale.skeleton_gem.accept_failure_info_label
locale.skeleton_gem.ACCEPT_failure_info_text = locale.NOTICE_COLOR .. gameforge.locale.skeleton_gem.accept_failure_info_text_1 .. locale.NORMAL_COLOR .. gameforge.locale.skeleton_gem.accept_failure_info_text_2
locale.skeleton_gem.SUCCESS_say = gameforge.locale.skeleton_gem.success_say

locale.ariyeong = {}
locale.ariyeong.start_probability = 3
locale.ariyeong.start_level_begin = 25
locale.ariyeong.start_level_end = 27
locale.ariyeong.end_level = 30
locale.ariyeong.kill_count = 2
locale.ariyeong.event_item = 30101
locale.ariyeong.find_ariyeong_label = gameforge.locale.ariyeong.find_ariyeong_label
locale.ariyeong.find_ariyeong_text = locale.NOTICE_COLOR .. gameforge.locale.ariyeong.find_ariyeong_text_1 .. locale.NORMAL_COLOR .. gameforge.locale.ariyeong.find_ariyeong_text_2
locale.ariyeong.kill_label = gameforge.locale.ariyeong.kill_label
locale.ariyeong.kill_text = locale.NOTICE_COLOR .. gameforge.locale.ariyeong.kill_text_1 .. locale.NORMAL_COLOR .. gameforge.locale.ariyeong.kill_text_2
locale.ariyeong.too_late = gameforge.locale.ariyeong.too_late
locale.ariyeong.success_info_label = gameforge.locale.ariyeong.success_info_label
locale.ariyeong.success_info_text = locale.NOTICE_COLOR .. gameforge.locale.ariyeong.success_info_text_1 .. locale.NORMAL_COLOR .. gameforge.locale.ariyeong.success_info_text_2
locale.ariyeong.failure_info_label = gameforge.locale.ariyeong.failure_info_label
locale.ariyeong.failure_info_text = locale.NOTICE_COLOR .. gameforge.locale.ariyeong.failure_info_text_1 .. locale.NORMAL_COLOR .. gameforge.locale.ariyeong.failure_info_text_2

locale.levelup = {}
locale.levelup.choice1 = gameforge.locale.levelup.choice1
locale.levelup.choice2 = gameforge.locale.levelup.choice2
locale.levelup.slay_them1 = gameforge.locale.levelup.slay_them1
locale.levelup.slay_them2 = gameforge.locale.levelup.slay_them2
locale.levelup.slay_target_is = gameforge.locale.levelup.slay_target_is 
locale.levelup.slay_target_count = gameforge.locale.levelup.slay_target_count
locale.levelup.slayed_them = gameforge.locale.levelup.slayed_them
locale.levelup.remain_count = gameforge.locale.levelup.remain_count
locale.levelup.cause_of_levelup = gameforge.locale.levelup.cause_of_levelup
locale.levelup.receive_direct = gameforge.locale.levelup.receive_direct
locale.levelup.levelup_quest_fail = gameforge.locale.levelup.levelup_quest_fail
locale.levelup.lets_go = gameforge.locale.levelup.lets_go
locale.levelup.kill_count = gameforge.locale.levelup.kill_count
locale.levelup.prev_quest1 = gameforge.locale.levelup.prev_quest1
locale.levelup.prev_quest2 = gameforge.locale.levelup.prev_quest2
locale.levelup.prev_quest_info = gameforge.locale.levelup.prev_quest_info
locale.levelup.prev_quest_go = gameforge.locale.levelup.prev_quest_go
locale.levelup.random_item = gameforge.locale.levelup.random_item

locale.stash = {}
locale.stash.buy_silver_and_gold_bar = gameforge.locale.stash.buy_silver_and_gold_bar
locale.stash.gold_bar_beginner_info = gameforge.locale.stash.gold_bar_beginner_info
locale.stash.enlarge_first1_cannot = gameforge.locale.stash.enlarge_first1_cannot
locale.stash.greet1 = gameforge.locale.stash.greet1
locale.stash.not_enough_money = gameforge.locale.stash.not_enough_money
locale.stash.pay_ok = gameforge.locale.stash.pay_ok
locale.stash.pay_no = gameforge.locale.stash.pay_no
locale.stash.first_open = gameforge.locale.stash.first_open
locale.stash.dont_open = gameforge.locale.stash.dont_open
locale.stash.greet2 = gameforge.locale.stash.greet2
locale.stash.beginner_info = gameforge.locale.stash.beginner_info
locale.stash.enlarge = gameforge.locale.stash.enlarge
locale.stash.nomatter = gameforge.locale.stash.nomatter
locale.stash.enlarge_first1 = gameforge.locale.stash.enlarge_first1
locale.stash.enlarge_item1 = 50
locale.stash.enlarge_item2 = 5030
locale.stash.enlarge_first2 = gameforge.locale.stash.enlarge_first2
locale.stash.enlarge_first3 = gameforge.locale.stash.enlarge_first3
locale.stash.enlarge_try_ok = gameforge.locale.stash.enlarge_try_ok
locale.stash.enlarge_try_no = gameforge.locale.stash.enlarge_try_no
locale.stash.enlarge_try_ok_answer = gameforge.locale.stash.enlarge_try_ok_answer
locale.stash.enlarge_1_title = gameforge.locale.stash.enlarge_1_title
locale.stash.enlarge_1_counter = gameforge.locale.stash.enlarge_1_counter
locale.stash.enlarge_1_item = gameforge.locale.stash.enlarge_1_item
locale.stash.enlarge_1_timer = gameforge.locale.stash.enlarge_1_timer
locale.stash.enlarge_no_need = gameforge.locale.stash.enlarge_no_need
locale.stash.greet3 = gameforge.locale.stash.greet3
locale.stash.enlarge_2_no_mark = gameforge.locale.stash.enlarge_2_no_mark
locale.stash.enlarge_2_again = gameforge.locale.stash.enlarge_2_again
locale.stash.enlarge_2_title = gameforge.locale.stash.enlarge_2_title
locale.stash.enlarge_2_item = 60002
locale.stash.enlarge_2_mark_item = 60003
locale.stash.enlarge_2_have_mark = c_item_name(locale.stash.enlarge_2_mark_item .. gameforge.locale.stash.enlarge_2_have_mark)
locale.stash.enlarge_2_no_mark2 = gameforge.locale.stash.enlarge_2_no_mark2
locale.stash.enlarge_2_have_mark2 = gameforge.locale.stash.enlarge_2_have_mark2
locale.stash.enlarge_2_have_mark3 = gameforge.locale.stash.enlarge_2_have_mark3
locale.stash.enlarge_2_msg1 = gameforge.locale.stash.enlarge_2_msg1
locale.stash.enlarge_2_msg2 = gameforge.locale.stash.enlarge_2_msg2
locale.stash.greet4 = gameforge.locale.stash.greet4
locale.stash.enlarge_3_msg1 = gameforge.locale.stash.enlarge_3_msg1
locale.stash.enlarge_3_title = gameforge.locale.stash.enlarge_3_title
locale.stash.enlarge_3_counter = gameforge.locale.stash.enlarge_3_counter
locale.stash.enlarge_3_timer = gameforge.locale.stash.enlarge_3_timer
locale.stash.enlarge_4_msg = gameforge.locale.stash.enlarge_4_msg
locale.stash.enlarge_2_recommendation = gameforge.locale.stash.enlarge_2_recommendation
locale.stash.enlarge_2_oldwoman_greet = gameforge.locale.stash.enlarge_2_oldwoman_greet
locale.stash.enlarge_2_oldwoman_reject = gameforge.locale.stash.enlarge_2_oldwoman_reject
locale.stash.enlarge_2_oldwoman_title1 = gameforge.locale.stash.enlarge_2_oldwoman_title1
locale.stash.enlarge_2_oldwoman_title2 = gameforge.locale.stash.enlarge_2_oldwoman_title2
locale.stash.enlarge_2_oldwoman_accept = gameforge.locale.stash.enlarge_2_oldwoman_accept
locale.stash.enlarge_1_info1 = gameforge.locale.stash.enlarge_1_info1
locale.stash.enlarge_1_info2 = gameforge.locale.stash.enlarge_1_info2
locale.stash.enlarge_1_take_bear = gameforge.locale.stash.enlarge_1_take_bear
locale.stash.enlarge_1_success = gameforge.locale.stash.enlarge_1_success
locale.stash.enlarge_1_notyet = gameforge.locale.stash.enlarge_1_notyet
locale.stash.enlarge_1_getone = gameforge.locale.stash.enlarge_1_getone
locale.stash.enlarge_1_complete = gameforge.locale.stash.enlarge_1_complete
locale.stash.enlarge_1_fail_info = gameforge.locale.stash.enlarge_1_fail_info
locale.stash.enlarge_1_fail_msg = gameforge.locale.stash.enlarge_1_fail_msg
locale.stash.enlarge_3_complete = gameforge.locale.stash.enlarge_3_complete
locale.stash.enlarge_3_success = gameforge.locale.stash.enlarge_3_success
locale.stash.enlarge_3_notyet = gameforge.locale.stash.enlarge_3_notyet
locale.stash.open_mall = gameforge.locale.stash.open_mall

locale.guild = {}
locale.guild.guild_master_greet = gameforge.locale.guild.guild_master_greet
locale.guild.disband = gameforge.locale.guild.disband
locale.guild.cancel = gameforge.locale.guild.cancel
locale.guild.yes = gameforge.locale.guild.yes
locale.guild.no = gameforge.locale.guild.no
locale.guild.disband_confirm = gameforge.locale.guild.disband_confirm
locale.guild.disband_msg = gameforge.locale.guild.disband_msg
locale.guild.guild_member_greet = gameforge.locale.guild.guild_member_greet
locale.guild.withdraw = gameforge.locale.guild.withdraw
locale.guild.withdraw_confirm = gameforge.locale.guild.withdraw_confirm
locale.guild.withdraw_msg = gameforge.locale.guild.withdraw_msg
locale.guild.noguild_greet = gameforge.locale.guild.noguild_greet
locale.guild.create = gameforge.locale.guild.create
locale.guild.create_confirm = gameforge.locale.guild.create_confirm
locale.guild.create_not_enough_money = gameforge.locale.guild.create_not_enough_money
locale.guild.not_enough_leadership = gameforge.locale.guild.not_enough_leadership
locale.guild.no_guild_create_item = gameforge.locale.guild.no_guild_create_item
locale.guild.create_confirm_for_china = gameforge.locale.guild.create_confirm_for_china
locale.guild.cannot_create_guild_withdraw_delay = gameforge.locale.guild.cannot_create_guild_withdraw_delay
locale.guild.cannot_create_guild_disband_delay = gameforge.locale.guild.cannot_create_guild_disband_delay
locale.guild.war_entry_ask_head = gameforge.locale.guild.war_entry_ask_head
locale.guild.war_entry_ask_tail = gameforge.locale.guild.war_entry_ask_tail
locale.guild.war_list_button = gameforge.locale.guild.war_list_button
locale.guild.war_list_none = gameforge.locale.guild.war_list_none
locale.guild.war_list_choose = gameforge.locale.guild.war_list_choose
locale.guild.war_join_request = gameforge.locale.guild.war_join_request
locale.guild.war_over = gameforge.locale.guild.war_over
locale.guild.war_bet_list_button = gameforge.locale.guild.war_bet_list_button
locale.guild.war_bet_info = gameforge.locale.guild.war_bet_info
locale.guild.war_bet_no_money = gameforge.locale.guild.war_bet_no_money
locale.guild.war_bet_price = gameforge.locale.guild.war_bet_price
locale.guild.war_bet_done = gameforge.locale.guild.war_bet_done
locale.guild.war_bet_list_none = gameforge.locale.guild.war_bet_list_none
locale.guild.war_bet_list_choose = gameforge.locale.guild.war_bet_list_choose
locale.guild.war_bet_already = gameforge.locale.guild.war_bet_already
locale.guild.war_bet_assume1 = gameforge.locale.guild.war_bet_assume1
locale.guild.war_bet_assume2 = gameforge.locale.guild.war_bet_assume2
locale.guild.war_bet_assume3 = gameforge.locale.guild.war_bet_assume3

locale.oldwoman = {}
locale.oldwoman.no_matter = gameforge.locale.oldwoman.no_matter
locale.oldwoman.skill_reset1 = gameforge.locale.oldwoman.skill_reset1
locale.oldwoman.skill_reset2 = gameforge.locale.oldwoman.skill_reset2
locale.oldwoman.skill_reset_ok = gameforge.locale.oldwoman.skill_reset_ok
locale.oldwoman.skill_reset_no = gameforge.locale.oldwoman.skill_reset_no
locale.oldwoman.not_enough_money = gameforge.locale.oldwoman.not_enough_money
 
locale.skill_group = {}
locale.skill_group.lets_join_skill_group = {
	gameforge.locale.skill_group.lets_join_skill_group_1,
	gameforge.locale.skill_group.lets_join_skill_group_2,
	gameforge.locale.skill_group.lets_join_skill_group_3,
	gameforge.locale.skill_group.lets_join_skill_group_4
}
locale.skill_group.invite = gameforge.locale.skill_group.invite
locale.skill_group.board = gameforge.locale.skill_group.board
locale.skill_group.dialog = {{
	[WARRIOR] = {
		{
			gameforge.locale.skill_group.dialog_warrior_1,
			gameforge.locale.skill_group.dialog_warrior_2,
		},
		{
			gameforge.locale.skill_group.dialog_warrior_3,
			gameforge.locale.skill_group.dialog_warrior_4,
		},
		gameforge.locale.skill_group.dialog_warrior_5,
	},
	[ASSASSIN] = {
		{
			gameforge.locale.skill_group.dialog_assassin_1,
			gameforge.locale.skill_group.dialog_assassin_2,
		},
		{
			gameforge.locale.skill_group.dialog_assassin_3,
			gameforge.locale.skill_group.dialog_assassin_4,
		},
		gameforge.locale.skill_group.dialog_assassin_5,
	},
	[SURA] = {
		{
			gameforge.locale.skill_group.dialog_sura_1,
			gameforge.locale.skill_group.dialog_sura_2,
		},
		{
			gameforge.locale.skill_group.dialog_sura_3,
			gameforge.locale.skill_group.dialog_sura_4,
		},
		gameforge.locale.skill_group.dialog_sura_5,
	},
	[SHAMAN] = {
		{
			gameforge.locale.skill_group.dialog_shaman_1,
			gameforge.locale.skill_group.dialog_shaman_2,
		},
		{
			gameforge.locale.skill_group.dialog_shaman_3,
			gameforge.locale.skill_group.dialog_shaman_4,
		},
		gameforge.locale.skill_group.dialog_shaman_5,
	}
}}

locale.neutral_warp = {}
locale.neutral_warp.greet = gameforge.locale.neutral_warp.greet 
locale.neutral_warp.go = gameforge.locale.neutral_warp.go
locale.neutral_warp.not_go = gameforge.locale.neutral_warp.not_go
locale.neutral_warp.where_to_go = gameforge.locale.neutral_warp.where_to_go
locale.neutral_warp.money_need1 = gameforge.locale.neutral_warp.money_need1
locale.neutral_warp.money_need2 = gameforge.locale.neutral_warp.money_need2
locale.neutral_warp.cannot_go_yet = gameforge.locale.neutral_warp.cannot_go_yet

locale.blacksmith = {}
locale.blacksmith.refine_info = gameforge.locale.blacksmith.refine_info

locale.monster_chat = { 
	[301] = {
		gameforge.locale.monster_chat_301_1,
		gameforge.locale.monster_chat_301_2,
		gameforge.locale.monster_chat_301_3,
		gameforge.locale.monster_chat_301_4,
		gameforge.locale.monster_chat_301_5
	},
	[302] = {
		gameforge.locale.monster_chat_302_1,
		gameforge.locale.monster_chat_302_2,
		gameforge.locale.monster_chat_302_3,
		gameforge.locale.monster_chat_302_4,
		gameforge.locale.monster_chat_302_5,
		gameforge.locale.monster_chat_302_6
	},
	[303] = {
		gameforge.locale.monster_chat_303_1,
		gameforge.locale.monster_chat_303_2,
		gameforge.locale.monster_chat_303_3,
		gameforge.locale.monster_chat_303_4,
		gameforge.locale.monster_chat_303_5,
		gameforge.locale.monster_chat_303_6
	},
	[304] = {
		gameforge.locale.monster_chat_304_1,
		gameforge.locale.monster_chat_304_2,
		gameforge.locale.monster_chat_304_3,
		gameforge.locale.monster_chat_304_4,
		gameforge.locale.monster_chat_304_5,
		gameforge.locale.monster_chat_304_6
	},
	[305] = {
		gameforge.locale.monster_chat_305_1,
		gameforge.locale.monster_chat_305_2,
		gameforge.locale.monster_chat_305_3,
		gameforge.locale.monster_chat_305_4,
		gameforge.locale.monster_chat_305_5,
		gameforge.locale.monster_chat_305_6
	},
	[306] = {
		gameforge.locale.monster_chat_306_1,
		gameforge.locale.monster_chat_306_2,
		gameforge.locale.monster_chat_306_3,
		gameforge.locale.monster_chat_306_4,
		gameforge.locale.monster_chat_306_5,
		gameforge.locale.monster_chat_306_6
	},
	[307] = {
		gameforge.locale.monster_chat_307_1,
		gameforge.locale.monster_chat_307_2,
		gameforge.locale.monster_chat_307_3,
		gameforge.locale.monster_chat_307_4,
		gameforge.locale.monster_chat_307_5,
		gameforge.locale.monster_chat_307_6
	},
	[394] = {
		gameforge.locale.monster_chat_394_1,
		gameforge.locale.monster_chat_394_2,
		gameforge.locale.monster_chat_394_3,
		gameforge.locale.monster_chat_394_4,
		gameforge.locale.monster_chat_394_5,
		gameforge.locale.monster_chat_394_6
	},
	[401] = {
		gameforge.locale.monster_chat_401_1,
		gameforge.locale.monster_chat_401_2,
		gameforge.locale.monster_chat_401_3,
		gameforge.locale.monster_chat_401_4,
		gameforge.locale.monster_chat_401_5,
		gameforge.locale.monster_chat_401_6
	},
	[402] = {
		gameforge.locale.monster_chat_402_1,
		gameforge.locale.monster_chat_402_2,
		gameforge.locale.monster_chat_402_3,
		gameforge.locale.monster_chat_402_4,
		gameforge.locale.monster_chat_402_5,
		gameforge.locale.monster_chat_402_6
	},
	[403] = {
		gameforge.locale.monster_chat_403_1,
		gameforge.locale.monster_chat_403_2,
		gameforge.locale.monster_chat_403_3,
		gameforge.locale.monster_chat_403_4,
		gameforge.locale.monster_chat_403_5,
		gameforge.locale.monster_chat_403_6
	},
	[404] = {
		gameforge.locale.monster_chat_404_1,
		gameforge.locale.monster_chat_404_2,
		gameforge.locale.monster_chat_404_3,
		gameforge.locale.monster_chat_404_4,
		gameforge.locale.monster_chat_404_5,
		gameforge.locale.monster_chat_404_6
	},
	[405] = {
		gameforge.locale.monster_chat_405_1,
		gameforge.locale.monster_chat_405_2,
		gameforge.locale.monster_chat_405_3,
		gameforge.locale.monster_chat_405_4,
		gameforge.locale.monster_chat_405_5,
		gameforge.locale.monster_chat_405_6
	},
	[406] = {
		gameforge.locale.monster_chat_406_1,
		gameforge.locale.monster_chat_406_2,
		gameforge.locale.monster_chat_406_3,
		gameforge.locale.monster_chat_406_4,
		gameforge.locale.monster_chat_406_5,
		gameforge.locale.monster_chat_406_6
	},
	[491] = {
		gameforge.locale.monster_chat_491_1,
		gameforge.locale.monster_chat_491_2,
		gameforge.locale.monster_chat_491_3,
		gameforge.locale.monster_chat_491_4,
		gameforge.locale.monster_chat_491_5,
		gameforge.locale.monster_chat_491_6
	},
	[492] = {
		gameforge.locale.monster_chat_492_1,
		gameforge.locale.monster_chat_492_2,
		gameforge.locale.monster_chat_492_3,
		gameforge.locale.monster_chat_492_4,
		gameforge.locale.monster_chat_492_5,
		gameforge.locale.monster_chat_492_6
	},
	[493] = {
		gameforge.locale.monster_chat_493_1,
		gameforge.locale.monster_chat_493_2,
		gameforge.locale.monster_chat_493_3,
		gameforge.locale.monster_chat_493_4,
		gameforge.locale.monster_chat_493_5,
		gameforge.locale.monster_chat_493_6
	},
	[494] = {
		gameforge.locale.monster_chat_494_1,
		gameforge.locale.monster_chat_494_2,
		gameforge.locale.monster_chat_494_3,
		gameforge.locale.monster_chat_494_4,
		gameforge.locale.monster_chat_494_5,
		gameforge.locale.monster_chat_494_6
	},
	[501] = {
		gameforge.locale.monster_chat_501_1,
		gameforge.locale.monster_chat_501_2,
		gameforge.locale.monster_chat_501_3,
		gameforge.locale.monster_chat_501_4,
		gameforge.locale.monster_chat_501_5,
		gameforge.locale.monster_chat_501_6
	},
	[502] = {
		gameforge.locale.monster_chat_502_1,
		gameforge.locale.monster_chat_502_2,
		gameforge.locale.monster_chat_502_3,
		gameforge.locale.monster_chat_502_4,
		gameforge.locale.monster_chat_502_5,
		gameforge.locale.monster_chat_502_6
	},
	[503] = {
		gameforge.locale.monster_chat_503_1,
		gameforge.locale.monster_chat_503_2,
		gameforge.locale.monster_chat_503_3,
		gameforge.locale.monster_chat_503_4,
		gameforge.locale.monster_chat_503_5,
		gameforge.locale.monster_chat_503_6
	},
	[504] = {
		gameforge.locale.monster_chat_504_1,
		gameforge.locale.monster_chat_504_2,
		gameforge.locale.monster_chat_504_3,
		gameforge.locale.monster_chat_504_4,
		gameforge.locale.monster_chat_504_5,
		gameforge.locale.monster_chat_504_6
	},
	[601] = {
		gameforge.locale.monster_chat_601_1,
		gameforge.locale.monster_chat_601_2,
		gameforge.locale.monster_chat_601_3,
		gameforge.locale.monster_chat_601_4,
		gameforge.locale.monster_chat_601_5,
		gameforge.locale.monster_chat_601_6
	},
	[601] = {
		gameforge.locale.monster_chat_601_7,
		gameforge.locale.monster_chat_602_1,
		gameforge.locale.monster_chat_602_2,
		gameforge.locale.monster_chat_602_3,
		gameforge.locale.monster_chat_602_4,
		gameforge.locale.monster_chat_602_5,
		gameforge.locale.monster_chat_602_6
	},
	[603] = {
		gameforge.locale.monster_chat_603_1,
		gameforge.locale.monster_chat_603_2,
		gameforge.locale.monster_chat_603_3,
		gameforge.locale.monster_chat_603_4,
		gameforge.locale.monster_chat_603_5,
		gameforge.locale.monster_chat_603_6
	},
	[604] = {
		gameforge.locale.monster_chat_604_1,
		gameforge.locale.monster_chat_604_2,
		gameforge.locale.monster_chat_604_3,
		gameforge.locale.monster_chat_604_4,
		gameforge.locale.monster_chat_604_5,
		gameforge.locale.monster_chat_604_6
	},
	[631] = {
		gameforge.locale.monster_chat_631_1,
		gameforge.locale.monster_chat_631_2,
		gameforge.locale.monster_chat_631_3,
		gameforge.locale.monster_chat_631_4,
		gameforge.locale.monster_chat_631_5,
		gameforge.locale.monster_chat_631_6
	},
	[632] = {
		gameforge.locale.monster_chat_632_1,
		gameforge.locale.monster_chat_632_2,
		gameforge.locale.monster_chat_632_3,
		gameforge.locale.monster_chat_632_4,
		gameforge.locale.monster_chat_632_5,
		gameforge.locale.monster_chat_632_6
	},
	[633] = {
		gameforge.locale.monster_chat_633_1,
		gameforge.locale.monster_chat_633_2,
		gameforge.locale.monster_chat_633_3,
		gameforge.locale.monster_chat_633_4,
		gameforge.locale.monster_chat_633_5,
		gameforge.locale.monster_chat_633_6
	},
	[634] = {
		gameforge.locale.monster_chat_634_1,
		gameforge.locale.monster_chat_634_2,
		gameforge.locale.monster_chat_634_3,
		gameforge.locale.monster_chat_634_4,
		gameforge.locale.monster_chat_634_5,
		gameforge.locale.monster_chat_634_6
	},
	[635] = {
		gameforge.locale.monster_chat_635_1,
		gameforge.locale.monster_chat_635_2,
		gameforge.locale.monster_chat_635_3,
		gameforge.locale.monster_chat_635_4,
		gameforge.locale.monster_chat_635_5,
		gameforge.locale.monster_chat_635_6
	},
	[636] = {
		gameforge.locale.monster_chat_636_1,
		gameforge.locale.monster_chat_636_2,
		gameforge.locale.monster_chat_636_3,
		gameforge.locale.monster_chat_636_4,
		gameforge.locale.monster_chat_636_5,
		gameforge.locale.monster_chat_636_6
	},
	[636] = {
		gameforge.locale.monster_chat_636_7,
		gameforge.locale.monster_chat_637_1,
		gameforge.locale.monster_chat_637_2,
		gameforge.locale.monster_chat_637_3,
		gameforge.locale.monster_chat_637_4,
		gameforge.locale.monster_chat_637_5,
		gameforge.locale.monster_chat_637_6
	},
	[691] = {
		gameforge.locale.monster_chat_691_1,
		gameforge.locale.monster_chat_691_2,
		gameforge.locale.monster_chat_691_3,
		gameforge.locale.monster_chat_691_4,
		gameforge.locale.monster_chat_691_5,
		gameforge.locale.monster_chat_691_6
	},
	[701] = {
		gameforge.locale.monster_chat_701_1,
		gameforge.locale.monster_chat_701_2,
		gameforge.locale.monster_chat_701_3,
		gameforge.locale.monster_chat_701_4,
		gameforge.locale.monster_chat_701_5,
		gameforge.locale.monster_chat_701_6
	},
	[702] = {
		gameforge.locale.monster_chat_702_1,
		gameforge.locale.monster_chat_702_2,
		gameforge.locale.monster_chat_702_3,
		gameforge.locale.monster_chat_702_4,
		gameforge.locale.monster_chat_702_5,
		gameforge.locale.monster_chat_702_6
	},
	[703] = {
		gameforge.locale.monster_chat_703_1,
		gameforge.locale.monster_chat_703_2,
		gameforge.locale.monster_chat_703_3,
		gameforge.locale.monster_chat_703_4,
		gameforge.locale.monster_chat_703_5,
		gameforge.locale.monster_chat_703_6
	},
	[704] = {
		gameforge.locale.monster_chat_704_1,
		gameforge.locale.monster_chat_704_2,
		gameforge.locale.monster_chat_704_3,
		gameforge.locale.monster_chat_704_4,
		gameforge.locale.monster_chat_704_5,
		gameforge.locale.monster_chat_704_6
	},
	[705] = {
		gameforge.locale.monster_chat_705_1,
		gameforge.locale.monster_chat_705_2,
		gameforge.locale.monster_chat_705_3,
		gameforge.locale.monster_chat_705_4,
		gameforge.locale.monster_chat_705_5,
		gameforge.locale.monster_chat_705_6
	},
	[706] = {
		gameforge.locale.monster_chat_706_1,
		gameforge.locale.monster_chat_706_2,
		gameforge.locale.monster_chat_706_3,
		gameforge.locale.monster_chat_706_4,
		gameforge.locale.monster_chat_706_5,
		gameforge.locale.monster_chat_706_6
	},
	[707] = {
		gameforge.locale.monster_chat_707_1,
		gameforge.locale.monster_chat_707_2,
		gameforge.locale.monster_chat_707_3,
		gameforge.locale.monster_chat_707_4,
		gameforge.locale.monster_chat_707_5,
		gameforge.locale.monster_chat_707_6
	},
	[791] = {
		gameforge.locale.monster_chat_791_1,
		gameforge.locale.monster_chat_791_2,
		gameforge.locale.monster_chat_791_3,
		gameforge.locale.monster_chat_791_4,
		gameforge.locale.monster_chat_791_5,
		gameforge.locale.monster_chat_791_6
	},
	[901] = {
		gameforge.locale.monster_chat_901_1,
		gameforge.locale.monster_chat_901_2,
		gameforge.locale.monster_chat_901_3,
		gameforge.locale.monster_chat_901_4,
		gameforge.locale.monster_chat_901_5
	},
	[903] = {
		gameforge.locale.monster_chat_903_1,
		gameforge.locale.monster_chat_903_2,
		gameforge.locale.monster_chat_903_3,
		gameforge.locale.monster_chat_903_4,
		gameforge.locale.monster_chat_903_5,
		gameforge.locale.monster_chat_903_6
	},
	[904] = {
		gameforge.locale.monster_chat_904_1,
		gameforge.locale.monster_chat_904_2,
		gameforge.locale.monster_chat_904_3,
		gameforge.locale.monster_chat_904_4,
		gameforge.locale.monster_chat_904_5,
		gameforge.locale.monster_chat_904_6
	},
	[905] = {
		gameforge.locale.monster_chat_905_1,
		gameforge.locale.monster_chat_905_2,
		gameforge.locale.monster_chat_905_3,
		gameforge.locale.monster_chat_905_4,
		gameforge.locale.monster_chat_905_5,
		gameforge.locale.monster_chat_905_6
	},
	[906] = {
		gameforge.locale.monster_chat_906_1,
		gameforge.locale.monster_chat_906_2,
		gameforge.locale.monster_chat_906_3,
		gameforge.locale.monster_chat_906_4,
		gameforge.locale.monster_chat_906_5,
		gameforge.locale.monster_chat_906_6
	},
	[907] = {
		gameforge.locale.monster_chat_907_1,
		gameforge.locale.monster_chat_907_2,
		gameforge.locale.monster_chat_907_3,
		gameforge.locale.monster_chat_907_4,
		gameforge.locale.monster_chat_907_5,
		gameforge.locale.monster_chat_907_6
	},
	[1001] = {
		gameforge.locale.monster_chat_1001_1,
		gameforge.locale.monster_chat_1001_2,
		gameforge.locale.monster_chat_1001_3,
		gameforge.locale.monster_chat_1001_4,
		gameforge.locale.monster_chat_1001_5,
		gameforge.locale.monster_chat_1001_6
	},
	[1002] = {
		gameforge.locale.monster_chat_1002_1,
		gameforge.locale.monster_chat_1002_2,
		gameforge.locale.monster_chat_1002_3,
		gameforge.locale.monster_chat_1002_4,
		gameforge.locale.monster_chat_1002_5
	},
	[1003] = {
		gameforge.locale.monster_chat_1003_1,
		gameforge.locale.monster_chat_1003_2,
		gameforge.locale.monster_chat_1003_3,
		gameforge.locale.monster_chat_1003_4,
		gameforge.locale.monster_chat_1003_5,
		gameforge.locale.monster_chat_1003_6
	},
	[1004] = {
		gameforge.locale.monster_chat_1004_1,
		gameforge.locale.monster_chat_1004_2,
		gameforge.locale.monster_chat_1004_3,
		gameforge.locale.monster_chat_1004_4,
		gameforge.locale.monster_chat_1004_5,
		gameforge.locale.monster_chat_1004_6
	},
	[1035] = {
		gameforge.locale.monster_chat_1035_1,
		gameforge.locale.monster_chat_1035_2,
		gameforge.locale.monster_chat_1035_3,
		gameforge.locale.monster_chat_1035_4,
		gameforge.locale.monster_chat_1035_5,
		gameforge.locale.monster_chat_1035_6
	},
	[1036] = {
		gameforge.locale.monster_chat_1036_1,
		gameforge.locale.monster_chat_1036_2,
		gameforge.locale.monster_chat_1036_3,
		gameforge.locale.monster_chat_1036_4,
		gameforge.locale.monster_chat_1036_5,
		gameforge.locale.monster_chat_1036_6
	},
	[1037] = {
		gameforge.locale.monster_chat_1037_1,
		gameforge.locale.monster_chat_1037_2,
		gameforge.locale.monster_chat_1037_3,
		gameforge.locale.monster_chat_1037_4,
		gameforge.locale.monster_chat_1037_5,
		gameforge.locale.monster_chat_1037_6
	},
	[1038] = {
		gameforge.locale.monster_chat_1038_1,
		gameforge.locale.monster_chat_1038_2,
		gameforge.locale.monster_chat_1038_3,
		gameforge.locale.monster_chat_1038_4,
		gameforge.locale.monster_chat_1038_5,
		gameforge.locale.monster_chat_1038_6
	},
	[1039] = {
		gameforge.locale.monster_chat_1039_1,
		gameforge.locale.monster_chat_1039_2,
		gameforge.locale.monster_chat_1039_3,
		gameforge.locale.monster_chat_1039_4,
		gameforge.locale.monster_chat_1039_5,
		gameforge.locale.monster_chat_1039_6
	},
	[1040] = {
		gameforge.locale.monster_chat_1040_1,
		gameforge.locale.monster_chat_1040_2,
		gameforge.locale.monster_chat_1040_3,
		gameforge.locale.monster_chat_1040_4,
		gameforge.locale.monster_chat_1040_5,
		gameforge.locale.monster_chat_1040_6
	},
	[1041] = {
		gameforge.locale.monster_chat_1041_1,
		gameforge.locale.monster_chat_1041_2,
		gameforge.locale.monster_chat_1041_3,
		gameforge.locale.monster_chat_1041_4,
		gameforge.locale.monster_chat_1041_5,
		gameforge.locale.monster_chat_1041_6
	},
	[1091] = {
		gameforge.locale.monster_chat_1091_1,
		gameforge.locale.monster_chat_1091_2,
		gameforge.locale.monster_chat_1091_3,
		gameforge.locale.monster_chat_1091_4,
		gameforge.locale.monster_chat_1091_5,
		gameforge.locale.monster_chat_1091_6
	},
	[1093] = {
		gameforge.locale.monster_chat_1093_1,
		gameforge.locale.monster_chat_1093_2,
		gameforge.locale.monster_chat_1093_3,
		gameforge.locale.monster_chat_1093_4,
		gameforge.locale.monster_chat_1093_5,
		gameforge.locale.monster_chat_1093_6
	},
	[1105] = {
		gameforge.locale.monster_chat_1105_1,
		gameforge.locale.monster_chat_1105_2,
		gameforge.locale.monster_chat_1105_3,
		gameforge.locale.monster_chat_1105_4,
		gameforge.locale.monster_chat_1105_5,
		gameforge.locale.monster_chat_1105_6
	},
	[1106] = {
		gameforge.locale.monster_chat_1106_1,
		gameforge.locale.monster_chat_1106_2,
		gameforge.locale.monster_chat_1106_3,
		gameforge.locale.monster_chat_1106_4,
		gameforge.locale.monster_chat_1106_5,
		gameforge.locale.monster_chat_1106_6
	},
	[1191] = {
		gameforge.locale.monster_chat_1191_1,
		gameforge.locale.monster_chat_1191_2,
		gameforge.locale.monster_chat_1191_3,
		gameforge.locale.monster_chat_1191_4,
		gameforge.locale.monster_chat_1191_5,
		gameforge.locale.monster_chat_1191_6
	},
	[1301] = {
		gameforge.locale.monster_chat_1301_1,
		gameforge.locale.monster_chat_1301_2,
		gameforge.locale.monster_chat_1301_3,
		gameforge.locale.monster_chat_1301_4,
		gameforge.locale.monster_chat_1301_5,
		gameforge.locale.monster_chat_1301_6
	},
	[1302] = {
		gameforge.locale.monster_chat_1302_1,
		gameforge.locale.monster_chat_1302_2,
		gameforge.locale.monster_chat_1302_3,
		gameforge.locale.monster_chat_1302_4,
		gameforge.locale.monster_chat_1302_5,
		gameforge.locale.monster_chat_1302_6
	},
	[1303] = {
		gameforge.locale.monster_chat_1303_1,
		gameforge.locale.monster_chat_1303_2,
		gameforge.locale.monster_chat_1303_3,
		gameforge.locale.monster_chat_1303_4,
		gameforge.locale.monster_chat_1303_5,
		gameforge.locale.monster_chat_1303_6
	},
	[1305] = {
		gameforge.locale.monster_chat_1305_1,
		gameforge.locale.monster_chat_1305_2,
		gameforge.locale.monster_chat_1305_3,
		gameforge.locale.monster_chat_1305_4,
		gameforge.locale.monster_chat_1305_5,
		gameforge.locale.monster_chat_1305_6
	},
	[1901] = {
		gameforge.locale.monster_chat_1901_1,
		gameforge.locale.monster_chat_1901_2,
		gameforge.locale.monster_chat_1901_3,
		gameforge.locale.monster_chat_1901_4,
		gameforge.locale.monster_chat_1901_5,
		gameforge.locale.monster_chat_1901_6
	},
	[2091] = {
		gameforge.locale.monster_chat_2091_1,
		gameforge.locale.monster_chat_2091_2,
		gameforge.locale.monster_chat_2091_3,
		gameforge.locale.monster_chat_2091_4,
		gameforge.locale.monster_chat_2091_5,
		gameforge.locale.monster_chat_2091_6
	},
	[2092] = {
		gameforge.locale.monster_chat_2092_1,
		gameforge.locale.monster_chat_2092_2,
		gameforge.locale.monster_chat_2092_3,
		gameforge.locale.monster_chat_2092_4,
		gameforge.locale.monster_chat_2092_5,
		gameforge.locale.monster_chat_2092_6
	},
	[2104] = {
		gameforge.locale.monster_chat_2104_1,
		gameforge.locale.monster_chat_2104_2,
		gameforge.locale.monster_chat_2104_3,
		gameforge.locale.monster_chat_2104_4,
		gameforge.locale.monster_chat_2104_5,
		gameforge.locale.monster_chat_2104_6
	},
	[2105] = {
		gameforge.locale.monster_chat_2105_1,
		gameforge.locale.monster_chat_2105_2,
		gameforge.locale.monster_chat_2105_3,
		gameforge.locale.monster_chat_2105_4,
		gameforge.locale.monster_chat_2105_5
	},
	[2106] = {
		gameforge.locale.monster_chat_2106_1,
		gameforge.locale.monster_chat_2106_2,
		gameforge.locale.monster_chat_2106_3,
		gameforge.locale.monster_chat_2106_4,
		gameforge.locale.monster_chat_2106_5,
		gameforge.locale.monster_chat_2106_6
	},
	[2107] = {
		gameforge.locale.monster_chat_2107_1,
		gameforge.locale.monster_chat_2107_2,
		gameforge.locale.monster_chat_2107_3,
		gameforge.locale.monster_chat_2107_4,
		gameforge.locale.monster_chat_2107_5,
		gameforge.locale.monster_chat_2107_6
	},
	[2108] = {
		gameforge.locale.monster_chat_2108_1,
		gameforge.locale.monster_chat_2108_2,
		gameforge.locale.monster_chat_2108_3,
		gameforge.locale.monster_chat_2108_4,
		gameforge.locale.monster_chat_2108_5,
		gameforge.locale.monster_chat_2108_6
	},
	[2191] = {
		gameforge.locale.monster_chat_2191_1,
		gameforge.locale.monster_chat_2191_2,
		gameforge.locale.monster_chat_2191_3,
		gameforge.locale.monster_chat_2191_4,
		gameforge.locale.monster_chat_2191_5,
		gameforge.locale.monster_chat_2191_6
	},
	[2202] = {
		gameforge.locale.monster_chat_2202_1,
		gameforge.locale.monster_chat_2202_2,
		gameforge.locale.monster_chat_2202_3,
		gameforge.locale.monster_chat_2202_4,
		gameforge.locale.monster_chat_2202_5,
		gameforge.locale.monster_chat_2202_6
	},
	[2204] = {
		gameforge.locale.monster_chat_2204_1,
		gameforge.locale.monster_chat_2204_2,
		gameforge.locale.monster_chat_2204_3,
		gameforge.locale.monster_chat_2204_4,
		gameforge.locale.monster_chat_2204_5,
		gameforge.locale.monster_chat_2204_6
	},
	[2205] = {
		gameforge.locale.monster_chat_2205_1,
		gameforge.locale.monster_chat_2205_2,
		gameforge.locale.monster_chat_2205_3,
		gameforge.locale.monster_chat_2205_4,
		gameforge.locale.monster_chat_2205_5,
		gameforge.locale.monster_chat_2205_6
	},
	[2206] = {
		gameforge.locale.monster_chat_2206_1,
		gameforge.locale.monster_chat_2206_2,
		gameforge.locale.monster_chat_2206_3,
		gameforge.locale.monster_chat_2206_4,
		gameforge.locale.monster_chat_2206_5,
		gameforge.locale.monster_chat_2206_6
	},
	[2291] = {
		gameforge.locale.monster_chat_2291_1,
		gameforge.locale.monster_chat_2291_2,
		gameforge.locale.monster_chat_2291_3,
		gameforge.locale.monster_chat_2291_4,
		gameforge.locale.monster_chat_2291_5,
		gameforge.locale.monster_chat_2291_6
	},
	[20001] = {
		gameforge.locale.monster_chat_20001_1,
		gameforge.locale.monster_chat_20001_2,
		gameforge.locale.monster_chat_20001_3,
		gameforge.locale.monster_chat_20001_4,
		gameforge.locale.monster_chat_20001_5
	},
	[20002] = {
		gameforge.locale.monster_chat_20002_1,
		gameforge.locale.monster_chat_20002_2,
		gameforge.locale.monster_chat_20002_3,
		gameforge.locale.monster_chat_20002_4,
		gameforge.locale.monster_chat_20002_5
	},
	[20003] = {
		gameforge.locale.monster_chat_20003_1,
		gameforge.locale.monster_chat_20003_2,
		gameforge.locale.monster_chat_20003_3,
		gameforge.locale.monster_chat_20003_4,
		gameforge.locale.monster_chat_20003_5
	},
	[20004] = {
		gameforge.locale.monster_chat_20004_1,
		gameforge.locale.monster_chat_20004_2,
		gameforge.locale.monster_chat_20004_3,
		gameforge.locale.monster_chat_20004_4,
		gameforge.locale.monster_chat_20004_5
	},
	[20005] = {
		gameforge.locale.monster_chat_20005_1,
		gameforge.locale.monster_chat_20005_2,
		gameforge.locale.monster_chat_20005_3,
		gameforge.locale.monster_chat_20005_4,
		gameforge.locale.monster_chat_20005_5
	},
	[20006] = {
		gameforge.locale.monster_chat_20006_1,
		gameforge.locale.monster_chat_20006_2,
		gameforge.locale.monster_chat_20006_3,
		gameforge.locale.monster_chat_20006_4,
		gameforge.locale.monster_chat_20006_5
	},
	[20007] = {
		gameforge.locale.monster_chat_20007_1,
		gameforge.locale.monster_chat_20007_2,
		gameforge.locale.monster_chat_20007_3,
		gameforge.locale.monster_chat_20007_4,
		gameforge.locale.monster_chat_20007_5
	},
	[20008] = {
		gameforge.locale.monster_chat_20008_1,
		gameforge.locale.monster_chat_20008_2,
		gameforge.locale.monster_chat_20008_3,
		gameforge.locale.monster_chat_20008_4,
		gameforge.locale.monster_chat_20008_5
	},
	[20009] = {
		gameforge.locale.monster_chat_20009_1,
		gameforge.locale.monster_chat_20009_2,
		gameforge.locale.monster_chat_20009_3,
		gameforge.locale.monster_chat_20009_4,
		gameforge.locale.monster_chat_20009_5
	},
	[20010] = {
		gameforge.locale.monster_chat_20010_1,
		gameforge.locale.monster_chat_20010_2,
		gameforge.locale.monster_chat_20010_3,
		gameforge.locale.monster_chat_20010_4,
		gameforge.locale.monster_chat_20010_5
	},
	[20011] = {
		gameforge.locale.monster_chat_20011_1,
		gameforge.locale.monster_chat_20011_2,
		gameforge.locale.monster_chat_20011_3,
		gameforge.locale.monster_chat_20011_4,
		gameforge.locale.monster_chat_20011_5
	},
	[20012] = {
		gameforge.locale.monster_chat_20012_1,
		gameforge.locale.monster_chat_20012_2,
		gameforge.locale.monster_chat_20012_3,
		gameforge.locale.monster_chat_20012_4,
		gameforge.locale.monster_chat_20012_5
	},
	[20013] = {
		gameforge.locale.monster_chat_20013_1,
		gameforge.locale.monster_chat_20013_2,
		gameforge.locale.monster_chat_20013_3,
		gameforge.locale.monster_chat_20013_4,
		gameforge.locale.monster_chat_20013_5
	},
	[20014] = {
		gameforge.locale.monster_chat_20014_1,
		gameforge.locale.monster_chat_20014_2,
		gameforge.locale.monster_chat_20014_3,
		gameforge.locale.monster_chat_20014_4,
		gameforge.locale.monster_chat_20014_5
	},
	[20015] = {
		gameforge.locale.monster_chat_20015_1,
		gameforge.locale.monster_chat_20015_2,
		gameforge.locale.monster_chat_20015_3,
		gameforge.locale.monster_chat_20015_4,
		gameforge.locale.monster_chat_20015_5
	},
	[20016] = {
		gameforge.locale.monster_chat_20016_1,
		gameforge.locale.monster_chat_20016_2,
		gameforge.locale.monster_chat_20016_3,
		gameforge.locale.monster_chat_20016_4,
		gameforge.locale.monster_chat_20016_5
	},
	[20017] = {
		gameforge.locale.monster_chat_20017_1,
		gameforge.locale.monster_chat_20017_2,
		gameforge.locale.monster_chat_20017_3,
		gameforge.locale.monster_chat_20017_4,
		gameforge.locale.monster_chat_20017_5
	},
	[20018] = {
		gameforge.locale.monster_chat_20018_1,
		gameforge.locale.monster_chat_20018_2,
		gameforge.locale.monster_chat_20018_3,
		gameforge.locale.monster_chat_20018_4,
		gameforge.locale.monster_chat_20018_5
	},
	[20019] = {
		gameforge.locale.monster_chat_20019_1,
		gameforge.locale.monster_chat_20019_2,
		gameforge.locale.monster_chat_20019_3,
		gameforge.locale.monster_chat_20019_4,
		gameforge.locale.monster_chat_20019_5
	},
	[20020] = {
		gameforge.locale.monster_chat_20020_1,
		gameforge.locale.monster_chat_20020_2,
		gameforge.locale.monster_chat_20020_3,
		gameforge.locale.monster_chat_20020_4,
		gameforge.locale.monster_chat_20020_5
	},
	[20021] = {
		gameforge.locale.monster_chat_20021_1,
		gameforge.locale.monster_chat_20021_2,
		gameforge.locale.monster_chat_20021_3,
		gameforge.locale.monster_chat_20021_4,
		gameforge.locale.monster_chat_20021_5
	},
	[20022] = {
		gameforge.locale.monster_chat_20022_1,
		gameforge.locale.monster_chat_20022_2,
		gameforge.locale.monster_chat_20022_3,
		gameforge.locale.monster_chat_20022_4,
		gameforge.locale.monster_chat_20022_5
	},
	[20023] = {
		gameforge.locale.monster_chat_20023_1,
		gameforge.locale.monster_chat_20023_2,
		gameforge.locale.monster_chat_20023_3,
		gameforge.locale.monster_chat_20023_4,
		gameforge.locale.monster_chat_20023_5
	},
	[20024] = {
		gameforge.locale.monster_chat_20024_1,
		gameforge.locale.monster_chat_20024_2,
		gameforge.locale.monster_chat_20024_3,
		gameforge.locale.monster_chat_20024_4,
		gameforge.locale.monster_chat_20024_5
	},
	[11000] = {
		gameforge.locale.monster_chat_11000_1,
		gameforge.locale.monster_chat_11000_2,
		gameforge.locale.monster_chat_11000_3,
		gameforge.locale.monster_chat_11000_4,
		gameforge.locale.monster_chat_11000_5,
		gameforge.locale.monster_chat_11000_6,
		gameforge.locale.monster_chat_11000_7,
		gameforge.locale.monster_chat_11000_8,
		gameforge.locale.monster_chat_11000_9,
		gameforge.locale.monster_chat_11000_10,
		gameforge.locale.monster_chat_11000_11,
		gameforge.locale.monster_chat_11000_12,
		gameforge.locale.monster_chat_11000_13,
		gameforge.locale.monster_chat_11000_14,
		gameforge.locale.monster_chat_11000_15,
		gameforge.locale.monster_chat_11000_16,
		gameforge.locale.monster_chat_11000_17,
		gameforge.locale.monster_chat_11000_18,
		gameforge.locale.monster_chat_11000_19,
		gameforge.locale.monster_chat_11000_20,
		gameforge.locale.monster_chat_11000_21,
		gameforge.locale.monster_chat_11000_22,
		gameforge.locale.monster_chat_11000_23,
		gameforge.locale.monster_chat_11000_24,
		gameforge.locale.monster_chat_11000_25,
		gameforge.locale.monster_chat_11000_26,
		gameforge.locale.monster_chat_11000_27,
		gameforge.locale.monster_chat_11000_28,
		gameforge.locale.monster_chat_11000_29,
		gameforge.locale.monster_chat_11000_30,
		gameforge.locale.monster_chat_11000_31
	},
	[11002] = {
		gameforge.locale.monster_chat_11002_1,
		gameforge.locale.monster_chat_11002_2,
		gameforge.locale.monster_chat_11002_3,
		gameforge.locale.monster_chat_11002_4,
		gameforge.locale.monster_chat_11002_5,
		gameforge.locale.monster_chat_11002_6,
		gameforge.locale.monster_chat_11002_7,
		gameforge.locale.monster_chat_11002_8,
		gameforge.locale.monster_chat_11002_9,
		gameforge.locale.monster_chat_11002_10,
		gameforge.locale.monster_chat_11002_11,
		gameforge.locale.monster_chat_11002_12,
		gameforge.locale.monster_chat_11002_13,
		gameforge.locale.monster_chat_11002_14,
		gameforge.locale.monster_chat_11002_15,
		gameforge.locale.monster_chat_11002_16,
		gameforge.locale.monster_chat_11002_17,
		gameforge.locale.monster_chat_11002_18,
		gameforge.locale.monster_chat_11002_19,
		gameforge.locale.monster_chat_11002_20,
		gameforge.locale.monster_chat_11002_21,
		gameforge.locale.monster_chat_11002_22,
		gameforge.locale.monster_chat_11002_23,
		gameforge.locale.monster_chat_11002_24,
		gameforge.locale.monster_chat_11002_25,
		gameforge.locale.monster_chat_11002_26,
		gameforge.locale.monster_chat_11002_27,
		gameforge.locale.monster_chat_11002_28,
		gameforge.locale.monster_chat_11002_29,
		gameforge.locale.monster_chat_11002_30,
		gameforge.locale.monster_chat_11002_31
	},
	[11004] = {
		gameforge.locale.monster_chat_11004_1,
		gameforge.locale.monster_chat_11004_2,
		gameforge.locale.monster_chat_11004_3,
		gameforge.locale.monster_chat_11004_4,
		gameforge.locale.monster_chat_11004_5,
		gameforge.locale.monster_chat_11004_6,
		gameforge.locale.monster_chat_11004_7,
		gameforge.locale.monster_chat_11004_8,
		gameforge.locale.monster_chat_11004_9,
		gameforge.locale.monster_chat_11004_10,
		gameforge.locale.monster_chat_11004_11,
		gameforge.locale.monster_chat_11004_12,
		gameforge.locale.monster_chat_11004_13,
		gameforge.locale.monster_chat_11004_14,
		gameforge.locale.monster_chat_11004_15,
		gameforge.locale.monster_chat_11004_16,
		gameforge.locale.monster_chat_11004_17,
		gameforge.locale.monster_chat_11004_18,
		gameforge.locale.monster_chat_11004_19,
		gameforge.locale.monster_chat_11004_20,
		gameforge.locale.monster_chat_11004_21,
		gameforge.locale.monster_chat_11004_22,
		gameforge.locale.monster_chat_11004_23,
		gameforge.locale.monster_chat_11004_24,
		gameforge.locale.monster_chat_11004_25,
		gameforge.locale.monster_chat_11004_26,
		gameforge.locale.monster_chat_11004_27,
		gameforge.locale.monster_chat_11004_28,
		gameforge.locale.monster_chat_11004_29,
		gameforge.locale.monster_chat_11004_30,
		gameforge.locale.monster_chat_11004_31
	},
}

special.questscroll = {
	{ 
		QUEST_SCROLL_TYPE_KILL_MOB, 
		gameforge.locale.questscroll_1_text,
		gameforge.locale.questscroll_1_mis,
		gameforge.locale.questscroll_1_hunt,
		25,
	},
	{ 
		QUEST_SCROLL_TYPE_KILL_MOB, 
		gameforge.locale.questscroll_2_text,
		gameforge.locale.questscroll_2_mis,
		gameforge.locale.questscroll_2_hunt,
		20,
	},
	{ 
		QUEST_SCROLL_TYPE_KILL_MOB, 
		gameforge.locale.questscroll_3_text,
		gameforge.locale.questscroll_3_mis,
		gameforge.locale.questscroll_3_hunt,
		1,
	},
	{ 
		QUEST_SCROLL_TYPE_KILL_MOB, 
		gameforge.locale.questscroll_4_text,
		gameforge.locale.questscroll_4_mis,
		gameforge.locale.questscroll_4_hunt,
		1,
	},
	{ 
		QUEST_SCROLL_TYPE_KILL_MOB, 
		gameforge.locale.questscroll_5_text,
		gameforge.locale.questscroll_5_mis,
		gameforge.locale.questscroll_5_hunt,
		1,
	},
	{ 
		QUEST_SCROLL_TYPE_KILL_MOB, 
		gameforge.locale.questscroll_6_text,
		gameforge.locale.questscroll_6_mis,
		gameforge.locale.questscroll_6_hunt,
		1,
	},
	{ 
		QUEST_SCROLL_TYPE_KILL_MOB, 
		gameforge.locale.questscroll_7_text,
		gameforge.locale.questscroll_7_mis,
		gameforge.locale.questscroll_7_hunt,
		20,
	},
	{ 
		QUEST_SCROLL_TYPE_KILL_MOB, 
		gameforge.locale.questscroll_8_text,
		gameforge.locale.questscroll_8_mis,
		gameforge.locale.questscroll_8_hunt,
		20,
	},
	{ 
		QUEST_SCROLL_TYPE_KILL_MOB, 
		gameforge.locale.questscroll_9_text,
		gameforge.locale.questscroll_9_mis,
		gameforge.locale.questscroll_9_hunt,
		25,
	},
	{ 
		QUEST_SCROLL_TYPE_KILL_MOB, 
		gameforge.locale.questscroll_10_text,
		gameforge.locale.questscroll_10_mis,
		gameforge.locale.questscroll_10_hunt,
		20,
	},
	{ 
		QUEST_SCROLL_TYPE_KILL_MOB, 
		gameforge.locale.questscroll_11_text,
		gameforge.locale.questscroll_11_mis,
		gameforge.locale.questscroll_11_hunt,
		20,
	},
	{ 
		QUEST_SCROLL_TYPE_KILL_MOB, 
		gameforge.locale.questscroll_12_text,
		gameforge.locale.questscroll_12_mis,
		gameforge.locale.questscroll_12_hunt,
		12,
	},
	{ 
		QUEST_SCROLL_TYPE_KILL_MOB, 
		gameforge.locale.questscroll_13_text,
		gameforge.locale.questscroll_13_mis,
		gameforge.locale.questscroll_13_hunt,
		20,
	},
	{ 
		QUEST_SCROLL_TYPE_KILL_MOB, 
		gameforge.locale.questscroll_14_text,
		gameforge.locale.questscroll_14_mis,
		gameforge.locale.questscroll_14_hunt,
		20,
	},
	{ 
		QUEST_SCROLL_TYPE_KILL_MOB, 
		gameforge.locale.questscroll_15_text,
		gameforge.locale.questscroll_15_mis,
		gameforge.locale.questscroll_15_hunt,
		13,
	},
	{ 
		QUEST_SCROLL_TYPE_KILL_MOB, 
		gameforge.locale.questscroll_16_text,
		gameforge.locale.questscroll_16_mis,
		gameforge.locale.questscroll_16_hunt,
		25,
	},
	{ 
		QUEST_SCROLL_TYPE_KILL_MOB, 
		gameforge.locale.questscroll_17_text,
		gameforge.locale.questscroll_17_mis,
		gameforge.locale.questscroll_17_hunt,
		20,
	},
	{ 
		QUEST_SCROLL_TYPE_KILL_MOB, 
		gameforge.locale.questscroll_18_text,
		gameforge.locale.questscroll_18_mis,
		gameforge.locale.questscroll_18_hunt,
		25,
	},
	{ 
		QUEST_SCROLL_TYPE_KILL_MOB, 
		gameforge.locale.questscroll_19_text,
		gameforge.locale.questscroll_19_mis,
		gameforge.locale.questscroll_19_hunt,
		25,
	},	
	{ 
		QUEST_SCROLL_TYPE_KILL_ANOTHER_EMPIRE, 
		gameforge.locale.questscroll_20_text,
		gameforge.locale.questscroll_20_mis,
		gameforge.locale.questscroll_20_hunt,
		4,
	},
}

locale.questscroll = {}
locale.questscroll.exist = gameforge.locale.questscroll.exist
locale.questscroll.finish = gameforge.locale.questscroll.finish
locale.questscroll.finish_button = gameforge.locale.questscroll.finish_button

locale.remove_polymorph_chat = gameforge.locale.remove_polymorph_chat
locale.remove_polymorph_msg = gameforge.locale.remove_polymorph_msg

locale.fortune_words = {
	{
		gameforge.locale.fortune_words_1_title,
		gameforge.locale.fortune_words_1_body
	},
	{
		gameforge.locale.fortune_words_2_title,
		gameforge.locale.fortune_words_2_body
	},
	{
		gameforge.locale.fortune_words_3_title,
		gameforge.locale.fortune_words_3_body
	},
	{
		gameforge.locale.fortune_words_4_title,
		gameforge.locale.fortune_words_4_body
	},
	{
		gameforge.locale.fortune_words_5_title,
		gameforge.locale.fortune_words_5_body
	},
	{
		gameforge.locale.fortune_words_6_title,
		gameforge.locale.fortune_words_6_body
	},
	{
		gameforge.locale.fortune_words_7_title,
		gameforge.locale.fortune_words_7_body
	},
}

locale.christmas_tree = {}
locale.christmas_tree.greet = gameforge.locale.christmas_tree.greet
locale.christmas_tree.sel_put_sock = gameforge.locale.christmas_tree.sel_put_sock
locale.christmas_tree.sel_no_need = gameforge.locale.christmas_tree.sel_no_need
locale.christmas_tree.sel_intro_event = gameforge.locale.christmas_tree.sel_intro_event
locale.christmas_tree.no_more_sock = gameforge.locale.christmas_tree.no_more_sock
locale.christmas_tree.gain_item_msg = gameforge.locale.christmas_tree.gain_item_msg
locale.christmas_tree.no_sock = gameforge.locale.christmas_tree.no_sock
locale.christmas_tree.not_sock_time = gameforge.locale.christmas_tree.not_sock_time
locale.christmas_tree.greet2 = gameforge.locale.christmas_tree.greet2
locale.christmas_tree.intro_msg = gameforge.locale.christmas_tree.intro_msg
locale.christmas_tree.under_level_10 = gameforge.locale.christmas_tree.under_level_10
locale.christmas_tree.christmas_say_title = gameforge.locale.christmas_tree.christmas_say_title

locale.christmas_santa = {}
locale.christmas_santa.intro_msg = gameforge.locale.christmas_santa.intro_msg
locale.christmas_santa.skill_book_buy_cost = 10000
locale.christmas_santa.skill_book_msg = locale.christmas_santa.skill_book_buy_cost .. gameforge.locale.christmas_santa.skill_book_msg
locale.christmas_santa.skill_book_sold_out_msg = gameforge.locale.christmas_santa.skill_book_sold_out_msg
locale.christmas_santa.hairdye_buy_cost = 10000
locale.christmas_santa.hairdye_msg = locale.christmas_santa.hairdye_buy_cost .. gameforge.locale.christmas_santa.hairdye_msg
locale.christmas_santa.hairdye_sold_out_msg = gameforge.locale.christmas_santa.hairdye_sold_out_msg
locale.christmas_santa.not_enough_money = gameforge.locale.christmas_santa.want_skillbook
locale.christmas_santa.want_skillbook = gameforge.locale.christmas_santa.want_skillbook
locale.christmas_santa.want_hairdye = gameforge.locale.christmas_santa.want_hairdye
locale.christmas_santa.no_need = gameforge.locale.christmas_santa.no_need
locale.christmas_santa.bye_msg = gameforge.locale.christmas_santa.bye_msg
locale.christmas_santa.select_buy = gameforge.locale.christmas_santa.select_buy
locale.christmas_santa.select_stop = gameforge.locale.christmas_santa.select_stop

locale.years_greetings = {}
locale.years_greetings.chat_greet = gameforge.locale.years_greetings.chat_greet
locale.years_greetings.greet_msg = gameforge.locale.years_greetings.greet_msg
locale.years_greetings.select_1 = gameforge.locale.years_greetings.select_1
locale.years_greetings.select_2 = gameforge.locale.years_greetings.select_2
locale.years_greetings.select_3 = gameforge.locale.years_greetings.select_3
locale.years_greetings.under_level_15 = gameforge.locale.years_greetings.under_level_15
locale.years_greetings.give_msg = gameforge.locale.years_greetings.give_msg
locale.years_greetings.not_enoguh_inventory = gameforge.locale.years_greetings.not_enoguh_inventory
locale.years_greetings.no_money_this_time = gameforge.locale.years_greetings.no_money_this_time
locale.years_greetings.bless_msg = gameforge.locale.years_greetings.bless_msg
locale.years_greetings.event_info = gameforge.locale.years_greetings.event_info 

locale.make_wonso = {}
locale.make_wonso.want_wonso1 = gameforge.locale.make_wonso.want_wonso1
locale.make_wonso.how_make = gameforge.locale.make_wonso.how_make
locale.make_wonso.how_make_detail = gameforge.locale.make_wonso.how_make_detail
locale.make_wonso.make_msg1 = gameforge.locale.make_wonso.make_msg1
locale.make_wonso.make_msg2 = gameforge.locale.make_wonso.make_msg2
locale.make_wonso.make_msg3 = gameforge.locale.make_wonso.make_msg3

locale.horse_menu = {}
locale.horse_menu.menu = gameforge.locale.horse_menu.menu
locale.horse_menu.show_state = gameforge.locale.horse_menu.show_state
locale.horse_menu.revive = gameforge.locale.horse_menu.revive
locale.horse_menu.feed = gameforge.locale.horse_menu.feed
locale.horse_menu.ride = gameforge.locale.horse_menu.ride
locale.horse_menu.unsummon = gameforge.locale.horse_menu.unsummon
locale.horse_menu.close = gameforge.locale.horse_menu.close

locale.monkey_dungeon = {}
locale.monkey_dungeon.button = gameforge.locale.monkey_dungeon.button
locale.monkey_dungeon.curse_of_monkey_button = gameforge.locale.monkey_dungeon.curse_of_monkey_button
locale.monkey_dungeon.curse_of_monkey = gameforge.locale.monkey_dungeon.curse_of_monkey
locale.monkey_dungeon.cannot_ENTER_yet = gameforge.locale.monkey_dungeon.cannot_ENTER_yet
locale.monkey_dungeon.low_entrance = gameforge.locale.monkey_dungeon.low_entrance
locale.monkey_dungeon.middle_entrance = gameforge.locale.monkey_dungeon.middle_entrance
locale.monkey_dungeon.notice = gameforge.locale.monkey_dungeon.notice
locale.monkey_dungeon.quest_title = gameforge.locale.monkey_dungeon.quest_title
locale.monkey_dungeon.quest_rest_time = gameforge.locale.monkey_dungeon.quest_rest_time
locale.monkey_dungeon.ENTER = gameforge.locale.monkey_dungeon.ENTER
locale.monkey_dungeon.no_ENTER = gameforge.locale.monkey_dungeon.no_ENTER

locale.questscroll5 = {}
locale.questscroll5.mission = {
	{
		QUEST_SCROLL_TYPE_KILL_MOB,
		"Aa",
		gameforge.locale.questscroll5.mission_1_hunt,
		gameforge.locale.questscroll5.mission_1_text,
		gameforge.locale.questscroll5.mission_1_mis,
		"8002",
		3
	},
	{
		QUEST_SCROLL_TYPE_KILL_MOB,
		"Aa",
		gameforge.locale.questscroll5.mission_2_hunt,
		gameforge.locale.questscroll5.mission_2_text,
		gameforge.locale.questscroll5.mission_2_mis,
		"8001",
		2
	},
	{
		QUEST_SCROLL_TYPE_KILL_MOB,
		"Aa",
		gameforge.locale.questscroll5.mission_3_hunt,
		gameforge.locale.questscroll5.mission_3_text,
		gameforge.locale.questscroll5.mission_3_mis,
		"107",
		30
	},
	{
		QUEST_SCROLL_TYPE_KILL_MOB,
		"Aa",
		gameforge.locale.questscroll5.mission_4_hunt,
		gameforge.locale.questscroll5.mission_4_text,
		gameforge.locale.questscroll5.mission_4_mis,
		"106",
		35
	},
	{
		QUEST_SCROLL_TYPE_KILL_MOB,
		"Aa",
		gameforge.locale.questscroll5.mission_5_hunt,
		gameforge.locale.questscroll5.mission_5_text,
		gameforge.locale.questscroll5.mission_5_mis,
		"108",
		40
	},
	{
		QUEST_SCROLL_TYPE_KILL_MOB2,
		"Aa",
		gameforge.locale.questscroll5.mission_6_hunt,
		gameforge.locale.questscroll5.mission_6_text,
		gameforge.locale.questscroll5.mission_6_mis,
		"114"	,
		25,
		"110",
		30
	},
	{
		QUEST_SCROLL_TYPE_KILL_MOB,
		"Ab",
		gameforge.locale.questscroll5.mission_7_hunt,
		gameforge.locale.questscroll5.mission_7_text,
		gameforge.locale.questscroll5.mission_7_mis,
		"8004",
		2
	},
	{
		QUEST_SCROLL_TYPE_KILL_MOB,
		"Ab",
		gameforge.locale.questscroll5.mission_8_hunt,
		gameforge.locale.questscroll5.mission_8_text,
		gameforge.locale.questscroll5.mission_8_mis,
		"8003",
		2
	},
	{
		QUEST_SCROLL_TYPE_KILL_MOB,
		"Ab",
		gameforge.locale.questscroll5.mission_9_hunt,
		gameforge.locale.questscroll5.mission_9_text,
		gameforge.locale.questscroll5.mission_9_mis,
		"109",
		30
	},
	{
		QUEST_SCROLL_TYPE_KILL_MOB2,
		"Ab",
		gameforge.locale.questscroll5.mission_10_hunt,
		gameforge.locale.questscroll5.mission_10_text,
		gameforge.locale.questscroll5.mission_10_mis,
		"111",
		25,
		"112",
		25
	},
	{
		QUEST_SCROLL_TYPE_KILL_MOB2,
		"Ab",
		gameforge.locale.questscroll5.mission_11_hunt,
		gameforge.locale.questscroll5.mission_11_text,
		gameforge.locale.questscroll5.mission_11_mis,
		"104",
		35,
		"105",
		25
	},
	{
		QUEST_SCROLL_TYPE_KILL_MOB,
		"Ba",
		gameforge.locale.questscroll5.mission_12_hunt,
		gameforge.locale.questscroll5.mission_12_text,
		gameforge.locale.questscroll5.mission_12_mis,
		"304",
		20
	},
	{
		QUEST_SCROLL_TYPE_KILL_MOB2,
		"Ba",
		gameforge.locale.questscroll5.mission_13_hunt,
		gameforge.locale.questscroll5.mission_13_text,
		gameforge.locale.questscroll5.mission_13_mis,
		"404",
		25,
		"405",
		25
	},
	{
		QUEST_SCROLL_TYPE_KILL_MOB2,
		"Ba",
		gameforge.locale.questscroll5.mission_14_hunt,
		gameforge.locale.questscroll5.mission_14_text,
		gameforge.locale.questscroll5.mission_14_mis,
		"631",
		30,
		"632",
		30
	},
	{
		QUEST_SCROLL_TYPE_KILL_MOB2,
		"Ba",
		gameforge.locale.questscroll5.mission_15_hunt,
		gameforge.locale.questscroll5.mission_15_text,
		gameforge.locale.questscroll5.mission_15_mis,
		"501",
		30,
		"502",
		30
	},
	{
		QUEST_SCROLL_TYPE_KILL_MOB,
		"Bb",
		gameforge.locale.questscroll5.mission_16_hunt,
		gameforge.locale.questscroll5.mission_16_text,
		gameforge.locale.questscroll5.mission_16_mis,
		"8006",
		3
	},
	{
		QUEST_SCROLL_TYPE_KILL_MOB,
		"Bb",
		gameforge.locale.questscroll5.mission_17_hunt,
		gameforge.locale.questscroll5.mission_17_text,
		gameforge.locale.questscroll5.mission_17_mis,
		"8005",
		2
	},
	{
		QUEST_SCROLL_TYPE_KILL_MOB,
		"Bb",
		gameforge.locale.questscroll5.mission_18_hunt,
		gameforge.locale.questscroll5.mission_18_text,
		gameforge.locale.questscroll5.mission_18_mis,
		"393",
		10
	},
	{
		QUEST_SCROLL_TYPE_KILL_MOB2,
		"Bb",
		gameforge.locale.questscroll5.mission_19_hunt,
		gameforge.locale.questscroll5.mission_19_text,
		gameforge.locale.questscroll5.mission_19_mis,
		"633",
		20,
		"634",
		15
	},
	{
		QUEST_SCROLL_TYPE_KILL_MOB2,
		"Bb",
		gameforge.locale.questscroll5.mission_20_hunt,
		gameforge.locale.questscroll5.mission_20_text,
		gameforge.locale.questscroll5.mission_20_mis,
		"5111",
		30,
		"5112",
		30
	},
	{
		QUEST_SCROLL_TYPE_KILL_MOB2,
		"Bb",
		gameforge.locale.questscroll5.mission_21_hunt,
		gameforge.locale.questscroll5.mission_21_text,
		gameforge.locale.questscroll5.mission_21_mis,
		"5101",
		30,
		"5102",
		30
	},
	{
		QUEST_SCROLL_TYPE_KILL_MOB,
		"Bc",
		gameforge.locale.questscroll5.mission_22_hunt,
		gameforge.locale.questscroll5.mission_22_text,
		gameforge.locale.questscroll5.mission_22_mis,
		"494",
		4
	},
	{
		QUEST_SCROLL_TYPE_KILL_MOB,
		"Bc",
		gameforge.locale.questscroll5.mission_23_hunt,
		gameforge.locale.questscroll5.mission_23_text,
		gameforge.locale.questscroll5.mission_23_mis,
		"8007",
		2
	},
	{
		QUEST_SCROLL_TYPE_KILL_MOB2,
		"Bc",
		gameforge.locale.questscroll5.mission_24_hunt,
		gameforge.locale.questscroll5.mission_24_text,
		gameforge.locale.questscroll5.mission_24_mis,
		"5113",
		15,
		"5114",
		15
	},
	{
		QUEST_SCROLL_TYPE_KILL_MOB2,
		"Bc",
		gameforge.locale.questscroll5.mission_25_hunt,
		gameforge.locale.questscroll5.mission_25_text,
		gameforge.locale.questscroll5.mission_25_mis,
		"5103",
		15,
		"5104",
		15
	},
	{
		QUEST_SCROLL_TYPE_KILL_MOB,
		"Ca",
		gameforge.locale.questscroll5.mission_26_hunt,
		gameforge.locale.questscroll5.mission_26_text,
		gameforge.locale.questscroll5.mission_26_mis,
		"8008",
		2
	},
	{
		QUEST_SCROLL_TYPE_KILL_MOB,
		"Ca",
		gameforge.locale.questscroll5.mission_27_hunt,
		gameforge.locale.questscroll5.mission_27_text,
		gameforge.locale.questscroll5.mission_27_mis,
		"2001",
		40
	},
	{
		QUEST_SCROLL_TYPE_KILL_MOB,
		"Ca",
		gameforge.locale.questscroll5.mission_28_hunt,
		gameforge.locale.questscroll5.mission_28_text,
		gameforge.locale.questscroll5.mission_28_mis,
		"2002",
		40
	},
	{
		QUEST_SCROLL_TYPE_KILL_MOB2,
		"Ca",
		gameforge.locale.questscroll5.mission_29_hunt,
		gameforge.locale.questscroll5.mission_29_text,
		gameforge.locale.questscroll5.mission_29_mis,
		"703",
		20,
		"704",
		25
	},
	{
		QUEST_SCROLL_TYPE_KILL_MOB2,
		"Ca",
		gameforge.locale.questscroll5.mission_30_hunt,
		gameforge.locale.questscroll5.mission_30_text,
		gameforge.locale.questscroll5.mission_30_mis,
		"701",
		30,
		"702",
		30
	},
	{
		QUEST_SCROLL_TYPE_KILL_MOB2,
		"Ca",
		gameforge.locale.questscroll5.mission_31_hunt,
		gameforge.locale.questscroll5.mission_31_text,
		gameforge.locale.questscroll5.mission_31_mis,
		"706",
		40,
		"707",
		40
	},
	{
		QUEST_SCROLL_TYPE_KILL_MOB,
		"Cb",
		gameforge.locale.questscroll5.mission_32_hunt,
		gameforge.locale.questscroll5.mission_32_text,
		gameforge.locale.questscroll5.mission_32_mis,
		"8009",
		2
	},
	{
		QUEST_SCROLL_TYPE_KILL_MOB2,
		"Cb",
		gameforge.locale.questscroll5.mission_33_hunt,
		gameforge.locale.questscroll5.mission_33_text,
		gameforge.locale.questscroll5.mission_33_mis,
		"2031",
		35,
		"2032",
		35
	},
	{
		QUEST_SCROLL_TYPE_KILL_MOB2,
		"Cb",
		gameforge.locale.questscroll5.mission_34_hunt,
		gameforge.locale.questscroll5.mission_34_text,
		gameforge.locale.questscroll5.mission_34_mis,
		"2031",
		35,
		"2032",
		35
	},
	{
		QUEST_SCROLL_TYPE_KILL_MOB2,
		"Cb",
		gameforge.locale.questscroll5.mission_35_hunt,
		gameforge.locale.questscroll5.mission_35_text,
		gameforge.locale.questscroll5.mission_35_mis,
		"2033",
		35,
		"2034",
		35
	},
	{
		QUEST_SCROLL_TYPE_KILL_MOB,
		"Cb",
		gameforge.locale.questscroll5.mission_36_hunt,
		gameforge.locale.questscroll5.mission_36_text,
		gameforge.locale.questscroll5.mission_36_mis,
		"2035",
		40
	},
	{
		QUEST_SCROLL_TYPE_KILL_MOB,
		"Cc",
		gameforge.locale.questscroll5.mission_37_hunt,
		gameforge.locale.questscroll5.mission_37_text,
		gameforge.locale.questscroll5.mission_37_mis,
		"8010",
		2
	},
	{
		QUEST_SCROLL_TYPE_KILL_MOB2,
		"Cc",
		gameforge.locale.questscroll5.mission_38_hunt,
		gameforge.locale.questscroll5.mission_38_text,
		gameforge.locale.questscroll5.mission_38_mis,
		"2103",
		30,
		"2104",
		20
	},
	{
		QUEST_SCROLL_TYPE_KILL_MOB2,
		"Cc",
		gameforge.locale.questscroll5.mission_39_hunt,
		gameforge.locale.questscroll5.mission_39_text,
		gameforge.locale.questscroll5.mission_39_mis,
		"1001",
		30,
		"1002",
		20
	},
	{
		QUEST_SCROLL_TYPE_KILL_MOB2,
		"Cc",
		gameforge.locale.questscroll5.mission_40_hunt,
		gameforge.locale.questscroll5.mission_40_text,
		gameforge.locale.questscroll5.mission_40_mis,
		"1003",
		30,
		"1004",
		25
	},
	{
		QUEST_SCROLL_TYPE_KILL_MOB2,
		"Cd",
		gameforge.locale.questscroll5.mission_41_hunt,
		gameforge.locale.questscroll5.mission_41_text,
		gameforge.locale.questscroll5.mission_41_mis,
		"5123",
		15,
		"5124",
		15
	},
	{
		QUEST_SCROLL_TYPE_KILL_MOB,
		"Cd",
		gameforge.locale.questscroll5.mission_42_hunt,
		gameforge.locale.questscroll5.mission_42_text,
		gameforge.locale.questscroll5.mission_42_mis,
		"1107",
		25
	},
	{
		QUEST_SCROLL_TYPE_KILL_MOB2,
		"Cd",
		gameforge.locale.questscroll5.mission_43_hunt,
		gameforge.locale.questscroll5.mission_43_text,
		gameforge.locale.questscroll5.mission_43_mis,
		"5121",
		30,
		"5122",
		30
	},
	{
		QUEST_SCROLL_TYPE_KILL_MOB,
		"Cd",
		gameforge.locale.questscroll5.mission_44_hunt,
		gameforge.locale.questscroll5.mission_44_text,
		gameforge.locale.questscroll5.mission_44_mis,
		"1305",
		30
	},
	{
		QUEST_SCROLL_TYPE_KILL_MOB2,
		"Cd",
		gameforge.locale.questscroll5.mission_45_hunt,
		gameforge.locale.questscroll5.mission_45_text,
		gameforge.locale.questscroll5.mission_45_mis,
		"1105",
		35,
		"1106",
		30
	},
	{
		QUEST_SCROLL_TYPE_KILL_MOB2,
		"Cd",
		gameforge.locale.questscroll5.mission_46_hunt,
		gameforge.locale.questscroll5.mission_46_text,
		gameforge.locale.questscroll5.mission_46_mis,
		"1301",
		45,
		"1302",
		35
	},
	{
		QUEST_SCROLL_TYPE_KILL_MOB,
		"Cd",
		gameforge.locale.questscroll5.mission_47_hunt,
		gameforge.locale.questscroll5.mission_47_text,
		gameforge.locale.questscroll5.mission_47_mis,
		"1101",
		45
	},
	{
		QUEST_SCROLL_TYPE_KILL_MOB,
		"Da",
		gameforge.locale.questscroll5.mission_48_hunt,
		gameforge.locale.questscroll5.mission_48_text,
		gameforge.locale.questscroll5.mission_48_mis,
		"1063",
		45
	},
	{
		QUEST_SCROLL_TYPE_KILL_MOB,
		"Da",
		gameforge.locale.questscroll5.mission_49_hunt,
		gameforge.locale.questscroll5.mission_49_text,
		gameforge.locale.questscroll5.mission_49_mis,
		"1064",
		60
	},
	{
		QUEST_SCROLL_TYPE_KILL_MOB,
		"Da",
		gameforge.locale.questscroll5.mission_50_hunt,
		gameforge.locale.questscroll5.mission_50_text,
		gameforge.locale.questscroll5.mission_50_mis,
		"2201",
		45
	},
	{
		QUEST_SCROLL_TYPE_KILL_MOB,
		"Db",
		gameforge.locale.questscroll5.mission_51_hunt,
		gameforge.locale.questscroll5.mission_51_text,
		gameforge.locale.questscroll5.mission_51_mis,
		"2202",
		45
	},
	{
		QUEST_SCROLL_TYPE_KILL_MOB2,
		"Db",
		gameforge.locale.questscroll5.mission_52_hunt,
		gameforge.locale.questscroll5.mission_52_text,
		gameforge.locale.questscroll5.mission_52_mis,
		"2201",
		60,
		"2203",
		40
	},
	{
		QUEST_SCROLL_TYPE_KILL_MOB,
		"Db",
		gameforge.locale.questscroll5.mission_53_hunt,
		gameforge.locale.questscroll5.mission_53_text,
		gameforge.locale.questscroll5.mission_53_mis,
		"2204",
		40
	},
	{
		QUEST_SCROLL_TYPE_KILL_MOB,
		"Db",
		gameforge.locale.questscroll5.mission_54_hunt,
		gameforge.locale.questscroll5.mission_54_text,
		gameforge.locale.questscroll5.mission_54_mis,
		"2205",
		60
	},
	{
		QUEST_SCROLL_TYPE_KILL_MOB,
		"Dc",
		gameforge.locale.questscroll5.mission_55_hunt,
		gameforge.locale.questscroll5.mission_55_text,
		gameforge.locale.questscroll5.mission_55_mis,
		"2301",
		30
	},
	{
		QUEST_SCROLL_TYPE_KILL_MOB2,
		"Dc",
		gameforge.locale.questscroll5.mission_56_hunt,
		gameforge.locale.questscroll5.mission_56_text,
		gameforge.locale.questscroll5.mission_56_mis,
		"2302",
		40,
		"2303",
		30
	},
}

locale.questscroll5.reward_exp = {
	["Aa"] = {
		{10000, 30},
		{20000, 40},
		{30000, 25},
		{50000,  3},
		{80000,  2},
	},
	["Ab"] = {
		{10000, 20},
		{20000, 30},
		{30000, 35},
		{50000, 10},
		{80000,  5},
	},
	["Ba"] = {
		{20000, 25},
		{30000, 35},
		{50000, 25},
		{80000, 10},
		{100000,  5},
	},
	["Bb"] = {
		{20000, 10},
		{30000, 25},
		{50000, 35},
		{80000, 20},
		{100000, 10},
	},
	["Bc"] = {
		{20000,  5},
		{30000, 15},
		{50000, 35},
		{80000, 30},
		{100000, 15},
	},
	["Ca"] = {
		{30000, 20},
		{50000, 40},
		{100000, 30},
		{150000,  8},
		{200000,  2},
	},
	["Cb"] = {
		{30000, 15},
		{50000, 30},
		{100000, 35},
		{150000, 10},
		{200000, 10},
	},
	["Cc"] = {
		{30000, 10},
		{50000, 15},
		{100000, 35},
		{150000, 25},
		{200000, 15},
	},
	["Cd"] = {
		{30000,  5},
		{50000, 10},
		{100000, 30},
		{150000, 35},
		{200000, 20},
	},
	["Da"] = {
		{30000, 20},
		{50000, 40},
		{100000, 30},
		{150000,  8},
		{200000,  2},
	},
	["Db"] = {
		{30000, 15},
		{50000, 30},
		{100000, 35},
		{150000, 10},
		{200000, 10},
	},
	["Dc"] = {
		{30000, 10},
		{50000, 15},
		{100000, 35},
		{150000, 25},
		{200000, 15},
	},
}
locale.questscroll5.reward_money = {
	["Aa"] = {
		{5000, 30},
		{10000, 40},
		{20000, 25},
		{50000, 3},
		{100000, 2},
	},
	["Ab"] = {
		{5000, 20},
		{10000, 30},
		{20000, 35},
		{50000, 10},
		{100000, 5},
	},
	["Ba"] = {
		{10000, 30},
		{30000, 40},
		{50000, 25},
		{80000, 3},
		{100000, 2},
	},
	["Bb"] = {
		{10000, 20},
		{30000, 30},
		{50000, 35},
		{80000, 10},
		{100000, 5},
	},
	["Bc"] = {
		{10000, 10},
		{30000, 20},
		{50000, 35},
		{80000, 30},
		{100000, 5},
	},
	["Ca"] = {
		{30000, 20},
		{50000, 40},
		{80000, 30},
		{100000, 8},
		{150000, 2},
	},
	["Cb"] = {
		{30000, 15},
		{50000, 30},
		{80000, 35},
		{100000, 10},
		{150000, 10},
	},
	["Cc"] = {
		{30000, 10},
		{50000, 15},
		{80000, 35},
		{100000, 25},
		{150000, 10},
	},
	["Cd"] = {
		{30000, 5},
		{50000, 10},
		{80000, 30},
		{100000, 35},
		{150000, 20},
	},
	["Da"] = {
		{30000, 20},
		{50000, 40},
		{80000, 30},
		{100000, 8},
		{150000, 2},
	},
	["Db"] = {
		{30000, 15},
		{50000, 30},
		{80000, 35},
		{100000, 10},
		{150000, 10},
	},
	["Dc"] = {
		{30000, 10},
		{50000, 15},
		{80000, 35},
		{100000, 25},
		{150000, 10},
	},
}
locale.questscroll5.reward_item = {
	["Aa"] = {
		{30053, 1},
		{30072, 1},
		{30071, 1},
		{30003, 1},
		{30023, 1},
		{30038, 1},
	},
	["Ab"] = {
		{30037, 1},
		{30010, 1},
		{30004, 1},
		{30028, 1},
		{30069, 1},
		{30027, 1},
		{30070, 1},
	},
	["Ba"] = {
		{30032, 1},
		{30034, 1},
		{30073, 1},
		{30035, 1},
		{30008, 1},
		{30005, 1},
		{30021, 1},
		{30033, 1},
		{30041, 1},
		{30092, 1},
	},
	["Bb"] = {
		{30074, 1},
		{30076, 1},
		{30056, 1},
		{30057, 1},
		{30006, 1},
		{30077, 1},
		{30030, 1},
		{30058, 1},
		{30025, 1},
		{30055, 1},
	},
	["Bc"] = {
		{30046, 1},
		{30045, 1},
		{30018, 1},
		{30007, 1},
		{30052, 1},
		{30081, 1},
		{30031, 1},
		{30017, 1},
		{30011, 1},
	},
	["Ca"] = {
		{30085, 1},
		{30088, 1},
		{30016, 1},
		{30061, 1},
		{30040, 1},
		{30091, 1},
		{30059, 1},
	},
	["Cb"] = {
		{30060, 1},
		{30039, 1},
		{30042, 1},
		{30009, 1},
		{30079, 1},
		{30075, 1},
		{30022, 1},
		{30087, 1},
	},
	["Cc"] = {
		{30015, 1},
		{30019, 1},
		{30014, 1},
		{30048, 1},
		{30078, 1},
		{30083, 1},
		{30086, 1},
		{30090, 1},
		{30089, 1},
	},
	["Cd"] = {
		{30049, 1},
		{30047, 1},
		{30067, 1},
		{30080, 1},
		{30051, 1},
		{30050, 1},
	},
	["Da"] = {
		{30045, 1},
		{30051, 1},
		{30038, 1},
		{30070, 1},
		{30023, 1},
		{30033, 1},
		{30011, 1},
		{30027, 1},
		{30082, 1},
	},
	["Db"] = {
		{30035, 1},
		{30010, 1},
		{30055, 1},
		{30006, 1},
		{30003, 1},
		{30017, 1},
		{30058, 1},
		{30086, 1},
	},
	["Dc"] = {
		{70048, 15},
		{70050, 15},
		{70051, 15},
		{70102, 5},
		{50513, 5},
		{50301, 20},
		{50302, 15},
		{50303, 10},
	},

}

locale.quiz = {
	{
		gameforge.locale.quiz_1_0_question,
		gameforge.locale.quiz_1_1_choice,
		gameforge.locale.quiz_1_2_choice,
		gameforge.locale.quiz_1_3_choice,
		gameforge.locale.quiz_1_4_choice,
		gameforge.locale.quiz_1_5_answer
	},
	{
		gameforge.locale.quiz_2_0_question,
		gameforge.locale.quiz_2_1_choice,
		gameforge.locale.quiz_2_2_choice,
		gameforge.locale.quiz_2_3_choice,
		gameforge.locale.quiz_2_4_choice,
		gameforge.locale.quiz_2_5_answer
	},
	{
		gameforge.locale.quiz_3_0_question,
		gameforge.locale.quiz_3_1_choice,
		gameforge.locale.quiz_3_2_choice,
		gameforge.locale.quiz_3_3_choice,
		gameforge.locale.quiz_3_4_choice,
		gameforge.locale.quiz_3_5_answer
	},
	{
		gameforge.locale.quiz_4_0_question,
		gameforge.locale.quiz_4_1_choice,
		gameforge.locale.quiz_4_2_choice,
		gameforge.locale.quiz_4_3_choice,
		gameforge.locale.quiz_4_4_choice,
		gameforge.locale.quiz_4_5_answer
	},
	{
		gameforge.locale.quiz_5_0_question,
		gameforge.locale.quiz_5_1_choice,
		gameforge.locale.quiz_5_2_choice,
		gameforge.locale.quiz_5_3_choice,
		gameforge.locale.quiz_5_4_choice,
		gameforge.locale.quiz_5_5_answer
	},
	{
		gameforge.locale.quiz_6_0_question,
		gameforge.locale.quiz_6_1_choice,
		gameforge.locale.quiz_6_2_choice,
		gameforge.locale.quiz_6_3_choice,
		gameforge.locale.quiz_6_4_choice,
		gameforge.locale.quiz_6_5_answer
	},
	{
		gameforge.locale.quiz_7_0_question,
		gameforge.locale.quiz_7_1_choice,
		gameforge.locale.quiz_7_2_choice,
		gameforge.locale.quiz_7_3_choice,
		gameforge.locale.quiz_7_4_choice,
		gameforge.locale.quiz_7_5_answer
	},
	{
		gameforge.locale.quiz_8_0_question,
		gameforge.locale.quiz_8_1_choice,
		gameforge.locale.quiz_8_2_choice,
		gameforge.locale.quiz_8_3_choice,
		gameforge.locale.quiz_8_4_choice,
		gameforge.locale.quiz_8_5_answer
	},
	{
		gameforge.locale.quiz_9_0_question,
		gameforge.locale.quiz_9_1_choice,
		gameforge.locale.quiz_9_2_choice,
		gameforge.locale.quiz_9_3_choice,
		gameforge.locale.quiz_9_4_choice,
		gameforge.locale.quiz_9_5_answer
	},
	{
		gameforge.locale.quiz_10_0_question,
		gameforge.locale.quiz_10_1_choice,
		gameforge.locale.quiz_10_2_choice,
		gameforge.locale.quiz_10_3_choice,
		gameforge.locale.quiz_10_4_choice,
		gameforge.locale.quiz_10_5_answer
	},
	{
		gameforge.locale.quiz_11_0_question,
		gameforge.locale.quiz_11_1_choice,
		gameforge.locale.quiz_11_2_choice,
		gameforge.locale.quiz_11_3_choice,
		gameforge.locale.quiz_11_4_choice,
		gameforge.locale.quiz_11_5_answer
	},
	{
		gameforge.locale.quiz_12_0_question,
		gameforge.locale.quiz_12_1_choice,
		gameforge.locale.quiz_12_2_choice,
		gameforge.locale.quiz_12_3_choice,
		gameforge.locale.quiz_12_4_choice,
		gameforge.locale.quiz_12_5_answer
	},
	{
		gameforge.locale.quiz_13_0_question,
		gameforge.locale.quiz_13_1_choice,
		gameforge.locale.quiz_13_2_choice,
		gameforge.locale.quiz_13_3_choice,
		gameforge.locale.quiz_13_4_choice,
		gameforge.locale.quiz_13_5_answer
	},
	{
		gameforge.locale.quiz_14_0_question,
		gameforge.locale.quiz_14_1_choice,
		gameforge.locale.quiz_14_2_choice,
		gameforge.locale.quiz_14_3_choice,
		gameforge.locale.quiz_14_4_choice,
		gameforge.locale.quiz_14_5_answer
	},
	{
		gameforge.locale.quiz_15_0_question,
		gameforge.locale.quiz_15_1_choice,
		gameforge.locale.quiz_15_2_choice,
		gameforge.locale.quiz_15_3_choice,
		gameforge.locale.quiz_15_4_choice,
		gameforge.locale.quiz_15_5_answer
	},
	{
		gameforge.locale.quiz_16_0_question,
		gameforge.locale.quiz_16_1_choice,
		gameforge.locale.quiz_16_2_choice,
		gameforge.locale.quiz_16_3_choice,
		gameforge.locale.quiz_16_4_choice,
		gameforge.locale.quiz_16_5_answer
	},
	{
		gameforge.locale.quiz_17_0_question,
		gameforge.locale.quiz_17_1_choice,
		gameforge.locale.quiz_17_2_choice,
		gameforge.locale.quiz_17_3_choice,
		gameforge.locale.quiz_17_4_choice,
		gameforge.locale.quiz_17_5_answer
	},
	{
		gameforge.locale.quiz_18_0_question,
		gameforge.locale.quiz_18_1_choice,
		gameforge.locale.quiz_18_2_choice,
		gameforge.locale.quiz_18_3_choice,
		gameforge.locale.quiz_18_4_choice,
		gameforge.locale.quiz_18_5_answer
	},
	{
		gameforge.locale.quiz_19_0_question,
		gameforge.locale.quiz_19_1_choice,
		gameforge.locale.quiz_19_2_choice,
		gameforge.locale.quiz_19_3_choice,
		gameforge.locale.quiz_19_4_choice,
		gameforge.locale.quiz_19_5_answer
	},
	{
		gameforge.locale.quiz_20_0_question,
		gameforge.locale.quiz_20_1_choice,
		gameforge.locale.quiz_20_2_choice,
		gameforge.locale.quiz_20_3_choice,
		gameforge.locale.quiz_20_4_choice,
		gameforge.locale.quiz_20_5_answer
	},
	{
		gameforge.locale.quiz_21_0_question,
		gameforge.locale.quiz_21_1_choice,
		gameforge.locale.quiz_21_2_choice,
		gameforge.locale.quiz_21_3_choice,
		gameforge.locale.quiz_21_4_choice,
		gameforge.locale.quiz_21_5_answer
	},
	{
		gameforge.locale.quiz_22_0_question,
		gameforge.locale.quiz_22_1_choice,
		gameforge.locale.quiz_22_2_choice,
		gameforge.locale.quiz_22_3_choice,
		gameforge.locale.quiz_22_4_choice,
		gameforge.locale.quiz_22_5_answer
	},
	{
		gameforge.locale.quiz_23_0_question,
		gameforge.locale.quiz_23_1_choice,
		gameforge.locale.quiz_23_2_choice,
		gameforge.locale.quiz_23_3_choice,
		gameforge.locale.quiz_23_4_choice,
		gameforge.locale.quiz_23_5_answer
	},
	{
		gameforge.locale.quiz_24_0_question,
		gameforge.locale.quiz_24_1_choice,
		gameforge.locale.quiz_24_2_choice,
		gameforge.locale.quiz_24_3_choice,
		gameforge.locale.quiz_24_4_choice,
		gameforge.locale.quiz_24_5_answer
	},
	{
		gameforge.locale.quiz_25_0_question,
		gameforge.locale.quiz_25_1_choice,
		gameforge.locale.quiz_25_2_choice,
		gameforge.locale.quiz_25_3_choice,
		gameforge.locale.quiz_25_4_choice,
		gameforge.locale.quiz_25_5_answer
	},
	{
		gameforge.locale.quiz_26_0_question,
		gameforge.locale.quiz_26_1_choice,
		gameforge.locale.quiz_26_2_choice,
		gameforge.locale.quiz_26_3_choice,
		gameforge.locale.quiz_26_4_choice,
		gameforge.locale.quiz_26_5_answer
	},
	{
		gameforge.locale.quiz_27_0_question,
		gameforge.locale.quiz_27_1_choice,
		gameforge.locale.quiz_27_2_choice,
		gameforge.locale.quiz_27_3_choice,
		gameforge.locale.quiz_27_4_choice,
		gameforge.locale.quiz_27_5_answer
	},
	{
		gameforge.locale.quiz_28_0_question,
		gameforge.locale.quiz_28_1_choice,
		gameforge.locale.quiz_28_2_choice,
		gameforge.locale.quiz_28_3_choice,
		gameforge.locale.quiz_28_4_choice,
		gameforge.locale.quiz_28_5_answer
	},
	{
		gameforge.locale.quiz_29_0_question,
		gameforge.locale.quiz_29_1_choice,
		gameforge.locale.quiz_29_2_choice,
		gameforge.locale.quiz_29_3_choice,
		gameforge.locale.quiz_29_4_choice,
		gameforge.locale.quiz_29_5_answer
	},
	{
		gameforge.locale.quiz_30_0_question,
		gameforge.locale.quiz_30_1_choice,
		gameforge.locale.quiz_30_2_choice,
		gameforge.locale.quiz_30_3_choice,
		gameforge.locale.quiz_30_4_choice,
		gameforge.locale.quiz_30_5_answer
	},
	{
		gameforge.locale.quiz_31_0_question,
		gameforge.locale.quiz_31_1_choice,
		gameforge.locale.quiz_31_2_choice,
		gameforge.locale.quiz_31_3_choice,
		gameforge.locale.quiz_31_4_choice,
		gameforge.locale.quiz_31_5_answer
	},
	{
		gameforge.locale.quiz_32_0_question,
		gameforge.locale.quiz_32_1_choice,
		gameforge.locale.quiz_32_2_choice,
		gameforge.locale.quiz_32_3_choice,
		gameforge.locale.quiz_32_4_choice,
		gameforge.locale.quiz_32_5_answer
	},
	{
		gameforge.locale.quiz_33_0_question,
		gameforge.locale.quiz_33_1_choice,
		gameforge.locale.quiz_33_2_choice,
		gameforge.locale.quiz_33_3_choice,
		gameforge.locale.quiz_33_4_choice,
		gameforge.locale.quiz_33_5_answer
	},
	{
		gameforge.locale.quiz_34_0_question,
		gameforge.locale.quiz_34_1_choice,
		gameforge.locale.quiz_34_2_choice,
		gameforge.locale.quiz_34_3_choice,
		gameforge.locale.quiz_34_4_choice,
		gameforge.locale.quiz_34_5_answer
	},
	{
		gameforge.locale.quiz_35_0_question,
		gameforge.locale.quiz_35_1_choice,
		gameforge.locale.quiz_35_2_choice,
		gameforge.locale.quiz_35_3_choice,
		gameforge.locale.quiz_35_4_choice,
		gameforge.locale.quiz_35_5_answer
	},
	{
		gameforge.locale.quiz_36_0_question,
		gameforge.locale.quiz_36_1_choice,
		gameforge.locale.quiz_36_2_choice,
		gameforge.locale.quiz_36_3_choice,
		gameforge.locale.quiz_36_4_choice,
		gameforge.locale.quiz_36_5_answer
	},
	{
		gameforge.locale.quiz_37_0_question,
		gameforge.locale.quiz_37_1_choice,
		gameforge.locale.quiz_37_2_choice,
		gameforge.locale.quiz_37_3_choice,
		gameforge.locale.quiz_37_4_choice,
		gameforge.locale.quiz_37_5_answer
	},
	{
		gameforge.locale.quiz_38_0_question,
		gameforge.locale.quiz_38_1_choice,
		gameforge.locale.quiz_38_2_choice,
		gameforge.locale.quiz_38_3_choice,
		gameforge.locale.quiz_38_4_choice,
		gameforge.locale.quiz_38_5_answer
	},
	{
		gameforge.locale.quiz_39_0_question,
		gameforge.locale.quiz_39_1_choice,
		gameforge.locale.quiz_39_2_choice,
		gameforge.locale.quiz_39_3_choice,
		gameforge.locale.quiz_39_4_choice,
		gameforge.locale.quiz_39_5_answer
	},
	{
		gameforge.locale.quiz_40_0_question,
		gameforge.locale.quiz_40_1_choice,
		gameforge.locale.quiz_40_2_choice,
		gameforge.locale.quiz_40_3_choice,
		gameforge.locale.quiz_40_4_choice,
		gameforge.locale.quiz_40_5_answer
	},
	{
		gameforge.locale.quiz_41_0_question,
		gameforge.locale.quiz_41_1_choice,
		gameforge.locale.quiz_41_2_choice,
		gameforge.locale.quiz_41_3_choice,
		gameforge.locale.quiz_41_4_choice,
		gameforge.locale.quiz_41_5_answer
	},
	{
		gameforge.locale.quiz_42_0_question,
		gameforge.locale.quiz_42_1_choice,
		gameforge.locale.quiz_42_2_choice,
		gameforge.locale.quiz_42_3_choice,
		gameforge.locale.quiz_42_4_choice,
		gameforge.locale.quiz_42_5_answer
	},
	{
		gameforge.locale.quiz_43_0_question,
		gameforge.locale.quiz_43_1_choice,
		gameforge.locale.quiz_43_2_choice,
		gameforge.locale.quiz_43_3_choice,
		gameforge.locale.quiz_43_4_choice,
		gameforge.locale.quiz_43_5_answer
	},
	{
		gameforge.locale.quiz_44_0_question,
		gameforge.locale.quiz_44_1_choice,
		gameforge.locale.quiz_44_2_choice,
		gameforge.locale.quiz_44_3_choice,
		gameforge.locale.quiz_44_4_choice,
		gameforge.locale.quiz_44_5_answer
	},
	{
		gameforge.locale.quiz_45_0_question,
		gameforge.locale.quiz_45_1_choice,
		gameforge.locale.quiz_45_2_choice,
		gameforge.locale.quiz_45_3_choice,
		gameforge.locale.quiz_45_4_choice,
		gameforge.locale.quiz_45_5_answer
	},
	{
		gameforge.locale.quiz_46_0_question,
		gameforge.locale.quiz_46_1_choice,
		gameforge.locale.quiz_46_2_choice,
		gameforge.locale.quiz_46_3_choice,
		gameforge.locale.quiz_46_4_choice,
		gameforge.locale.quiz_46_5_answer
	},
	{
		gameforge.locale.quiz_47_0_question,
		gameforge.locale.quiz_47_1_choice,
		gameforge.locale.quiz_47_2_choice,
		gameforge.locale.quiz_47_3_choice,
		gameforge.locale.quiz_47_4_choice,
		gameforge.locale.quiz_47_5_answer
	},
	{
		gameforge.locale.quiz_48_0_question,
		gameforge.locale.quiz_48_1_choice,
		gameforge.locale.quiz_48_2_choice,
		gameforge.locale.quiz_48_3_choice,
		gameforge.locale.quiz_48_4_choice,
		gameforge.locale.quiz_48_5_answer
	},
	{
		gameforge.locale.quiz_49_0_question,
		gameforge.locale.quiz_49_1_choice,
		gameforge.locale.quiz_49_2_choice,
		gameforge.locale.quiz_49_3_choice,
		gameforge.locale.quiz_49_4_choice,
		gameforge.locale.quiz_49_5_answer
	},
	{
		gameforge.locale.quiz_50_0_question,
		gameforge.locale.quiz_50_1_choice,
		gameforge.locale.quiz_50_2_choice,
		gameforge.locale.quiz_50_3_choice,
		gameforge.locale.quiz_50_4_choice,
		gameforge.locale.quiz_50_5_answer
	},
	{
		gameforge.locale.quiz_51_0_question,
		gameforge.locale.quiz_51_1_choice,
		gameforge.locale.quiz_51_2_choice,
		gameforge.locale.quiz_51_3_choice,
		gameforge.locale.quiz_51_4_choice,
		gameforge.locale.quiz_51_5_answer
	},
	{
		gameforge.locale.quiz_52_0_question,
		gameforge.locale.quiz_52_1_choice,
		gameforge.locale.quiz_52_2_choice,
		gameforge.locale.quiz_52_3_choice,
		gameforge.locale.quiz_52_4_choice,
		gameforge.locale.quiz_52_5_answer
	},
	{
		gameforge.locale.quiz_53_0_question,
		gameforge.locale.quiz_53_1_choice,
		gameforge.locale.quiz_53_2_choice,
		gameforge.locale.quiz_53_3_choice,
		gameforge.locale.quiz_53_4_choice,
		gameforge.locale.quiz_53_5_answer
	},
	{
		gameforge.locale.quiz_54_0_question,
		gameforge.locale.quiz_54_1_choice,
		gameforge.locale.quiz_54_2_choice,
		gameforge.locale.quiz_54_3_choice,
		gameforge.locale.quiz_54_4_choice,
		gameforge.locale.quiz_54_5_answer
	},
	{
		gameforge.locale.quiz_55_0_question,
		gameforge.locale.quiz_55_1_choice,
		gameforge.locale.quiz_55_2_choice,
		gameforge.locale.quiz_55_3_choice,
		gameforge.locale.quiz_55_4_choice,
		gameforge.locale.quiz_55_5_answer
	},
	{
		gameforge.locale.quiz_56_0_question,
		gameforge.locale.quiz_56_1_choice,
		gameforge.locale.quiz_56_2_choice,
		gameforge.locale.quiz_56_3_choice,
		gameforge.locale.quiz_56_4_choice,
		gameforge.locale.quiz_56_5_answer
	},
	{
		gameforge.locale.quiz_57_0_question,
		gameforge.locale.quiz_57_1_choice,
		gameforge.locale.quiz_57_2_choice,
		gameforge.locale.quiz_57_3_choice,
		gameforge.locale.quiz_57_4_choice,
		gameforge.locale.quiz_57_5_answer
	},
	{
		gameforge.locale.quiz_58_0_question,
		gameforge.locale.quiz_58_1_choice,
		gameforge.locale.quiz_58_2_choice,
		gameforge.locale.quiz_58_3_choice,
		gameforge.locale.quiz_58_4_choice,
		gameforge.locale.quiz_58_5_answer
	},
	{
		gameforge.locale.quiz_59_0_question,
		gameforge.locale.quiz_59_1_choice,
		gameforge.locale.quiz_59_2_choice,
		gameforge.locale.quiz_59_3_choice,
		gameforge.locale.quiz_59_4_choice,
		gameforge.locale.quiz_59_5_answer
	},
	{
		gameforge.locale.quiz_60_0_question,
		gameforge.locale.quiz_60_1_choice,
		gameforge.locale.quiz_60_2_choice,
		gameforge.locale.quiz_60_3_choice,
		gameforge.locale.quiz_60_4_choice,
		gameforge.locale.quiz_60_5_answer
	},
	{
		gameforge.locale.quiz_61_0_question,
		gameforge.locale.quiz_61_1_choice,
		gameforge.locale.quiz_61_2_choice,
		gameforge.locale.quiz_61_3_choice,
		gameforge.locale.quiz_61_4_choice,
		gameforge.locale.quiz_61_5_answer
	},
	{
		gameforge.locale.quiz_62_0_question,
		gameforge.locale.quiz_62_1_choice,
		gameforge.locale.quiz_62_2_choice,
		gameforge.locale.quiz_62_3_choice,
		gameforge.locale.quiz_62_4_choice,
		gameforge.locale.quiz_62_5_answer
	},
	{
		gameforge.locale.quiz_63_0_question,
		gameforge.locale.quiz_63_1_choice,
		gameforge.locale.quiz_63_2_choice,
		gameforge.locale.quiz_63_3_choice,
		gameforge.locale.quiz_63_4_choice,
		gameforge.locale.quiz_63_5_answer
	},
	{
		gameforge.locale.quiz_64_0_question,
		gameforge.locale.quiz_64_1_choice,
		gameforge.locale.quiz_64_2_choice,
		gameforge.locale.quiz_64_3_choice,
		gameforge.locale.quiz_64_4_choice,
		gameforge.locale.quiz_64_5_answer
	},
	{
		gameforge.locale.quiz_65_0_question,
		gameforge.locale.quiz_65_1_choice,
		gameforge.locale.quiz_65_2_choice,
		gameforge.locale.quiz_65_3_choice,
		gameforge.locale.quiz_65_4_choice,
		gameforge.locale.quiz_65_5_answer
	},
	{
		gameforge.locale.quiz_66_0_question,
		gameforge.locale.quiz_66_1_choice,
		gameforge.locale.quiz_66_2_choice,
		gameforge.locale.quiz_66_3_choice,
		gameforge.locale.quiz_66_4_choice,
		gameforge.locale.quiz_66_5_answer
	},
	{
		gameforge.locale.quiz_67_0_question,
		gameforge.locale.quiz_67_1_choice,
		gameforge.locale.quiz_67_2_choice,
		gameforge.locale.quiz_67_3_choice,
		gameforge.locale.quiz_67_4_choice,
		gameforge.locale.quiz_67_5_answer
	},
	{
		gameforge.locale.quiz_68_0_question,
		gameforge.locale.quiz_68_1_choice,
		gameforge.locale.quiz_68_2_choice,
		gameforge.locale.quiz_68_3_choice,
		gameforge.locale.quiz_68_4_choice,
		gameforge.locale.quiz_68_5_answer
	},
	{
		gameforge.locale.quiz_69_0_question,
		gameforge.locale.quiz_69_1_choice,
		gameforge.locale.quiz_69_2_choice,
		gameforge.locale.quiz_69_3_choice,
		gameforge.locale.quiz_69_4_choice,
		gameforge.locale.quiz_69_5_answer
	},
	{
		gameforge.locale.quiz_70_0_question,
		gameforge.locale.quiz_70_1_choice,
		gameforge.locale.quiz_70_2_choice,
		gameforge.locale.quiz_70_3_choice,
		gameforge.locale.quiz_70_4_choice,
		gameforge.locale.quiz_70_5_answer
	},
	{
		gameforge.locale.quiz_71_0_question,
		gameforge.locale.quiz_71_1_choice,
		gameforge.locale.quiz_71_2_choice,
		gameforge.locale.quiz_71_3_choice,
		gameforge.locale.quiz_71_4_choice,
		gameforge.locale.quiz_71_5_answer
	},
}

locale.GM_SKILL_NAME_DICT = {
	[1] = gameforge.locale.gm_skill_name_1,
	[2] = gameforge.locale.gm_skill_name_2,
	[3] = gameforge.locale.gm_skill_name_3,
	[4] = gameforge.locale.gm_skill_name_4,
	[5] = gameforge.locale.gm_skill_name_5,
	[16] = gameforge.locale.gm_skill_name_6,
	[17] = gameforge.locale.gm_skill_name_7,
	[18] = gameforge.locale.gm_skill_name_8,
	[19] = gameforge.locale.gm_skill_name_9,
	[20] = gameforge.locale.gm_skill_name_10,
	[31] = gameforge.locale.gm_skill_name_11,
	[32] = gameforge.locale.gm_skill_name_12,
	[33] = gameforge.locale.gm_skill_name_13,
	[34] = gameforge.locale.gm_skill_name_14,
	[35] = gameforge.locale.gm_skill_name_15,
	[46] = gameforge.locale.gm_skill_name_16,
	[47] = gameforge.locale.gm_skill_name_17,
	[48] = gameforge.locale.gm_skill_name_18,
	[49] = gameforge.locale.gm_skill_name_19,
	[50] = gameforge.locale.gm_skill_name_20,
	[61] = gameforge.locale.gm_skill_name_21,
	[62] = gameforge.locale.gm_skill_name_22,
	[63] = gameforge.locale.gm_skill_name_23,
	[64] = gameforge.locale.gm_skill_name_24,
	[65] = gameforge.locale.gm_skill_name_25,
	[66] = gameforge.locale.gm_skill_name_26,
	[76] = gameforge.locale.gm_skill_name_27,
	[77] = gameforge.locale.gm_skill_name_28,
	[78] = gameforge.locale.gm_skill_name_29,
	[79] = gameforge.locale.gm_skill_name_30,
	[80] = gameforge.locale.gm_skill_name_31,
	[81] = gameforge.locale.gm_skill_name_32,
	[91] = gameforge.locale.gm_skill_name_33,
	[92] = gameforge.locale.gm_skill_name_34,
	[93] = gameforge.locale.gm_skill_name_35,
	[94] = gameforge.locale.gm_skill_name_36,
	[95] = gameforge.locale.gm_skill_name_37,
	[96] = gameforge.locale.gm_skill_name_38,
	[106] = gameforge.locale.gm_skill_name_39,
	[107] = gameforge.locale.gm_skill_name_40,
	[108] = gameforge.locale.gm_skill_name_41,
	[109] = gameforge.locale.gm_skill_name_42,
	[110] = gameforge.locale.gm_skill_name_43,
	[111] = gameforge.locale.gm_skill_name_44,
}
locale.dungeon = {}
locale.dungeon.time_limit_party = "Das Dungeon-Party sosokwon nicht verstrichene Zeit ist begrenzt, da die Position wurde vom Platz gestellt."
locale.dungeon.time_limit = "Dungeon Position Grenzen wurden ausgeschaltet, weil die Zeit noch nicht abgelaufen ist, geschickt."
locale.dungeon.no_ticket_party = "Rote Karten haben keinen Pass Zertifikat der Partei waren sosokwon."
locale.dungeon.no_ticket = "Verhandelbar Zertifikate wurden nicht abgeschickt."
locale.dungeon.level_limit_party = "Parteien nicht erreichen sosokwon %d Lv geschickt wurde."
locale.dungeon.level_limit = "%d Lv nicht erreicht wurden abgeschickt."
locale.dungeon.leader_can_go = "Der Führer der Partei, aber Sie können gehen."
locale.dungeon.enter_yes = "Gib."
locale.dungeon.enter_no = "Geben Sie nicht."
locale.dungeon.leader_can_enter = "Der Führer der Partei, kann aber für die Zulassung beantragen."
locale.dungeon.party_can_enter = "Das Verlies Eingang ist eine Partei an den Staat."

locale.flame_dungeon = {}
locale.flame_dungeon.say_1 = "Yamacheon yeomwang eine Position zu bestrafen sicher?"
locale.flame_dungeon.say_2 = "Position"
locale.flame_dungeon.say_3 = "schließen"
locale.flame_dungeon.say_4 = "Partei Kapitel 103Lv nicht füllen Sie alle Quests, sind weitere Fortschritte nicht möglich."
locale.flame_dungeon.say_5 = "Das Dungeon-Party sosokwon nicht verstrichene Zeit ist begrenzt, da die Position wurde vom Platz gestellt."
locale.flame_dungeon.say_6 = "Dungeon Position Grenzen wurden ausgeschaltet, weil die Zeit noch nicht abgelaufen ist, geschickt."
locale.flame_dungeon.say_7 = "Diese Stelle kann nicht sosokwon Partei Zertifizierung wurde abgeschickt."
locale.flame_dungeon.say_8 = "Verhandelbar Zertifikate wurden nicht abgeschickt."
locale.flame_dungeon.say_9 = "Sosokwon beiden Parteien nicht erreichen 100lv geschickt wurde."
locale.flame_dungeon.say_10 = "Noch nicht erreicht wurde, beenden 100lv."
locale.flame_dungeon.say_11 = "Jeokryong Schloss"
locale.flame_dungeon.say_12 = "Wollen Sie zum Schloss wirklich jeokryong gehen?"
locale.flame_dungeon.say_13 = "Gib"
locale.flame_dungeon.say_14 = "Geben Sie nicht."
locale.flame_dungeon.say_15 = "Der Führer der Partei, kann aber für die Zulassung beantragen."
locale.flame_dungeon.say_16 = "Das Verlies Eingang ist eine Partei an den Staat."
locale.flame_dungeon.say_17 = "Sowohl die Verweilzeit abgelaufen ist, wird der Eintrag jeokryong gehen aus der Stadt."
locale.flame_dungeon.say_18 = "Retentionszeit jeokryong sex position %d Minuten."
locale.flame_dungeon.say_19 = "Alle Sex-Stellungen jeokryong Verweilzeit abgelaufen."
locale.flame_dungeon.say_20 = "Jeokryong wird aus der Stadt etwa 10 Sekunden bewegt."
locale.flame_dungeon.say_21 = "Jeokryong Geschlecht Verhalten."
locale.flame_dungeon.say_22 = "Der Führer der Partei, aber Sie können gehen."
locale.flame_dungeon.say_23 = "Jeokryong daegeon ausgeschaltet ist."
locale.flame_dungeon.say_24 = "Jeokryong sex position wird 1 Stunde, vollständig oder in Entwicklung während jeokryong Stern wurde 30 Minuten gesendet aufrechterhalten werden, wenn die Position ist begrenzt."
locale.flame_dungeon.say_25 = "Jeokryong Stunde Sex-Stellungen zu halten überlassen."
locale.flame_dungeon.say_26 = "Daegeon jeokryong ausgeschaltet ist, einen Platz zum alles Böse zu besiegen."
locale.flame_dungeon.say_27 = "Alles Böse wird nicht besiegt noch."
locale.flame_dungeon.say_28 = "Tötet die restlichen: "
locale.flame_dungeon.say_29 = "Daegeon jeokryong ausgeschaltet ist, um einen Platz für alle entsiegeln finden."
locale.flame_dungeon.say_30 = "Erforderlich, um die bösen Zähne erhalten lassen, wenn die Behandlung ist möglich."
locale.flame_dungeon.say_31 = "Jean Ritzel Dichtung kann nur off ausgeschaltet werden."
locale.flame_dungeon.say_32 = "Daegeon jeokryong freigegeben wird, um herauszufinden, wo die geheimnisvolle Jean Verliehen Incinerator."
locale.flame_dungeon.say_33 = "Jin lebt Incinerator Bars, jeokryong sex Dichtung ist fest."
locale.flame_dungeon.say_34 = "Verliehen Jean Incinerator finden Bars."
locale.flame_dungeon.say_35 = "Daegeon jeokryong freigegeben worden, um herauszufinden, wo man entsiegeln."
locale.flame_dungeon.say_36 = "Sealing Stone Church an der Wende jeokryong Böse erhalten wird."
locale.flame_dungeon.say_37 = "Sealing Stein wurde nicht beide entlassen."
locale.flame_dungeon.say_38 = "Jeokryong daegeon Di hearthstone ausgeschaltet ist, einen Ort zu zerstören finden."
locale.flame_dungeon.say_39 = "Ich glaube nicht, Ruhestein Di zerstört werden, einer nach dem anderen, und sie sind böse."
locale.flame_dungeon.say_40 = "Di zu finden und zerstören den Ruhestein."
locale.flame_dungeon.say_41 = "Halten yamacheon Beat"
locale.flame_dungeon.say_42 = "Alle Monster besiegt wurden."
locale.flame_dungeon.say_43 = "Jeokryong Verhältnis im Laufe des nächsten jeokryong daegeon freizugeben."
locale.flame_dungeon.say_44 = "Beide wurden abgeriegelt."
locale.flame_dungeon.say_45 = "Der eigentliche Schlüssel ist nicht"
locale.flame_dungeon.say_46 = "Bullion wurde von Jin Incinerator besiegt."
locale.flame_dungeon.say_47 = "Bitte zerlegen Sie das zweite Verzauberung"
locale.flame_dungeon.say_48 = "Bitte bauen Sie die dritte Chains."
locale.flame_dungeon.say_49 = "Falsche Reihenfolge."
locale.flame_dungeon.say_50 = "Bitte bauen Sie die vierte Chains."
locale.flame_dungeon.say_51 = "Ketten von vier oder fünf ersten Besuch demontieren."
locale.flame_dungeon.say_52 = "Ketten von vier oder fünf ersten Besuch demontieren."
locale.flame_dungeon.say_53 = "Ketten von vier oder fünf ersten Besuch demontieren."
locale.flame_dungeon.say_54 = "Di hearthstone besiegt wurde."
locale.flame_dungeon.say_55 = "Yeomwang yamacheon besiegt wurde."
locale.flame_dungeon.say_56 = "Sind aus der Stadt nach einer Minute jeokryong bewegt."
locale.flame_dungeon.say_57 = "Parteien nicht erreichen Kapitel 104Lv weitere Fortschritte ist nicht möglich."
locale.flame_dungeon.say_58 = "Partei kann nicht weiter vorgehen Behinderung verschwinden [ENTER]"
locale.flame_dungeon.say_59 = "Re-entry Zeit ist mehr als fünf Minuten ist nicht erlaubt. [ENTER]"
locale.flame_dungeon.say_60 = "Partei nicht mit Dungeon hayeotgeona starten."

locale.main_quest_flame_lv99 = {}
locale.main_quest_flame_lv99.say_1 = "´Ù½Ã ½ÃÀÛµÇ´Â ÃßÀû"
locale.main_quest_flame_lv99.say_2 = "¾àÈ¯(20377)ÀÌ ´ç½ÅÀ» ±ÞÇÏ°Ô Ã£°í ÀÖ½À´Ï´Ù.[ENTER]¾àÈ¯(20377)¿¡°Ô ÀÚ¼¼ÇÑ ÀÌ¾ß±â¸¦ µé¾îº¸µµ·Ï ÇÏ½Ê½Ã¿À.[ENTER]"
locale.main_quest_flame_lv99.say_3 = "¾î¼­ ¿À°Ô³ª.[ENTER]ÀÏÀü¿¡´Â ÃÊ¸¶´ÜÀÇ ¼ú¹ýÀ» ÀúÁöÇÏ´À¶ó °í»ýÀÌ ¸¹¾Ò¾úÁö.[ENTER]³ª´Â ÃÊ¸¶´ÜÀÌ ºÐ¸í ÀÌ´ë·Î ¹°·¯³ªÁö ¾ÊÀ» °ÍÀÌ¶ó »ý°¢ÇÏ°í ÀÖ¾ú´Ù³×.[ENTER]±×·¡¼­ ³»°¡ µ¿¿øÇÒ ¼ö ÀÖ´Â ¸ðµç Á¤º¸¸ÁÀ» °¡µ¿ÇØ¼­, ÃßÀûÀ» °è¼ÓÇÏ°í ÀÖ¾ú´Ù³×.[ENTER]"
locale.main_quest_flame_lv99.say_4 = "³×. ÀÌ·¸°Ô ºÎ¸£¼ÌÀ¸´Ï ¹«¾ð°¡ ³ª¿Â °ÍÀÌ±º¿ä?[ENTER]"
locale.main_quest_flame_lv99.say_5 = "±×·¸Áö.[ENTER]±×·±µ¥ ¸» ±×´ë·Î ½ÉÁõÀÏ »Ó Á÷Á¢ È®ÀÎÀ» ÇÏÁö´Â ¸øÇÑ »óÅÂ¶ó³×.[ENTER]±×·¡¼­ ÀÚ³×°¡ Á» ³ª¸¦ µµ¿Í¼­ È®ÀÎÀ» ÇØÁÖ¾úÀ¸¸é ÇÑ´Ù³×.[ENTER]"
locale.main_quest_flame_lv99.say_6 = "ÃÖ±Ùµé¾î¼­ µµ¿°È­Áö°¡ ½É»óÄ¡ ¾Ê´Ù´Â Á¤º¸°¡ ÀÚÁÖ µé¸®´Â °ÍÀ¸·Î º¸¾Æ, ºÎÇÏ¸¦ ½ÃÄÑ È®ÀÎÀ» ÇØ º¸·Á Çß´Ù³×.[ENTER]¹«¿¹°¡ ÃâÁßÇÑ ºÎÇÏÀÓ¿¡µµ ºÒ±¸ÇÏ°í µ¹¾Æ¿ÀÁö ¾Ê°í ÀÖ´Ù³×.[ENTER]µµ¿°È­ÁöÀÇ ¾îÁö°£ÇÑ ¸¶¹°µµ ¾îÂ¼Áö ¸øÇÏ´Â ³à¼®ÀÎµ¥, ºÐ¸í ¹«¾ð°¡ ÀÏÀÌ ÅÍÁø °Í °°´Ù³×.[ENTER]ÀÚ³×°¡ µµ¿°È­Áö·Î°¡¼­, ¹«½¼ÀÏÀÌ »ý±ä °ÍÀÎÁö º¸°í ¿ÍÁÖ°Ô³ª.[ENTER]ºÎÇÏ³à¼®À» Ã£°Åµç ¼ÓÈ÷ ±ÍÈ¯ÇÏ¶ó´Â ¸»µµ ÀüÇØÁÖ°í ¸»ÀÌ¾ß.[ENTER]"
locale.main_quest_flame_lv99.say_7 = "³×. ¾Ë°Ú½À´Ï´Ù.[ENTER]"
locale.main_quest_flame_lv99.say_8 = "ºÎÇÏ¿Í Àü¼­±¸·Î ¼­½ÅÀ» ÁÖ°í ¹Þ´ø Áß, ´ë·«ÀûÀÎ À§Ä¡´Â ÆÄ¾ÇÀÌ µÈ »óÅÂ´Ï ³»°¡ Áöµµ¿¡ Ç¥½ÃÇØÁØ °÷À¸·Î °¡º¸¸é µÉ °ÍÀÏ¼¼.[ENTER]´Ù³à ¿À°Ô³ª.[ENTER]"
locale.main_quest_flame_lv99.say_9 = "¾àÈ¯(20377)ÀÌ µµ¿°È­Áö Áöµµ¿¡ Ç¥½Ã¸¦ ÇØÁÖ¾ú½À´Ï´Ù.[ENTER]È®ÀÎÇÒ ÁöÁ¡Àº (%d,%d) ÀÔ´Ï´Ù."
locale.main_quest_flame_lv99.say_10 = "µµ¿°È­Áö¸¦ Á¤ÂûÇÏÀÚ!"
locale.main_quest_flame_lv99.say_11 = "¾àÈ¯(20377)ÀÌ ¾Ë·Á ÁØ °÷À» Á¤ÂûÇÏµµ·Ï ÇÏÀÚ.[ENTER]"
locale.main_quest_flame_lv99.say_12 = "³»°¡ Áöµµ¿¡ Ç¥½ÃÇØÁØ °÷¿¡ ºÐ¸í ¹«¾ð°¡ ÀÖÀ» °ÍÀÌ³×.[ENTER]ÀÚ¼¼È÷ µ¹¾Æº¸°í ¿Â °ÍÀÌ ¸Â´Â°¡?[ENTER]½Ã±ÞÀ» ´ÙÅõ´Â ÀÏÀÌ´Ï ¾î¼­ ´Ù³à¿Í ÁÖ°Ô³ª.[ENTER]"
locale.main_quest_flame_lv99.say_13 = "¾àÈ¯(20377)ÀÌ ¾Ë·ÁÁØ Áö¿ª¿¡ µµÂøÇÏ¿´½À´Ï´Ù.[ENTER]¾àÈ¯(20377)¿¡°Ô µ¹¾Æ°¡ º¸°íÇÏ½Ê½Ã¿À."
locale.main_quest_flame_lv99.say_14 = "¾Ç·æ±ºµµÀÇÀÇ ¾àÈ¯(20377)À» Ã£¾Æ ¸»À» °Éµµ·Ï ÇÏÀÚ.[ENTER]"
locale.main_quest_flame_lv99.say_15 = "¿À! µ¹¾Æ ¿Ô±º ±×·¡.[ENTER]¹«¾ð°¡ Á» ³ª¿Ô´Â°¡?[ENTER]"
locale.main_quest_flame_lv99.say_16 = "Áöµµ¿¡ Ç¥½ÃÇØÁÖ½Å °÷¿¡ °¡º¸¾ÒÀ¸³ª, ¾Æ½±°Ôµµ ºÎÇÏºÐÀÇ Çà¹æÀº Ã£Áö ¸øÇÏ¿´½À´Ï´Ù.[ENTER]ÁÖº¯À» »ìÆìº» °á°ú ¸¶¹°µéÀÌ ¼Ò¸®°¡ ¿ì··Â÷°Ô µé¸®°í, À»¾¾³â½º·¯¿î µ¿±¼À» ÇÏ³ª ¹ß°ßÇÏ¿´½À´Ï´Ù.[ENTER]"
locale.main_quest_flame_lv99.say_17 = "±×·¸±º.[ENTER]¾Æ¹«·¡µµ ¹«¾ð°¡ ºÒ¾ÈÇÏ±º ±×·¡.[ENTER]ÀÚ³×°¡ ¸»ÇÑ Áö¿ª¿¡ ´ëÇØ¼­ ´õ Á¶»çÇÏ°í ´Ù½Ã ºÎ¸£µµ·Ï ÇÏ°Ú³×.[ENTER]"
locale.main_quest_flame_lv99.say_18 = "Á¶»ç1-1"
locale.main_quest_flame_lv99.say_19 = "ÀÚ³×°¡ ³ª¿¡°Ô ¾Ë·ÁÁØ ±× µ¿±¼¿¡ ´ëÇØ¼­ ¾Ë¾Æ º¸·Á°í ¾È°£ÈûÀ» ½èÁö¸¸, ¾ÆÁ÷ °¥ÇÇ¸¦ ÀâÁö ¸øÇÏ°í ÀÖ´Ù³×.[ENTER]¾Æ¹«·¡µµ ÇÐÀÚ(20380)ÀÇ µµ¿òÀÌ Àý½ÇÈ÷ ÇÊ¿ä ÇÒ °Í °°±º ±×·¡.[ENTER]³»°¡ ÀÚ³×¿¡°Ô ¼­½ÅÀ» ÁÙ ÅÍÀÌ´Ï ÇÐÀÚ(20380)¿¡°Ô ÀüÇØ ÁÖ°Ô³ª.[ENTER]ÇÐÀÚ(20380)µµ ÀÌ ¼­½ÅÀ» º¸¸é ¾Ë¾Æº¸°í µµ¿òÀ» ÁÙ °ÍÀÌ¾ß.[ENTER]"
locale.main_quest_flame_lv99.say_20 = "¾Ç·æ±ºµµÀÇÀÇ ÇÐÀÚ(20380)¸¦ Ã£¾Æ ¸»À» °Éµµ·Ï ÇÏÀÚ.[ENTER]"
locale.main_quest_flame_lv99.say_21 = "(Áß¾ó Áß¾ó)[ENTER]±ôÂ¦ÀÌ¾ß¡¦ÀÌ »ç¶÷ ¸Å¹ø »ç¶÷À» ³î·¡Å°´Â ±¸¸¸¡¦[ENTER]¿À¸é ¿Ô´Ù°í ±âº°À» ÇØ¾ß ÇÒ °ÍÀÌ ¾Æ´Ñ°¡?[ENTER]±×·¡. ¾îÀÎ ÀÏ·Î ¿Ô´Â°¡?[ENTER]"
locale.main_quest_flame_lv99.say_22 = "¾àÈ¯(20377)´Ô²²¼­ ÀÌ ¼­½ÅÀ» ÀüÇØ ÁÖ¶ó ÇÏ¼Ì½À´Ï´Ù.[ENTER]"
locale.main_quest_flame_lv99.say_23 = "À½¡¦¾àÈ¯(20377)´ÔÀÇ ¼­½ÅÀ» º¸´Ï, ¾î¶² °ÍÀ» ¿ì·ÁÇÏ½Ã´Â Áö ¾Ë °Í °°±º ±×·¡.[ENTER]¹«¾ùÀÌµç È®½ÇÇÑ °ÍÀÌ ÁÁÀ¸´Ï, ³ª¸¦ Á» µµ¿Í ÁÖ°Ô³ª.[ENTER]"
locale.main_quest_flame_lv99.say_24 = "ÀÚ³×°¡ ´Ù³à¿Â ±× µ¿±¼ ÀÎ±ÙÀ» Á¶»çÇØ º¸¾Æ¾ß ÇÒ °Í °°³×.[ENTER]ÁÖº¯ ºÎÅÍ Á¶»çÇØ º¸´Â °ÍÀÌ ÁÁÀ» °ÍÀÌ³×. ÇÔºÎ·Î ³ª¼¹´Ù°¡´Â ÀÏÀ» ±×¸©Ä¡°Ô µÇ´Ï ¸»ÀÏ¼¼.[ENTER]µ¿±¼¿¡¼­ À»¾¾³â½º·¯¿Â ¼Ò¸®°¡ ³ª¿Ô´Ù°í ÇÏ´Ï, ÁÖº¯ ¸¶¹°¿¡µµ ¿µÇâÀÌ ÀÖÁö ¾ÊÀ»±î ½Í³×.[ENTER]ÀÌ Á¾ÀÌ¸¦ ÁÙÅÍÀÌ´Ï, ¹«±¸¿¡ °¨°í¼­ ÁÖº¯ ¸¶¹°À» Ã³Ä¡ÇØ ÁÖ°Ô³ª.[ENTER]Å¹±âÀÇ ¿µÇâÀÌ Å« ¸¶¹°À» Ã³Ä¡ÇÏ¸é °Ë°Ô º¯ÇÒ °ÍÀÌ³×.[ENTER]"
locale.main_quest_flame_lv99.say_25 = "¾àÈ¯(20377)¿¡°Ô º¸°íÇÏ¿´´ø µ¿±¼ ÁÖº¯ ¸¶¹°À» Ã³Ä¡ÇÏÀÚ."
locale.main_quest_flame_lv99.say_26 = "µ¿±¼ ÁÖº¯ÀÇ ¸¶¹°À» Ã³Ä¡ÇÏÀÚ."
locale.main_quest_flame_lv99.say_27 = "¾àÈ¯(20377)¿¡°Ô º¸°íÇÏ¿´´ø µ¿±¼ ÁÖº¯ÀÇ ¸¶¹°À» Ã³Ä¡ ÇÏÀÚ.[ENTER]"
locale.main_quest_flame_lv99.say_28 = "À½¡¦ºÐ¸í ÁÖº¯¿¡ Å¹±âÀÇ ¿µÇâÀ» ¹Þ¾ÒÀ» ÅÍÀÎµ¥.[ENTER]Àç´ë·Î È®ÀÎÇÏ°í ¿Â °ÍÀÌ ¸Â´Â°¡?[ENTER]´Ù½Ã ÇÑ¹ø ´Ù³à¿Í ÁÖ°Ô³ª.[ENTER]"
locale.main_quest_flame_lv99.say_29 = "ÇÐÀÚ(20380)°¡ ÁØ Á¾ÀÌ°¡ °Ë°Ô º¯ÇÏ¿´´Ù. ÇÐÀÚ(20380)¿¡°Ô ÀüÇØÁÖÀÚ."
locale.main_quest_flame_lv99.say_30 = "¿Ô±º±×·¡.[ENTER]À½¡¦¿ª½Ã Å¹±âÀÇ ¿µÇâÀ» ¹ÞÀº ¸¶¹°µéÀÌ °÷°÷¿¡ ÆÛÁ® ÀÖ´Â °ÍÀÌ±¸¸¸.[ENTER]ÀÌ Á¾ÀÌ¿¡ ½º¸çµç Å¹±â¸¦ Á¶»ç¸¦ ÇØº¸¾Æ¾ß ÇÏ´Ï ÀÏ´Ü µ¹¾Æ°¡¼­ ½¬°í ÀÖ°Ô³ª.[ENTER]"
locale.main_quest_flame_lv99.say_31 = "Á¶»ç1-2"
locale.main_quest_flame_lv99.say_32 = "ÇÐÀÚ(20380)°¡ ´ç½ÅÀ» ±ÞÇÏ°Ô Ã£°í ÀÖ½À´Ï´Ù.[ENTER]ÇÐÀÚ(20380)¿¡°Ô ÀÚ¼¼ÇÑ ÀÌ¾ß±â¸¦ µé¾îº¸µµ·Ï ÇÏ½Ê½Ã¿À.[ENTER]"
locale.main_quest_flame_lv99.say_33 = "¾î¼­¿À°Ô³ª.[ENTER]ÀÚ³×°¡ °¡Á®¿Â Å¹±â°¡ ½º¸çµç Á¾ÀÌ¸¦ Á¶»çÇØ º¸°í ÀÖ´ø ÁßÀÌ ¾ú³×.[ENTER]Å¹±â´Â ÀÏ¹ÝÀÎÀÌ Á¢¼ÓÇÏ¸é Á¤½ÅÀÌ Å¹ÇØÁö±â ¶§¹®¿¡, ÇâÀ» ÇÇ¿ì°í Á¶»çÇÏ¿©¾ß ÇÑ´Ù³×.[ENTER]±×·±µ¥ ÀÌ¹ø¿¡ Á¶»ç¸¦ ÇÏ´ø Áß¿¡ ÇâÀ» ºñ¿ï ¾àÃÊ°¡ ¸ðµÎ ¼ÒÁøµÇ¾î¼­ ¸»ÀÌ¾ß.[ENTER]"
locale.main_quest_flame_lv99.say_34 = "±×·¸±º¿ä. ½É»óÄ¡ ¾ÊÀº µ¿ÅÂ°¡ º¸ÀÌ´Ï Á¦°¡ ¾î¼­ ¾àÃÊ¸¦ ±¸ÇØ ¿Àµµ·Ï ÇÏ°Ú½À´Ï´Ù.[ENTER]"
locale.main_quest_flame_lv99.say_35 = "ÇãÇã.[ENTER]ÀÚ³×´Â ´Ã ±×¸® ´«Ä¡°¡ ºü¸£±¸¸¸¡¦[ENTER]¾àÃÊ´Â À½±â¸¦ ´­·¯¾ß ÇÏ´Â Áß¿äÇÑ ¿ªÇÒÀ» ÇÑ´Ù³×.[ENTER]±×·¯´Ùº¸´Ï ¾ç±â°¡ ³ÑÄ¡´Â °÷¿¡ ÀÚ»ýÀ» ÇÑ´Ù³×.[ENTER]µµ¿°È­Áö´Â ¾Ë °ÍÀÌ°í, ±× ³¡ÂÊ¿¡ ÀÖÀ¸´Ï ÀÚ³×°¡ ´Ù³à¿À°Ô³ª.[ENTER]ÀÌ Áöµµ¸¦ º¸°í °¡¸é µÉ °ÍÀÌ¾ß.[ENTER]¹°·Ð ³ªµµ ±â¾ïÀÌ °¡¹°°¡¹°ÇØ¼­ Á¤È®ÇÏÁø ¾Ê´Ù³×.[ENTER]"
locale.main_quest_flame_lv99.say_36 = "³×. ¾Ë°Ú½À´Ï´Ù.[ENTER]Áï½Ã ´Ù³à ¿Àµµ·Ï ÇÏ°Ú½À´Ï´Ù.[ENTER]"
locale.main_quest_flame_lv99.say_37 = "ÇÐÀÚ(20380)°¡ Áöµµ¿¡ Ç¥½ÃÇØÁØ °÷¿¡¼­ ÅÂ¾çÃÊ(31076)¸¦ ±¸ÇØ¿ÀÀÚ"
locale.main_quest_flame_lv99.say_38 = "ÅÂ¾çÃÊ(31076)¸¦ ±¸ÇÏÀÚ."
locale.main_quest_flame_lv99.say_39 = "ÇÐÀÚ(20380)°¡ ÁØ ÁöµµÀÇ À§Ä¡¿¡¼­ ¾àÃÊ¸¦ ±¸ÇØ¿ÀÀÚ.[ENTER]"
locale.main_quest_flame_lv99.say_40 = "ÀÌºÁ¡¦[ENTER]ºó¼ÕÀÌ¸é ¾îÂ¼ÀÚ´Â °ÍÀÎ°Õ°¡?[ENTER]±× ÅÂ¾çÃÊ(31076)°¡ ¾øÀ¸¸é ÀÌ ÀÌ»ó Á¶»ç°¡ ¾î·Æ´Ü ¸»ÀÏ¼¼.[ENTER]´Ù½Ã ´Ù³à¿Í ÁÖ°Ô³ª.[ENTER]"
locale.main_quest_flame_lv99.say_41 = "ÇÐÀÚ(20380)°¡ ¸»ÇÏ´ø ÅÂ¾çÃÊ(31076)¸¦ ¹ß°ßÇÏ¿´´Ù. ÇÐÀÚ(20380)¿¡°Ô ÀüÇØÁÖÀÚ."
locale.main_quest_flame_lv99.say_42 = "±×·¡. ¹Ù·Î ÀÌ ¾àÃÊ ÀÏ¼¼.[ENTER]ÀÌÁ¦ Á¶»ç¸¦ ¸¶¹«¸® ÇÒ ¼ö ÀÖ°Ô µÇ¾ú±º ±×·¡.[ENTER]Á¶»ç°¡ ¿Ï·áµÇ°Åµç ¾àÈ¯(20377)´Ô¿¡°Ô ÀÏ·¯ µÑÅÍÀÌ´Ï ³ªÁß¿¡ °¡º¸µµ·Ï ÇÏ°Ô³ª.[ENTER]"

locale.main_quest_flame_lv100 = {}
locale.main_quest_flame_lv100.say_1 = "Å¹±âÀÇ Á¤Ã¼"
locale.main_quest_flame_lv100.say_2 = "¾àÈ¯(20377)ÀÌ ´ç½ÅÀ» ±ÞÇÏ°Ô Ã£°í ÀÖ½À´Ï´Ù.[ENTER]¾àÈ¯(20377)¿¡°Ô ÀÚ¼¼ÇÑ ÀÌ¾ß±â¸¦ µé¾îº¸µµ·Ï ÇÏ½Ê½Ã¿À.[ENTER]"
locale.main_quest_flame_lv100.say_3 = "¾î¼­ ¿À°Ô³ª.[ENTER]ÀÚ³×°¡ ÇÐÀÚ(20380)¸¦ µµ¿Í Á¶»çÇØÁØ ´öºÐ¿¡ ¿øÈ°ÇÏ°Ô Á¶»ç°¡ ¸¶¹«¸® µÇ¾ú´Ù³×.[ENTER]ÀÏ´Ü Á¶»çÀÇ °á°ú¸¦ ÀÚ³×¿¡°Ô ¾Ë·Á ÁÖµµ·Ï ÇÏ°Ú³×.[ENTER]"
locale.main_quest_flame_lv100.say_4 = "ÇÐÀÚ(20380)ÀÇ ¸»¿¡ ÀÇÇÏ¸é, ÀÚ³×¿Í Á¶»çÇÑ ±× µ¿±¼ ÀÎ±ÙÀÇ ¸¶¹°Àº º»ÁúÀûÀ¸·Î ´Ù¸¥ ±â¿î¿¡ ÀÇÇÏ¿©[ENTER]º¯ÁúÀÌ µÈ °ÍÀÌ¶ó ÇÏ´õ±¸¸¸.[ENTER]±× ¿µÇâÀÌ Áö¼ÓÀÌ µÇ¸é ¸¶¹°µéÀº Á¡Á¡ °­ÇØÁö°í º¯ÀÌµÇ¸ç, º¸´Ù ³­ÆøÇÑ ¼ºÁúÀ» º¸ÀÌ°Ô µÈ´Ù´Â±º.[ENTER]ÀÏ´Ü Å¹±â°¡ ÆÛÁö´Â °ÍºÎÅÍ ¸·¾Æ¾ß, ÁÖº¯¿¡ ÇÇÇØ°¡ ´ú °¥ °ÍÀ¸·Î º¸ÀÌ´Â±º ±×·¡.[ENTER]"
locale.main_quest_flame_lv100.say_5 = "±×·¸´Ù¸é, Å¹±â°¡ ÆÛÁö´Â °ÍÀ» ¸·±â À§ÇØ¼­´Â ¾î¶»°Ô ÇÏ¿©¾ß ÇÕ´Ï±î?[ENTER]"
locale.main_quest_flame_lv100.say_6 = "±×·¸Áö ¾Ê¾Æµµ, Å¹±âÀÇ ÆÛÁüÀ» ¸·±â À§ÇØ¼­ ¿¬±Ý¼ú»ç(20001)¿Í ÀÇ°ßÀ» ³ª´©¾î º¸¾Ò´Ù³×.[ENTER]¿¬±Ý¼ú»ç(20001)°¡ ±× ¸·À» ¹æµµ¸¦ ¸¶·ÃÁßÀÌ´Ï, ÀÌ ÀÌ»ó ÆÛÁöÁö ¾Êµµ·Ï ¸¶¹°À» Ã³Ä¡ÇØ ÁÖ°Ô³ª.[ENTER]µ¿±¼ ±ÙÃ³ ¸¶¹°À» °¡¸®Áö ¾Ê°í 300¸¶¸®Á¤µµ Ã³Ä¡ÇÏ¸é Á» ³ªÀ» µí ÇÏ³×.[ENTER]"
locale.main_quest_flame_lv100.say_7 = "³×. Áö±Ý Áï½Ã Ãâ¹ß ÇÏ°Ú½À´Ï´Ù.[ENTER]"
locale.main_quest_flame_lv100.say_8 = "°í¸¿³×. ÁÁÀº Àü°ú¸¦ ±â´ëÇÏ°í ÀÖ°Ú³×.[ENTER]"
locale.main_quest_flame_lv100.say_9 = "¾àÈ¯(20377)°ú Á¶»çÇÏ¿´´ø °÷ÀÇ ÁÖº¯ ¸¶¹°À» Ã³Ä¡ÇÏÀÚ."
locale.main_quest_flame_lv100.say_10 = "µµ¿°È­Áö ¸¶¹°À» Ã³Ä¡ÇÏÀÚ!"
locale.main_quest_flame_lv100.say_11 = "¾àÈ¯(20377)°ú Á¶»çÇÏ¿´´ø °÷ÀÇ ÁÖº¯ ¸¶¹°À» Ã³Ä¡ÇÏÀÚ.[ENTER]"
locale.main_quest_flame_lv100.say_12 = "Á¤¸»·Î ÃæºÐÈ÷ Ã³Ä¡¸¦ ÇÏ°í ¿Â °ÍÀÎ°¡?[ENTER]ºÎÇÏµé º¸°í·Î´Â ¾ÆÁ÷ ÃæºÐÄ¡ ¾Ê¾Æ º¸ÀÌ³×¸¸.[ENTER]¾î¼­°¡ ¸ðÁ¶¸® Ã³Ä¡ÇÏ°í ¿ÍÁÖ°Ô³ª.[ENTER]"
locale.main_quest_flame_lv100.say_13 = "ÁÖº¯ ¸¶¹°À» ÃæºÐÈ÷ Ã³Ä¡ÇÏ¿´´Ù.[ENTER]¾àÈ¯(20377)¿¡°Ô º¸°íÇÏµµ·Ï ÇÏÀÚ."
locale.main_quest_flame_lv100.say_14 = "¾Ç·æ±ºµµÀÇÀÇ ¾àÈ¯(20377)À» Ã£¾Æ ¸»À» °Éµµ·Ï ÇÏÀÚ.[ENTER]"
locale.main_quest_flame_lv100.say_15 = "À½¡¦ÀÌÂëÀÌ¸é ÃæºÐÇÏ°Ô ¸¶¹°À» Ã³Ä¡ÇÑ °Í °°±¸¸¸¡¦[ENTER]¿¬±Ý¼ú»ç(20001)¿¡°Ô´Â ³»°¡ ÁÖº¯ ¸¶¹°À» Ã³Ä¡ÇÑ °ÍÀ» ¾Ë¸± ÅÍÀÌ´Ï ½¬°í ÀÖ°Ô³ª.[ENTER]"
locale.main_quest_flame_lv100.say_16 = "Å¹±âÀÇ ÀúÁö1-1"
locale.main_quest_flame_lv100.say_17 = "¿¬±Ý¼ú»ç(20001)°¡ ´ç½ÅÀ» ±ÞÇÏ°Ô Ã£°í ÀÖ½À´Ï´Ù.[ENTER]¿¬±Ý¼ú»ç(20001)¿¡°Ô ÀÚ¼¼ÇÑ ÀÌ¾ß±â¸¦ µé¾îº¸µµ·Ï ÇÏ½Ê½Ã¿À.[ENTER]"
locale.main_quest_flame_lv100.say_18 = "ÀÌ·± Á¦±æ¡¦[ENTER]¾àÈ¯(20377)´Ô²² ±×¸® ½ÅÁßÇÏ°Ô Çàµ¿ÇØ ´Þ¶ó°í ºÎÅ¹À» Çß°Ç¸¸, ÀÏÀÌ Ä¿Áö°í¾ß ¸»¾Ò±º ±×·¡.[ENTER]Å¹±â´Â ¸¶¹°ÀÌ Á×À¸¸é¼­ Æ¯È÷ ´õ ÆÛÀú³ª°¡´Â ¼ºÁúÀÌ ÀÖ´Âµ¥ 300¸¶¸®³ª µÇ´Â ¸¶¹°À»[ENTER]µµ·úÇØ ¹ö·ÈÀ¸´Ï Å«ÀÏÀÌ³×.[ENTER]"
locale.main_quest_flame_lv100.say_19 = "Áö±Ý »óÈ²Àº ¿ÀÈ÷·Á ¾ÇÈ­°¡ µÇ¾î ÀÖ´Â »óÅÂÀÌ³×.[ENTER]°Ô´Ù°¡ ³»°¡ Å¹±â¸¦ ÀúÁöÇÏ·Á°í ¸¸µé¾ú´ø ºñ¾à(31084)ÀÌ ¸ðÀÚ¶ó°Ô µÇ¾î ¹ö·È´Ù³×.[ENTER]ÀÌ ¾àÀ» ¹«±¸¿¡ ¹Ù¸£°í ¸¶¹°À» Ã³Ä¡ÇÏ°Ô µÇ¸é, Å¹±â°¡ ÆÛÁö´Â °ÍÀ» ¸·À» ¼ö ÀÖ´Ù³×.[ENTER]¸ðÀÚ¶ó°Ô µÇ¾î ¹ö·ÈÀ¸´Ï ÀÚ³×°¡ Àç·á¸¦ ´õ Á¶´ÞÇØ ÁÖ¾î¾ß ÇÒ °ÍÀÌ¾ß.[ENTER]"
locale.main_quest_flame_lv100.say_20 = "³×. ¾Ë°Ú½À´Ï´Ù. Àç·á°¡ ¹«¾ùÀÔ´Ï±î?[ENTER]"
locale.main_quest_flame_lv100.say_21 = "ÀÚ³×°¡ Àß ±¸ÇÒ ¼ö ÀÖÀ»·±Áö ÀÇ¹®ÀÌ±¸¸¸¡¦[ENTER]¿øÃ¼ ±¸ÇÏ±â°¡ ½±Áö ¾ÊÀº °ÍµéÀÌ¶ó¼­¡¦[ENTER]ÀÏ´Ü ¾Ë·ÁÁÖµµ·Ï ÇÏÁö!![ENTER]ºñ¾à(31084)À» ¸¸µé±â À§ÇØ¼­´Â ÃÊ¼®(90010)10°³, °õÀÇ ¾µ°³(30010) 50°³, °Å¹ÌÀÇ µ¶ÁÖ¸Ó´Ï(30025)10°³, È°¼®(51001) 200°³°¡ ÇÊ¿äÇÏ´Ù³×.[ENTER]¸ðµÎ ÀÚ³×Á¤µµ µÇ´Â ¹«ÀÎÀÌ¶ó¸é ¾îµð¼­ ±¸ÇÒ ¼ö ÀÖ´ÂÁö´Â ¾ËÅÍÀÌ´Ï ¼³¸íÀº »ý·«ÇÏ°Ú³×.[ENTER]"
locale.main_quest_flame_lv100.say_22 = "½±°Ô ±¸ÇÒ ¼ö ÀÖ´Â Àç·á´Â ¾Æ´Ï±º¿ä. ´Ù³à¿Àµµ·Ï ÇÏ°Ú½À´Ï´Ù.[ENTER]"
locale.main_quest_flame_lv100.say_23 = "¾Ë°Ú³×. ¿ì¸®°¡ ÀÌ·¸°Ô ¸»À» ÇÏ´Â ¿ÍÁß¿¡µµ Å¹±â°¡ ÆÛÀú³ª°¡°í ÀÖÀ¸´Ï ¼­µÑ·¯ ÁÖ°Ô³ª.[ENTER]"
locale.main_quest_flame_lv100.say_24 = "¿¬±Ý¼ú»ç(20001)¸¦ µµ¿Í ºñ¾à(31084)À» ¿Ï¼ºÇÏµµ·Ï ÇÏÀÚ."
locale.main_quest_flame_lv100.say_25 = "³²Àº Àç·á"
locale.main_quest_flame_lv100.say_26 = "ºñ¾à(31084)À» ¸¸µé Á¦·á¸¦ ±¸ÇÏÀÚ."
locale.main_quest_flame_lv100.say_27 = "¿¬±Ý¼ú»ç(20001)°¡ ÀÏ·¯ÁØ Á¦·á¸¦ ±¸ÇÏµµ·Ï ÇÏÀÚ.[ENTER]"
locale.main_quest_flame_lv100.say_28 = "¿À~¸ðÀ¸±â ½±Áö ¾ÊÀº Àç·á¿´À» ÅÍÀÎµ¥.[ENTER]¿ëÄÉµµ ±¸ÇØ ¿Ô±º ±×·¡.[ENTER]ºñ¾à(31084)À» ¸¸µé°í ºÎ¸¦ ÅÍÀÌ´Ï °¡º¸°Ô³ª.[ENTER]"
locale.main_quest_flame_lv100.say_29 = "ÀÌºÁ. ³»°¡ ¼ýÀÚµµ ÇØ¾Æ¸®Áö ¸øÇÏ´Â Àå´ÔÀ¸·Î º¸ÀÌ´Â °Õ°¡?[ENTER]¾î¼­ ¸ðµç Á¦·á¸¦ È®º¸ÇØ ÁÖ°Ô³ª.[ENTER]Áö±Ý ÀÌ ½Ã°£¿¡µµ Å¹±â´Â Ã¢±ÈÇÏ°í ÀÖ´Ù³×.[ENTER]"
locale.main_quest_flame_lv100.say_30 = "ºñ¾à(31084)À» ¸¸µé Àç·á¸¦ ¸ðµÎ È®º¸ÇÏ¿´´Ù. ¿¬±Ý¼ú»ç(20001)¿¡°Ô ÀüÇØÁÖµµ·Ï ÇÏÀÚ."
locale.main_quest_flame_lv100.say_31 = "¾Ç·æ±ºµµÀÇÀÇ ¿¬±Ý¼ú»ç(20001)¸¦ Ã£¾Æ ¸»À» °Éµµ·Ï ÇÏÀÚ.[ENTER]"
locale.main_quest_flame_lv100.say_32 = "Å¹±âÀÇ ÀúÁö1-2"
locale.main_quest_flame_lv100.say_33 = "ÀÌ·±ÀÌ·±¡¦[ENTER]ÀÌÀü¿¡ ¾àÀ» ¸¸µé ´ç½Ã¿¡ ´ëÀåÀåÀÌ(20016)¿¡°Ô ÅøÅø °Å·È´õ´Ï, ÃÊ¼®(90010)À» °¡·ç·Î ¸¸µé¾î ÁÖÁö ¾Ê´Â ±º±×·¡¡¦[ENTER]ÃÊ¼®(90010)À» °¡·ç·Î ¸¸µé¾î ´Ù¸¥ Àç·á¿Í ÇÔ²² Á¦Á¶ÇÏ¿© ¾àÀ» ¿Ï¼ºÇÏ´Âµ¥ ¸»ÀÌ¾ß¡¦[ENTER]ÀÚÁ¸½É»ó ³»°¡ °¡±ä ±×·¸°í, ÀÚ³×°¡ ÀÌ°É µé°í°¡¼­ ÃÊ¼®(90010)À» °¡·ç·Î ¸¸µé¾î¼­ °¡Á®¿Í ÁÖ°Ú³ª?[ENTER]"
locale.main_quest_flame_lv100.say_34 = "¾î¶»°Ô ÇÏ¼Ì±â¿¡¡¦[ENTER]ÀÏ´Ü ¾Ë°Ú½À´Ï´Ù. ÃÊ¼®(90010)°ú ±× ¹Ù±¸´Ï¸¦ ÁÖ½ÃÁö¿ä.[ENTER]"
locale.main_quest_flame_lv100.say_35 = "°í¸¿³×. ±â´Ù¸®°í ÀÖ°Ú³×.[ENTER]"
locale.main_quest_flame_lv100.say_36 = "´ëÀåÀåÀÌ(20016)¿¡°Ô ´Ù³à¿ÀÀÚ."
locale.main_quest_flame_lv100.say_37 = "´ëÀåÀåÀÌ(20016)¿¡°Ô ÃÊ¼®(90010)À» °¡·ç·Î ¸¸µé¾î ¿ÀÀÚ.[ENTER]"
locale.main_quest_flame_lv100.say_38 = "ÃÊ¼®(90010)°¡·ç: 1°³[ENTER]"
locale.main_quest_flame_lv100.say_39 = "¾îÀÌ±¸ ´ëÇù´Ï ¾îÀÎ ÀÏÀÌ½Ê´Ï±î?[ENTER]Áú ÁÁÀº ¹«±¸¶óµµ »ç·¯ ¿À½Å °Ø´Ï±î?[ENTER]"
locale.main_quest_flame_lv100.say_40 = "¾Æ~´Ù¸§ÀÌ ¾Æ´Ï¶ó ¿¬±Ý¼ú»ç(20001)´Ô²² ÀÌ¾ß±â´Â µé¾ú½À´Ï´Ù.[ENTER]½Ã±¹ÀÌ ½Ã±¹ÀÎ ¸¸Å­ µµ¿òÀ» Ã»ÇÏ·¯ ¿Ô½À´Ï´Ù.[ENTER]¿¬±Ý¼ú»ç(20001)´Ô²²¼­ Á÷Á¢ Ã£¾Æ°¡ »ç°úÇÏÁö ¸øÇÔÀ» ¹Ì¾ÈÇÏ°Ô »ý°¢ÇÏ¸ç, ÀÌ À½½Ä ¹Ù±¸´Ï¸¦ º¸³»¼Ì½À´Ï´Ù.[ENTER]"
locale.main_quest_flame_lv100.say_41 = "Èì¡¦¸¶À½ °°¾Æ¼± ÇØÁÖ°í ½ÍÁö ¾ÊÁö¸¸¡¦[ENTER]´ëÇù´Ô²²¼­ Á÷Á¢ ÀÌ·¸°Ô Ã£¾ÆÁÖ½Ã°í, »ç°úÀÇ Ç¥Çöµµ ÇÏ¿´À¸´Ï ÃÊ¼®(90010)À» °¥¾Æµå¸®¸®´Ù.[ENTER]Àá½Ã¸¸ ±â´Ù¸®½Ê½Ã¿À.[ENTER]"
locale.main_quest_flame_lv100.say_42 = "³×. °¨»çÇÕ´Ï´Ù.[ENTER]"
locale.main_quest_flame_lv100.say_43 = "ÀÚ³×. ¾ç¼Õ¿¡ ÃÊ¼®(90010)°ú ¹Ù±¸´Ï°¡ ±×´ë·ÎÀÌÁö ¾ÊÀº°¡¡¦[ENTER]¾î¼­ ´Ù³à¿Í ÁÖ°Ô³ª.[ENTER]"
locale.main_quest_flame_lv100.say_44 = "ÃÊ¼®(90010)À» ¸ðµÎ °¥¾Ò´Ù. ¿¬±Ý¼ú»ç(20001)¿¡°Ô ÀüÇØÁÖÀÚ.[ENTER]"
locale.main_quest_flame_lv100.say_45 = "¿À~´ëÀåÀåÀÌ(20016)°¡ »ç°ú¸¦ ¹Þ¾ÆÁØ ¸ð¾çÀÌ±º ±×·¡.[ENTER]³ªµµ ÀÌÁ¦ ¼øÇÏ°Ô »ì¾Æ¾ßÁö¿ø¡¦[ENTER]°¡·ç·Î ¸¸µç ÃÊ¼®(90010)À» ³ª¿¡°Ô ÁÖ°í ½¬°í ÀÖ°Ô³ª.[ENTER]¾àÀÌ ¿Ï¼ºÀÌ µÇ¸é ºÎ¸£µµ·Ï ÇÏ°Ú³×.[ENTER]"

locale.main_quest_flame_lv101 = {}
locale.main_quest_flame_lv101.say_1 = "µ¿±¼ÀÇ Á¤Ã¼"
locale.main_quest_flame_lv101.say_2 = "¾àÈ¯(20377)ÀÌ ´ç½ÅÀ» ±ÞÇÏ°Ô Ã£°í ÀÖ½À´Ï´Ù.[ENTER]¾àÈ¯(20377)¿¡°Ô ÀÚ¼¼ÇÑ ÀÌ¾ß±â¸¦ µé¾îº¸µµ·Ï ÇÏ½Ê½Ã¿À.[ENTER]"
locale.main_quest_flame_lv101.say_3 = "¾î¼­ ¿À°Ô³ª.[ENTER]¿¬±Ý¼ú»ç(20001)¿¡°Ô´Â ÀÚ³×ÀÇ ³ë°í¿¡ ´ëÇØ¼­ ÀüÇØ µé¾ú´Ù³×.[ENTER]³»°¡ ±¦ÇÑ ÀÏÀ» ¹ú¿©¼­ ÀÚ³×°¡ °í»ýÀ» ÇÑ °Í °°´õ±º ±×·¡.[ENTER]¹Ì¾ÈÇÏ°Ô »ý°¢ÇÑ´Ù³×.[ENTER]"
locale.main_quest_flame_lv101.say_4 = "¹Ì¾ÈÇÑ °ÍÀº ¹Ì¾ÈÇÑ °ÍÀÌ°í, ½Ã±¹ÀÌ ´õ ±Þ¹ÚÇÏ°Ô µÇ¾úÀ¸´Ï ¿ë°Ç¸¸ °£´ÜÈ÷ ÇÏµµ·Ï ÇÏ°Ú³×.[ENTER]¿¬±Ý¼ú»ç(20001)¿¡°Ô ºñ¾à(31084)Àº ³»°¡ °Ç³»¾î ¹Þ¾Ò´Ù³×.[ENTER]±× ¾àÀ» ¹«±¸¿¡ ¹Ù¸£¸é Ã³Ä¡ÇÑ ¸¶¹°ÀÇ Å¹±â°¡ ÆÛÁö´Â °ÍÀ» ÀúÁöÇÏ¿© ÁØ´Ù³×.[ENTER]"
locale.main_quest_flame_lv101.say_5 = "¾à¿¡ ´ëÇÑ ¼³¸íÀº ÀÌ Á¤µµ·Î ÇÏ°í, ÀÚ³×°¡ ÇØÁÖ¾î¾ß ÇÒ ÀÏÀ» ¾Ë·Á ÁÖ°Ú³×.[ENTER]ÀÌÁ¦ ¹«±¸µµ ÁØºñ°¡ µÇ¾ú°í, ¿ì¸®°¡ ¹ß°ßÇÑ ±× µ¿±¼À» º¸´Ù ÀÚ¼¼È÷ ¾Ë¾Æ º¼ ÇÊ¿ä°¡ ÀÖ´Ù³×.[ENTER]Å¹±â°¡ ÆÛÁö´Â °Íµµ ±×·¸°í, ºÐ¸í µ¹ÀÔÇÏ¿© ¸¶¹°µéÀ» Ã³Ä¡ÇÏ´Ùº¸¸é, ¹«¾ð°¡ ´Ü¼­°¡ ³ª¿Ã µí ÇÏ³×.[ENTER]ÀÚ³×°¡ Á÷Á¢ µ¹ÀÔÀ» °¨ÇàÇÏ¿©, È®ÀÎÇØ ÁÖ°Ô³ª.[ENTER]"
locale.main_quest_flame_lv101.say_6 = "¾Æ¡¦Çà¿© µ¿±¼¿¡¼­ ºÎÇÏ°¡ ¹ß°ßÀÌ µÇ°Åµç ²À »ì¾Æ¼­ ±ÍÈ¯ÇÏ¶ó°í ÀüÇØ ÁÖ°Ô³ª.[ENTER]¶°µ¹ÀÌ »óÀÎ¿¡ ÀÇÇÏ¸é, ³» ºÎÇÏ°¡ µ¹ÀÔÀ» °¨Çà ÇÑ °Í °°¾Æ¼­ ¸»ÀÌ¾ß.[ENTER]"
locale.main_quest_flame_lv101.say_7 = "³×. Áö±Ý Áï½Ã Ãâ¹ß ÇÏ°Ú½À´Ï´Ù.[ENTER]"
locale.main_quest_flame_lv101.say_8 = "°í¸¿³×. ÁÁÀº Àü°ú¸¦ ±â´ëÇÏ°í ÀÖ°Ú³×.[ENTER]"
locale.main_quest_flame_lv101.say_9 = "µ¿±¼¿¡¼­ ¸¶¹°À» Ã³Ä¡ÇÏ¿© ´Ü¼­¿Í ¾àÈ¯ÀÇ ºÎÇÏ(20393) »ý»ç¸¦ È®ÀÎÇÏÀÚ."
locale.main_quest_flame_lv101.say_10 = "µµ¿°È­Áö ¸¶¹°À» Ã³Ä¡ÇÏÀÚ!"
locale.main_quest_flame_lv101.say_11 = "¾àÈ¯(20377)°ú Á¶»çÇÏ¿´´ø °÷ÀÇ ÁÖº¯ ¸¶¹°À» Ã³Ä¡ÇÏÀÚ.[ENTER]"
locale.main_quest_flame_lv101.say_12 = "¡ØÇØ´ç ´øÀüÀº °³ÀÎÀÔÀåÀÌ ºÒ°¡ÇÕ´Ï´Ù.[ENTER]   ÆÄÆ¼¸¦ ¸Î¾î ÀÔÀåÇÏ½Ã±â ¹Ù¶ø´Ï´Ù.[ENTER]¡ØÁö±ÞµÈ ÅëÇàÁõÀº Àç¹ß±Þ µÇÁö ¾Ê½À´Ï´Ù.[ENTER]"
locale.main_quest_flame_lv101.say_13 = "ÀÌºÁ. ³»°¡ ÇÑ°¡ÇØ¼­ ÀÚ³×¿¡°Ô ºÎÅ¹À» Çß°Ú³ª?[ENTER]ºÐ¸í ³»ºÎÇÏÀÇ Çà¹æ°ú ´Ü¼­¸¦ Ã£À» ¼ö ÀÖÀ» °ÍÀÌ¾ß.[ENTER]¾î¼­ ´Ù³à¿Í ÁÖ°Ô³ª.[ENTER]"
locale.main_quest_flame_lv101.say_14 = "ºÎÇÏ´Â Á×¾îÀÖ´Ù. Çã¸®Ãã¿¡¼­ ³²°ÜÁø ÆíÁö¸¦ ¾àÈ¯(20377)¿¡°Ô ÀüÇØÁÖÀÚ.[ENTER]"
locale.main_quest_flame_lv101.say_15 = "¾àÈ¯(20377)ÀÌ ¸»ÇÑ ºÎÇÏ(20393)ÀÇ Çà¹æÀ» È®ÀÎ ÇÏ¿´´Ù."
locale.main_quest_flame_lv101.say_16 = "ºÎÇÏ´Â Çà¹æÀº ¾î¶°ÇÑ°¡?[ENTER]"
locale.main_quest_flame_lv101.say_17 = "¡¦¾Æ½±°Ôµµ ºÎÇÏºÐÀÇ ¼ûÀ» °ÅµÐ µÚ¿´½À´Ï´Ù.[ENTER]Çã¸®Ãã¿¡¼­ ÆíÁö¸¦ ¹ß°ßÇÏ¿´À¸´Ï º¸½ÃÁö¿ä.[ENTER]"
locale.main_quest_flame_lv101.say_18 = "ÆíÁö´Â ³ªÁß¿¡ º¸µµ·Ï ÇÏ°Ú³×.[ENTER]´Ü¼­´Â ¸ø±¸ÇÑ °Í °°À¸´Ï ¾î¼­°¡ ´Ü¼­±îÁö È®º¸ÇÏ¿© µ¹¾Æ¿Í ÁÖ°Ô³ª.[ENTER]"
locale.main_quest_flame_lv101.say_19 = "¾àÈ¯(20377)ÀÌ ¸»ÇÑ ´Ü¼­¸¦ È®ÀÎ ÇÏ¿´´Ù."
locale.main_quest_flame_lv101.say_20 = "À½¡¦¿ª½Ã ´Ü¼­°¡ ³ª¿À´Â ±º ±×·¡.[ENTER]ºÎÇÏÀÇ Çà¹æÀº ¾ÆÁ÷ÀÎ°¡ º¸±¸¸¸.[ENTER]³» ºÎÇÏ´Â ºÐ¸í ±× µ¿±¼¿¡ ÀÖÀ» °ÍÀÌ¾ß. ¾î¼­°¡ È®ÀÎÀ» ´Ù½Ã ÇØ ÁÖ°Ô³ª.[ENTER]"
locale.main_quest_flame_lv101.say_21 = "¾àÈ¯(20377)ÀÌ ¸»ÇÑ ´Ü¼­¿Í ºÎÇÏ(20393)ÀÇ Çà¹æÀ» ¸ðµÎ È®ÀÎ ÇÏ¿´´Ù.[ENTER]¾àÈ¯(20377)¿¡°Ô º¸°íÇÏµµ·Ï ÇÏÀÚ."
locale.main_quest_flame_lv101.say_22 = "¾Ç·æ±ºµµÀÇÀÇ ¾àÈ¯(20377)À» Ã£¾Æ ¸»À» °Éµµ·Ï ÇÏÀÚ.[ENTER]"
locale.main_quest_flame_lv101.say_23 = "¿À~´Ù³à¿Ô±º ±×·¡.[ENTER]´Ü¼­´Â °¡Á®¿Â µíÇÏ°í ¹Ý´ëÆí ¼Õ¿¡ µé·Á ÀÖ´Â °ÍÀº ¹«¾ùÀÎ°¡?[ENTER]"
locale.main_quest_flame_lv101.say_24 = "¾Æ¡¦ÀÌ°ÍÀº ºÎÇÏºÐÀÌ ³²±â½Å À¯Ç°À¸·Î º¸ÀÔ´Ï´Ù.[ENTER]¹ß°ßÇÏ¿´À» ¶§¿¡´Â ÀÌ¹Ì ¸íÀ» ´Þ¸®ÇÏ¼Ì°í, Ç°¿¡¼­ ÀÌ°ÍÀ» ¹ß°ß ÇÏ¿´½À´Ï´Ù.[ENTER]"
locale.main_quest_flame_lv101.say_25 = "±×·¸±º¡¦ÂüÀ¸·Î ¾Æ³¢´ø ºÎÇÏ¿´´Âµ¥ ¸»ÀÏ¼¼ ³»¿ëÀ» È®ÀÎÇÏ°í, ÇâÀÌ³ª ¿Ã¸®·¯ °¡ÁÖ¾î¾ß °Ú³×¡¦[ENTER]ÀÏ´Ü ¼­½ÅÀ» °°ÀÌ ÇÑ¹ø º¸µµ·Ï ÇÏ¼¼³ª.[ENTER]"
locale.main_quest_flame_lv101.say_26 = "¾àÈ¯ ºÎÇÏ(20393)"
locale.main_quest_flame_lv101.say_27 = "ÀÌ ¼­½ÅÀ» ½ÀµæÇÑ ÀÚ´Â ¾Ç·æ±ºµµ ¸í½ÃÁø¿¡ ÀÖ´Â ¾àÈ¯(20377)´Ô²² ºÎµð ÀüÇØÁÖ±æ ¹Ù¶ó³×¡¦(Áß·«)[ENTER]¾àÈ¯(20377)´Ô µµ¿°È­Áö¿¡¼­ ¸¶¹°À» Á¶»çÇÏ´ø Áß, ¼ö»óÇÑ µ¿±¼À» ¹ß°ßÇÏ¿© µ¹ÀÔÇÏ¿´À¸³ª.[ENTER]ÀÌ·¸°Ô ±ÍÈ¯ÇÏÁö ¸øÇÏ°í, ÆíÁö¸¦ ³²±é´Ï´Ù.(Áß·«)[ENTER]ÀÌ µ¿±¼Àº µ¿±¼ ¹ÛÀÇ ¸¶¹°º¸´Ù ±â¿îÀÌ °­ÇÏ°í, È­±ÞÇÏ¸ç ¹«¾ð°¡ ÁöÅ°´Â µí º¸¿´½À´Ï´Ù.[ENTER]µ¿±¼ ¾ÈÀ¸·Î °¡¸é °¥ ¼ö·Ï ¿ïºÎÂ¢´Â ¼Ò¸®°¡ °­ÇÏ¿´½À´Ï´Ù.[ENTER]ºÐ¸í ¹«¾ð°¡ ÀÖÀ» °ÍÀÌ´Ï, ÀÌ ¼­½ÅÀ» º¸½Ã°Åµç Àû´çÇÑ ÀÚ¸¦ ÅëÇÏ¿© Á¶»çÇÏ½Ã±æ º÷´Ï´Ù.[ENTER]¸íÀ» ¿Ï¼öÇÏÁö ¸øÇÔÀ» »çÁË µå¸³´Ï´Ù.[ENTER]"
locale.main_quest_flame_lv101.say_28 = "ÃæÁ÷ÇÑ ºÎÇÏ¿´´Âµ¥, ´Ù½Ã ¶Ç ´«¹°ÀÌ ³ª´Â ±º ±×·¡.[ENTER]ÀÌ µ¿±¼ÀÌ ºÐ¸í À§ÇèÇÑ °ÍÀº ÀÚ¸íÇÑ °ÍÀÌ´Ï, ¾ÕÀ¸·Î ´õ ¸é¹ÐÇÏ°Ô Á¶»ç¸¦ ÇØ º¸¾Æ¾ß °Ú±º ±×·¡.[ENTER]ÀÌ ¸íÆÐ´Â ÀÚ³×µµ ÀÏÀü¿¡ º¸¾Ò´Ù ½ÃÇÇ ÃÊ¸¶´ÜÀÇ ¸íÆÐÀÏ¼¼.[ENTER]ÇÐÀÚ(20380)¿¡°Ô °Ç³»ÁÙ ÅÍÀÌ´Ï ÇÐÀÚ(20380)°¡ Ã£°Åµç °¡º¸µµ·Ï ÇÏ°Ô³ª.[ENTER]"
locale.main_quest_flame_lv101.say_29 = "ÃÊ¸¶´ÜÀÇ ¸íÆÐ ÇØµ¶"
locale.main_quest_flame_lv101.say_30 = "ÇÐÀÚ(20380)°¡ ´ç½ÅÀ» ±ÞÇÏ°Ô Ã£°í ÀÖ½À´Ï´Ù.[ENTER]ÇÐÀÚ(20380)¿¡°Ô ÀÚ¼¼ÇÑ ÀÌ¾ß±â¸¦ µé¾îº¸µµ·Ï ÇÏ½Ê½Ã¿À.[ENTER]"
locale.main_quest_flame_lv101.say_31 = "¾î¼­¿À°Ô³ª.[ENTER]±â´Ù¸®°í ÀÖ¾ú´Ù³×.[ENTER]¾àÈ¯(20377)´ÔÀÌ º¸³»ÁÖ½Å ¸íÆÐ¸¦ º¸°í ´Ù½Ã±Ý ³î¶óÁö ¾ÊÀ» ¼ö°¡ ¾ø¾ú´Ù³×.[ENTER]¾àÈ¯(20377)´Ô²²¼­ ÀÌ¸£±â¸¦ ÀÌ ¸íÆÐ¸¦ ÇØµ¶ÇÏ¸é µ¿±¼¿¡¼­ ¹ú¾îÁö´Â ÀÏÀ» ¾Ë ¼ö ÀÖÀ» °Í °°´Ù ÇÏ¼Ì´Ù³×.[ENTER]±×·¡¼­ ¸»ÀÌ´Ï ÀÚ³×°¡ ³ª¸¦ µµ¿Í ÀÌ ¸íÆÐ¸¦ ÇØµ¶ÇÏ´Â °ÍÀ» µµ¿ÍÁÖ°Ô³ª.[ENTER]"
locale.main_quest_flame_lv101.say_32 = "³×. ¿©ºÎ°¡ ÀÖ°Ú½À´Ï±î![ENTER]"
locale.main_quest_flame_lv101.say_33 = "ÁÁÀº ÀÚ¼¼·Î±º ±×·¡.[ENTER]°Ç³» ¹ÞÀº ÀÌÈÄ·Î ¸íÆÐ¸¦ ¸é¹ÐÇÏ°Ô »ìÆìº¸°í Á¶»ç¸¦ ÇØº» °á°ú ÀÌ ¸íÆÐ¿¡´Â °í´ë ¾ð¾î·Î ¾²¿© ÀÖ´Â °ÍÀ» È®ÀÎ ÇÏ¿´´Ù³×.[ENTER]ÀÌ ¾ð¾î¸¦ Áï½Ã ÇØµ¶ÇÏ¿© ¾Ë·ÁÁÖ°í ½ÍÁö¸¸, ÀüÅõ Áß¿¡ ÈÑ¼ÕÀÌ µÇ¼­ÀÎÁö ¾Ë¾Æ º¼ ¼ö°¡ ¾ø±¸¸¸ ±×·¡.[ENTER]ÀÌ ¸íÆÐ¸¦ º¹¿øÇÏ±â À§ÇØ¼­´Â ºÒ²Éº¸´Ù ¶ß°Ì°Ô Å¸¿À¸£´Â ÇÇ°¡ ÇÊ¿äÇÏ´Ù³×.[ENTER]½±°Ô ¸»ÇÏ¸é È­¿°¿ÕÀÇ ÇÇ(31080)°¡ ÇÊ¿äÇÑ °ÍÀÎµ¥.[ENTER]³»°¡ ÀÌ ÇÔÀ» ÁÙÅÍÀÌ´Ï È­¿°¿Õ(2206)À» Ã³Ä¡ÇÏ°í ¿©±â¿¡ È­¿°¿ÕÀÇ ÇÇ(31080)¸¦ ¹Þ¾Æ¿Í ÁÖ°Ô³ª.[ENTER]"
locale.main_quest_flame_lv101.say_34 = "³×. ¾Ë°Ú½À´Ï´Ù.[ENTER]"
locale.main_quest_flame_lv101.say_35 = "±¸ÇÏ°Åµç Áï½Ã µ¹¾Æ¿À°Ô³ª. ±× ÇÔµµ Àå½Ã°£ È­¿°¿ÕÀÇ ÇÇ(31080)¸¦ °ßµðÁø ¸øÇÒ °ÍÀÌ¾ß.[ENTER]"
locale.main_quest_flame_lv101.say_36 = "µµ¿°È­Áö¿¡ ÀÖ´Â È­¿°¿Õ(2206)À» Ã³Ä¡ÇÏ°í ÇÇ¸¦ ÇÔ¿¡ ¹Þ¾Æ¿ÀÀÚ."
locale.main_quest_flame_lv101.say_37 = "¸íÆÐ¸¦ ÇØµ¶ÇÏ°í ½ÍÁö ¾ÊÀº °Õ°¡?[ENTER]¾î¼­°¡¼­ È­¿°¿ÕÀÇ ÇÇ(31080)¸¦ °¡Á®¿À¶õ ¸»ÀÏ¼¼.[ENTER]"
locale.main_quest_flame_lv101.say_38 = "È­¿°¿Õ(2206)¿¡°Ô¼­ ÇÇ¸¦ È®º¸ÇÏ¿´´Ù. ÇÐÀÚ(20380)¿¡°Ô µ¹¾Æ°¡ÀÚ."
locale.main_quest_flame_lv101.say_39 = "¾Ç·æ±ºµµÀÇÀÇ ÇÐÀÚ(20380)¸¦ Ã£¾Æ ¸»À» °Éµµ·Ï ÇÏÀÚ.[ENTER]"
locale.main_quest_flame_lv101.say_40 = "À½¡¦È­¿°¿ÕÀÇ ÇÇ(31080)°¡ ¸Â±º ±×·¡.[ENTER]º¹¿øÇÏ´Âµ¥ ½Ã°£ÀÌ ´Ù¼Ò °É¸®´Ï ³»ÀÏ ´Ù½Ã ¿À°Ô³ª.[ENTER]³ªµµ »¡¸® ÇØÁÖ°í ½ÍÁö¸¸ ¾îÂ¿ ¼ö ¾ø´Ù³×.[ENTER]"
locale.main_quest_flame_lv101.say_41 = "ÀÜ¿©½Ã°£ : %d½Ã°£ %dºÐ"
locale.main_quest_flame_lv101.say_42 = "¾ÆÁ÷ ½Ã°£ÀÌ µÇÁö ¾Ê¾ÒÁö ¾Ê´Â°¡?[ENTER]³ªÁß¿¡ ´Ù½Ã ¿À°Ô³ª.[ENTER]"
locale.main_quest_flame_lv101.say_43 = "¸íÆÐÀÇ Áø½Ç"
locale.main_quest_flame_lv101.say_44 = "¿Ô±º ±×·¡.[ENTER]¸íÆÐ°¡ ÇØµ¶ÀÌ µÇ¾ú³×.[ENTER]ÇØµ¶À» ÇÏ¸é¼­ ³»°¡ ¸ÕÀú ÀÐ¾î º¸¾Ò´Âµ¥, ÀÌ°Å ¿ø ¹«Áö¸·ÁöÇÑ ³»¿ëÀÌ µé¾î ÀÖ´õ±º ±×·¡.[ENTER]³»°¡ ³»¿ëÀ» ¾Ë·Á ÁÖµµ·Ï ÇÏÁö.[ENTER]"
locale.main_quest_flame_lv101.say_45 = "¸íÆÐ´Â ÃÊ¸¶´ÜÀÇ °ÍÀÌ ºÐ¸íÇÏ³×.[ENTER]ÀÚ³×°¡ Ã³Ä¡ Áß¿¡ ¸íÆÐ¸¦ ±¸ÇÏ°Ô µÈ ¸¶¹°ÀÌ ¾î¶² ¸¶¹°ÀÎÁö´Â ¸ð¸£°ÚÁö¸¸,[ENTER]ÃÊ¸¶´ÜÀÌ 6·æÀÌ ºÀÀÎÀÌ µÈ °÷¿¡ °­·ÂÇÑ ¸¶¹°À» º¸³»¾î, ºÀÀÎÀ» ÇØÁ¦ ÇÏ·Á ÇÑ´Ù´Â °ÍÀÌ³×.[ENTER]±× »Ó¸¸ ¾Æ´Ï¶ó, ¿ë·Ã¿¡ ´ëÇÏ¿©µµ ¾ð±ÞÀÌ µÇ¾î ÀÖ´Ù³×.[ENTER]ÀÚ¼¼ÇÑ ³»¿ëÀº ÀÌ ¼­½Å¿¡ Àû¾îµÎ¾úÀ¸´Ï ¾àÈ¯(20377)´Ô²² ÀüÇØ ÁÖ°Ô³ª.[ENTER]"
locale.main_quest_flame_lv101.say_46 = "°í¸¿³×. ÀÚ¼¼ÇÑ °ÍÀº ¾àÈ¯(20377)´ÔÀÌ ¾Ë·ÁÁÖ½Ç °ÍÀÌ¾ß.[ENTER]"
locale.main_quest_flame_lv101.say_47 = "ÇÐÀÚ(20380)¿¡°Ô ¹ÞÀº ¼­½ÅÀ» ¾àÈ¯(20377)¿¡°Ô ÀüÇØÁÖÀÚ."
locale.main_quest_flame_lv101.say_48 = "¾àÈ¯(20377)¿¡°Ô ¼­½ÅÀ» ÀüÇÏÀÚ!"
locale.main_quest_flame_lv101.say_49 = "¾àÈ¯(20377)¿¡°Ô ÇÐÀÚ(20380)°¡ ÁØ ¼­½ÅÀ» ÀüÇÏÀÚ.[ENTER]"
locale.main_quest_flame_lv101.say_50 = "¾î¼­¿À°Ô. ÇÐÀÚ(20380)¿¡°Ô´Â ÀüÇØ µé¾ú´Ù³×.[ENTER]¼­½ÅÀ» ÁÖ°Ô³ª.[ENTER]"
locale.main_quest_flame_lv101.say_51 =  "À½¡¦ÀÌ°Å »ý°¢º¸´Ù ½É°¢ÇÏ±º ±×·¡.[ENTER]6·æÀÌ ºÀÀÎµÈ °÷¿¡ ÃÊ¸¶´ÜÀÌ ¸¶¹°À» º¸³»¾î ºÀÀÎÀ» ÇØÁ¦ÇÏ·Á ÇÑ´Ù´Â °ÍÀº µé¾úÀ» °ÍÀÌ°í,[ENTER]¿ë·Ã¿¡ ´ëÇØ¼­ ¾Ë·ÁÁÖ°Ú³×.[ENTER]¿ë·ÃÀº ÇÐÀÚ(20380)ÀÇ ¸»À» µû¸£¸é, 6·æÀ» °¨½ÃÇÏ°í ÀÌ¿ëÇÏ´Â ÀÌÇØ°ü°è°¡ ÀÖ´Â ¼¼·ÂÀ» ¸»ÇÑ´Ù³×.[ENTER]ÃÊ¸¶´Üµµ ÃÊ¸¶´ÜÀÌÁö¸¸ ¶§¿¡ µû¶ó¼­´Â ¸øÁö ¾Ê°Ô À§Çè ÇÒ ¼ö ÀÖ´Â ¼¼·ÂÀÌÁö.[ENTER]"
locale.main_quest_flame_lv101.say_52 = "µµ¿°È­ÁöÀÇ È­¿°¿Õ(2206)À» Ã³Ä¡ÇÏ°í ÇÇ¸¦ ¹Þ¾Æ¿ÀÀÚ.[ENTER]"
locale.main_quest_flame_lv101.say_53 = "¿ë·ÃÀº À§ÇØ°¡ °¡Áö ¾Ê´Â °æ¿ì¶ó¸é º° ¹®Á¦°¡ µÇÁö ¾ÊÀ» ¼öµµ ÀÖÁö¸¸, °¡Àå ¿ì¸®°¡ ÃÊÁ¡À» µÎ¾î¾ß ÇÒ °ÍÀº[ENTER]ÃÊ¸¶´ÜÀÌ 6·æ¿¡°Ô ¸¶¹°À» º¸³Â´Ù´Â °ÍÀÌ³×.[ENTER]°Ô´Ù°¡ µµ¿°È­ÁöÀÎ °Í°ú 6·æÀÇ ºÀÀÎ µîÀ» ¹Ì·ç¾î º¼ ½Ã¿¡ ±× µ¿±¼Àº Àû·æ¼º(zone1)ÀÏ °ÍÀ¸·Î º¸ÀÌ³×.[ENTER]¾Æ¹«·¡µµ Àû·æ¼º(zone1) ¾ÈÂÊ¿¡ µ¹ÀÔÇÏ¿© °ú°¨ÇÏ°Ô ¾Ë¾Æº¼ ÇÊ¿ä°¡ ÀÖÀ» °Í °°³×.[ENTER]¹æµµ¸¦ ¸¶·ÃÇÏ°í ´Ù½Ã ±âº°À» ³ÖÀ» ÅÍÀÌ´Ï °¡¼­ ½¬°í ÀÖ°Ô³ª.[ENTER]"

locale.main_quest_flame_lv102 = {}
locale.main_quest_flame_lv102.say_1 = "µ¹ÀÔ"
locale.main_quest_flame_lv102.say_2 = "¾àÈ¯(20377)ÀÌ ´ç½ÅÀ» ±ÞÇÏ°Ô Ã£°í ÀÖ½À´Ï´Ù.[ENTER]¾àÈ¯(20377)¿¡°Ô ÀÚ¼¼ÇÑ ÀÌ¾ß±â¸¦ µé¾îº¸µµ·Ï ÇÏ½Ê½Ã¿À.[ENTER]"
locale.main_quest_flame_lv102.say_3 = "ÀÏÀü¿¡ ÀÌ¾ß±âÇØ ÁØ Àû·æ¼º(zone1)ÀÇ µ¹ÀÔ ¶§¹®¿¡ ÀÌ·¸°Ô ºÎ¸£°Ô µÇ¾ú´Ù³×.[ENTER]¹«°øÀÌ °í°­ÇÑ ³ªÀÇ ºÎÇÏ°¡ ¹«ÂüÈ÷ Á×¾ú´Ù´Â Á¡, ±×°÷ÀÌ 6·æÁß ÇÏ³ªÀÎ Àû·æÀÌ ºÀÀÎ µÈ °ÍÀ¸·Î ÃßÃøµÇ´Â Á¡ µî[ENTER]µ¹ÀÔ¿¡´Â ½Å°æ½á¾ß ÇÒ °ÍÀÌ ÇÑ µÎ°¡Áö°¡ ¾Æ´Ï³×.[ENTER]"
locale.main_quest_flame_lv102.say_4 = "ÀÚ³×°¡ ³ª¸¦ µµ¿Í Àû·æ¼º(zone1) ÀÎ±Ù ¸¶¹°À» Ã³Ä¡ÇÏ¿© Å¹±â°¡ ÆÛÁüÀ» ¸·¾ÆÁØ ´öºÐ¿¡ ³» ºÎÇÏµéÀ» ½ÃÄÑ ÁÖº¯À» ºÀ¼âÇÏ¿´´Ù³×.[ENTER]Àû¾îµµ ¿ÜºÎ·Î ÇÇÇØ°¡ ¹øÁö´Â °ÍÀº ¸·À» ¼ö ÀÖÀ» °ÍÀÌ³×.[ENTER]ÀÌÁ¦ ÀÚ³×°¡ ÇØÁÙ ÀÏÀº Àû·æ¼º(zone1)¿¡ µ¹ÀÔÇÏ¿© ¾î¶°ÇÑ ¸¶¹°µéÀÌ ÀÖ´ÂÁö, Àû·æÀÌ ºÀÀÎ µÈ °ÍÀÌ ¸Â´ÂÁö È®ÀÎÀ» ÇØÁÖ¾úÀ¸¸é ÇÑ´Ù³×.[ENTER]"
locale.main_quest_flame_lv102.say_5 = "³×. ¾Ë°Ú½À´Ï´Ù.[ENTER]"
locale.main_quest_flame_lv102.say_6 = "°í¸¿³×.[ENTER]ÇÑ¹ø ½Î¿öº¸°í ¾Ë ¼ö ¾ø´Â ³ë¸©ÀÌ´Ï, ¾È¿¡ ÀÖ´Â ¸¶¹°µéÀ» Ã³Ä¡ÇÏ°í ±× Áõ°Å¸¦ ³ª¿¡°Ô 30°³¾¿ °¡Á®´Ù ÁÖ°Ô³ª.[ENTER]±×·³ ºÎÅ¹ ÇÏ°Ú³×.[ENTER]"
locale.main_quest_flame_lv102.say_7 = "Àû·æ¼º(zone1)ÀÇ ¸¶¹°À» Ã³Ä¡ÇÏ°í Áõ°Å¸¦ °¡Á®¿ÀÀÚ."
locale.main_quest_flame_lv102.say_8 = "Àû·æ¼º(zone1)¿¡ µ¹ÀÔÇÏÀÚ!"
locale.main_quest_flame_lv102.say_9 = "¾àÈ¯(20377)ÀÇ Áö·É¿¡ µû¶ó¼­ Àû·æ¼º(zone1)¿¡ µ¹ÀÔÇÏ¿©, Ã´ÈÄ¸¦ ÇàÇÏÀÚ.[ENTER]"
locale.main_quest_flame_lv102.say_10 = "%sÀÇ ¹ßÅé: %d°³ %sÀÇ ¼ÕÅé: %d°³"
locale.main_quest_flame_lv102.say_11 = "%sÀÇ °©¿Ê ÆÄÆí: %d°³ %sÀÇ ¹«±â ÆÄÆí: %d°³"
locale.main_quest_flame_lv102.say_12 = "À½¡¦¾î´ÀÁ¤µµ Ã³Ä¡ÇØ º¸¾Æ¾ß ¾î´ÀÁ¤µµ ¸¶¹°ÀÇ °­ÇÔÀ» ÆÄ¾ÇÇÏ°í Àü·«À» ¼ö¸³ÇÒ ¼ö ÀÖ´Ù³×.[ENTER]¾î¼­ µ¹ÀÔÇÏ¿© Áõ°Å¸¦ ¸ðµÎ °¡Á®¿Í ÁÖ°Ô³ª.[ENTER]"
locale.main_quest_flame_lv102.say_13 = "Àû·æ¼º(zone1)ÀÇ ¸¶¹°À» Ã³Ä¡ÇÑ Áõ°Å¸¦ ¸ðµÎ È®º¸ÇÏ¿´´Ù.[ENTER]¾àÈ¯(20377)¿¡°Ô º¸°íÇÏµµ·Ï ÇÏÀÚ."
locale.main_quest_flame_lv102.say_14 = "¾Ç·æ±ºµµÀÇÀÇ ¾àÈ¯(20377)À» Ã£¾Æ ¸»À» °Éµµ·Ï ÇÏÀÚ.[ENTER]"
locale.main_quest_flame_lv102.say_15 = "¿À~¿Ô±º ±×·¡.[ENTER]º¸¾ÆÇÏ´Ï Áõ°Å´Â ¸ðµÎ °¡Á® ¿Â °Í °°±º ±×·¡.[ENTER]ÀÚ³×°¡ Á÷Á¢ Ã¼°¨ÇÑ ´À³¦Àº ¾î¶°ÇÑ°¡?[ENTER]"
locale.main_quest_flame_lv102.say_16 = "µµ¿°È­Áö¿¡ ÀÖ´Â ¸¶¹°µéµµ º¸¿´À¸³ª, Àû·æ¼º(zone1) ¹ÛÀÇ ¸¶¹°°ú ´Þ¸® ´Ù¼Ò °­ÇÏ¿´½À´Ï´Ù.[ENTER]±× ¹Û¿¡µµ Ã³À½ º¸´Â °­·ÂÇÑ ¸¶¹°µéÀÌ Ãâ¸ôÇÏ¿© ¿©Â÷ÇÏ¸é Àúµµ »ýÈ¯ÇÏÁö ¸øÇÒ »· Çß½À´Ï´Ù.[ENTER]µ¹ÀÔÀ» ÇØº» °á°ú Àû·æÀÇ ºÀÀÎÇØÁ¦¸¦ µµ¿ì¸ç Àû·æ¼º(zone1)À» ÁöÅ°°í ÀÖ´Â ¿°¿Õ ¾ß¸¶Ãµ(6091)ÀÌ¶ó´Â ¸¶¹°À» È®ÀÎ ÇÒ ¼ö ÀÖ¾ú½À´Ï´Ù.[ENTER]"
locale.main_quest_flame_lv102.say_17 = "±×·¸±º. Å¹±âÀÇ ¿µÇâ¸¸ÀÌ ¹®Á¦°¡ ¾Æ´Ï¾ú±º.[ENTER]ÃÊ¸¶´Ü ³à¼®µé ÀÌ¹ø¿¡ ´Ü´ÜÈ÷ °¢¿ÀÇÏ°í Àº¹ÐÇÏ°Ô ¿òÁ÷¿´±¸¸¸.[ENTER]´Ù½Ã ºÎ¸£µµ·Ï ÇÒ ÅÍÀÌ´Ï °¡º¸°Ô³ª.[ENTER]"
locale.main_quest_flame_lv102.say_18 = "¿°¿Õ ¾ß¸¶Ãµ(6091)?!"
locale.main_quest_flame_lv102.say_19 = "ÇÐÀÚ(20380)°¡ ´ç½ÅÀ» ±ÞÇÏ°Ô Ã£°í ÀÖ½À´Ï´Ù.[ENTER]ÇÐÀÚ(20380)¿¡°Ô ÀÚ¼¼ÇÑ ÀÌ¾ß±â¸¦ µé¾îº¸µµ·Ï ÇÏ½Ê½Ã¿À.[ENTER]"
locale.main_quest_flame_lv102.say_20 = "¾àÈ¯(20377)´Ô¿¡°Ô ÀüÇØ µé¾ú³×.[ENTER]Àû·æ¼º(zone1)¿¡¼­ ¿°¿Õ ¾ß¸¶Ãµ(6091)À» ¾Ë°Ô µÇ¾ú´Ù°í µé¾ú³×.[ENTER]ÇÏÇÊÀÌ¸é ¿Ö ±× ³à¼®ÀÎÁö ¿ø¡¦[ENTER]"
locale.main_quest_flame_lv102.say_21 = "¹«½¼ ¹®Á¦¶óµµ¡¦[ENTER]"
locale.main_quest_flame_lv102.say_22 = "¹«½¼ ÀÏÀÌ¶ó´Ï ÀÌ »ç¶÷¾Æ!![ENTER]¿°¿Õ ¾ß¸¶Ãµ(6091)Àº ºùÁ¦ ÇÑ¸¶ÀÇ(6191)¿Í ´õºÒ¾î¼­ °­·ÂÇÏ°í ¾Çµ¶ÇÑ ¸¶¹°Áß¿¡ ÇÏ³ª¶ó³×.[ENTER]ÀÌ ÃßÀûÀ» °è¼Ó ÇÔ¿¡ ÀÖ¾î¼­ °¡Àå Å« °É¸² µ¹ÀÌ µÉ ¼ö ÀÖ´Â ³à¼®ÀÌ¶ó³×.[ENTER]"
locale.main_quest_flame_lv102.say_23 = "ÀÏ´ÜÀº ³ªµµ °í ¹®Çå°ú Ç³¹®À» ÅëÇØ¼­ ¾Ë°ÔµÈ °ÍÀÌ±â ¶§¹®¿¡, º¸´Ù Á¤È®ÇÑ Á¤º¸¸¦ ¾Ë¾Æ¾ß¸¸ ¾àÈ¯(20377)´Ô²² µµ¿òÀ» µå¸± ¼ö ÀÖÀ» °ÍÀ¸·Î º¸ÀÌ³×.[ENTER]ÀÚ³×°¡ ³ª¸¦ µµ¿Í¼­ ¾ß¸¶Ãµ(6091)¿¡ ´ëÇÑ Á¤º¸¸¦ È®º¸ÇØ ÁÖ°Ô³ª.[ENTER]"
locale.main_quest_flame_lv102.say_24 = "¾î¶² °ÍÀ» µµ¿Íµå¸®¸é µË´Ï±î?[ENTER]"
locale.main_quest_flame_lv102.say_25 = "¿°¿Õ ¾ß¸¶Ãµ(6091)ÀÌ Å¹±â¸¦ ÆÛ¶ß¸®´Â ÁÖ¹üÀÎÁö ¾Æ´ÑÁö´Â È®½ÇÇÏÁö ¾ÊÀº »óÅÂ¿¡¼­[ENTER]¾ß¸¶Ãµ(6091)À» ¹Ù·Î »ó´ëÇÏ´Â °ÍÀº À§ÇèÇÒ °ÍÀ¸·Î »ý°¢ÇÏ³×.[ENTER]ÀÏ´ÜÀº Àû·æ¼º(zone1) ¾ÈÀÇ ¸¶¹°À» ¸»»ìÇØ ÁÖ°Ô³ª.[ENTER]Å¹±â°¡ ½º¸çµç ¸¶¹°Àº ºÐ¸í Å¹ÇÑ ±â¿îÀ» ÀÀÁýÇÏ¿© ¸ö¾È¿¡ Áö´Ï°í ÀÖÀ» °ÍÀÌ³×.[ENTER]Å¹±â¸¦ Á¤È­½ÃÅ³ ¹æµµ¸¦ ¸¶·ÃÇÏ°í ¾ß¸¶Ãµ(6091)À» »ó´ëÇØµµ ´ÊÁö ¾ÊÀ» ÅÍÀÌ´Ï Å¹±â ÀÀÁýÃ¼(31081)¸¦ ÇÑ 10°³Âë ±¸ÇØ´Ù ÁÖ°Ô³ª.[ENTER]"
locale.main_quest_flame_lv102.say_26 = "¾Ë°Ú³×. ±×·³ ±â´Ù¸®°í ÀÖ°Ú³×.[ENTER]"
locale.main_quest_flame_lv102.say_27 = "Àû·æ¼º(zone1)ÀÇ ¸¶¹°À» Ã³Ä¡ÇÏ°í Å¹±â ÀÀÁýÃ¼(31081)¸¦ °¡Á®¿ÀÀÚ."
locale.main_quest_flame_lv102.say_28 = "Å¹±â ÀÀÁýÃ¼(31081)¸¦ ±¸ÇÏÀÚ!"
locale.main_quest_flame_lv102.say_29 = "Àû·æ¼º(zone1)¿¡ µ¹ÀÔÇÏ¿©, Å¹±â ÀÀÁýÃ¼(31081)¸¦ ±¸ÇÏÀÚ.[ENTER]"
locale.main_quest_flame_lv102.say_30 = "¡ØÁö±ÞµÈ ÅëÇàÁõÀº Àç¹ß±Þ µÇÁö ¾Ê½À´Ï´Ù.[ENTER]"
locale.main_quest_flame_lv102.say_31 = "ÀÌºÁ ¾ÆÁ÷µµ ¸ðµÎ ±¸ÇÏÁö ¸øÇÏ¿´³ª?[ENTER]ÀÚ³×¶ó¸é ´ÉÈ÷ ÀÌ ÀÏÀ» ÇØ³¾ ¼ö ÀÖÀ» °ÍÀÌ¶ó ÆÇ´ÜÇÏ¿´°Å´Ã¡¦[ENTER]´Ù½Ã ´Ù³à¿Í ÁÖ°Ô³ª![ENTER]"
locale.main_quest_flame_lv102.say_32 = "Àû·æ¼º(zone1) ¸¶¹°À» Ã³Ä¡ÇÏ°í Å¹±â ÀÀÁýÃ¼(31081)¸¦ ¸ðµÎ ±¸ÇÏ¿´´Ù. [ENTER]ÇÐÀÚ(20380)¿¡°Ô º¸°íÇÏÀÚ."
locale.main_quest_flame_lv102.say_33 = "¾îÈÄ~º¸±â¸¸ÇØµµ Å¹±â°¡ ¸ö¿¡ ½º¸ç µé °Í °°±¸¸¸.[ENTER]ÀÚ³×°¡ ¹«°øÀÌ °í°­ÇÏ±ä ÇÑ°¡ º¸±¸¸¸.[ENTER]±ôºýÇÏ°í Å¹±â ÀÀÁýÃ¼(31081)¸¦ ´ãÀ» ÇÔÀ» ÁÖÁö ¾Ê¾Ò´Âµ¥ ¸»ÀÌÁö¡¦[ENTER]ÀÌÁ¦ ³»°¡ Á¤È­ÇÒ ¹æµµ¸¦ Ã£°í ÀÚ³×¸¦ ºÎ¸£µµ·Ï ÇÏ°Ú³×.[ENTER]°¡º¸°Ô³ª.[ENTER]"
locale.main_quest_flame_lv102.say_34 = "(¿ØÁö Á¶½ÉÇØ¾ß ÇÒ °Í ¸¸ °°´Ù¡¦)[ENTER]"
locale.main_quest_flame_lv102.say_35 = "Å¹±âÀÇ Á¤È­"
locale.main_quest_flame_lv102.say_36 = "Àß¿Ô³×.[ENTER]Á¶±ÝÀü¿¡ Å¹±â¸¦ Á¤È­ ½ÃÅ³ ¹æµµ¸¦ Ã£¾Ò³×.[ENTER]Å¹±â¸¦ Á¤È­ ½ÃÅ³ ¼ö ÀÖ¾î¾ß¸¸, Àû·æ¼º(zone1)¿¡ µ¹ÀÔÇÏ¿©µµ ¹öÆ¿ ¼ö°¡ ÀÖÀ» °ÍÀÌ´Ï ¸»ÀÏ¼¼.[ENTER]ÀÚ³× È¥ÀÚ ¸ðÁ¶¸® Ã³Ä¡ÇÑ´Ù¸é¾ß »ó°üÀÌ ¾øÁö¸¸, ±×°Ç ¹«¸®°í ¾àÈ¯(20377)´ÔÀÇ ¹«ÇÏµé°ú ÇÔ²² µ¹ÀÔÇÏ¿©¾ß[ENTER]´Ù¼Ò ¼ö¿ùÇÏ°í Èñ»ýÀ» ÁÙÀÏ ¼ö ÀÖÀ» °ÍÀÌ³×.[ENTER]"
locale.main_quest_flame_lv102.say_37 = "±× ¹æµµ°¡ ¾î¶² °ÍÀÔ´Ï±î?[ENTER]"
locale.main_quest_flame_lv102.say_38 = "ÀçÃËÇÏÁö ¸»°Ô³ª.[ENTER]±×·¸Áö ¾Ê¾Æµµ ¸»ÇØ ÁÙÅÍÀÌ´Ï ¸»ÀÏ¼¼.[ENTER]¾ó¸¶Àü¿¡ ³ª¿Í Å¹±â¸¦ Á¶»ç ÇÒ¶§ À½¾çÀÇ Á¶È­¿¡ ´ëÇØ¼­ ¾Ë°Ô µÇ¾úÀ» °ÍÀÌ´Ï ÀÚ¼¼ÇÑ ¸»Àº »ý·«ÇÏ°Ú³×.[ENTER]ºÒ°ú ¹°, À½°ú ¾ç°ú °°ÀÌ »ó±ØÀÎ ¼ºÁúÀÌ ÀÖ´Â °Í!![ENTER]Å¹ÇÑ °ÍÀº ¸¼Àº °ÍÀ¸·Î ÁßÈ­ ½ÃÅ³ ¼ö ÀÖ´Ù³×.[ENTER]¹°·Ð ¸¼À½ÀÌ Å©¸é °á±¹ Á¤È­°¡ µÇÁö.[ENTER]"
locale.main_quest_flame_lv102.say_39 = "ÀÚ³× Áøº¸È¯¾×(50819)ÀÌ¶ó´Â °ÍÀº ¾Ë °ÍÀÌ³×. Áøº¸È¯¾×(50819)¿¡ È°¼®(51001)À» ³ìÀÌ¸é ¸¼Àº ¼ºÁúÀ» ¶ç´Â ¾×ÀÌ µÈ´Ù³×.[ENTER]ÀÌ°ÍÀ» º¹¿ëÇÑ »óÅÂ¿¡¼­ Àû·æ¼º(zone1)ÀÇ ¸¶¹°À» »ó´ëÇÒ¶§ Å« È¿¿ëÀ» ¹ßÈÖÇÏ°Ô µÉ ¼ö ÀÖÀ» °ÍÀÌ¾ß.[ENTER]¸»Àº °£´ÜÇÏÁö¸¸ ½±»ç¸® ¿Ï¼ºÀÌ µÇÁö ¾Ê±â¶§¹®¿¡, Áøº¸È¯¾×(50819) 50°³¿Í È°¼®(51001) 100°³Á¤µµ ±¸ÇØ¼­ ¾Ç»ç À¯È¯(20017)¿¡°Ô °¡Á®´Ù ÁÖ°Ô³ª.[ENTER]"
locale.main_quest_flame_lv102.say_40 = "¾Ë°Ú³×. °ÇÅõ¸¦ ºô°Ú³×.[ENTER]"
locale.main_quest_flame_lv102.say_41 = "Áøº¸È¯¾×(50819)°ú È°¼®(51001)À» ±¸ÇØ ¾Ç»ç À¯È¯(20017)¿¡°Ô °¡Á®´ÙÁÖÀÚ."
locale.main_quest_flame_lv102.say_42 = "Å¹±â Á¤È­ Á¦·á¸¦ ±¸ÇÏÀÚ!"
locale.main_quest_flame_lv102.say_43 = "Áøº¸È¯¾×(50819)°ú È°¼®(51001)À» ±¸ÇÏÀÚ.[ENTER]"
locale.main_quest_flame_lv102.say_44 = "ÀÌ Ä£±¸ ÀÏÃ³¸®°¡ ºü¸£±º ±×·¡.[ENTER]³ª¸ÓÁö´Â ³ª¿¡°Ô ¸Ã±âµµ·Ï ÇÏ°í, ÇÇ·Î¸¦ Á» Ç®°í ÀÖ°Ô³ª.[ENTER]"
locale.main_quest_flame_lv102.say_45 = "ÇÐÀÚ(20380)´Ô²² ÀüÇØ µéÀº °Íº¸´Ù Àû´Ù³×.[ENTER]¾ÆÁ÷µµ ÃæºÐÈ÷ ±¸ÇØ¿ÀÁö ¸øÇÑ °ÍÀÌ·Î ±¸¸¸.[ENTER]¾î¼­ ³ª¸ÓÁö Àç·áµµ ÃæºÐÈ÷ ±¸ÇØ´Ù ÁÖ°Ô.[ENTER]"
locale.main_quest_flame_lv102.say_46 = "Áøº¸È¯¾×(50819)°ú È°¼®(51001)À» ÃæºÐÈ÷ ±¸Çß´Ù. ¾Ç»ç À¯È¯(20017)¿¡°Ô °¡Á®´ÙÁÖÀÚ."
locale.main_quest_flame_lv102.say_47 = "¾Ç»ç À¯È¯(20017)À» Ã£¾Æ ¸»À» °Éµµ·Ï ÇÏÀÚ.[ENTER]"
locale.main_quest_flame_lv102.say_48 = "Á¤È­ÀÇ ¾× Àü´Þ"
locale.main_quest_flame_lv102.say_49 = "¾Ç»ç À¯È¯(20017)ÀÌ ´ç½ÅÀ» ±ÞÇÏ°Ô Ã£°í ÀÖ½À´Ï´Ù.[ENTER]À¯È¯(20017)¿¡°Ô ÀÚ¼¼ÇÑ ÀÌ¾ß±â¸¦ µé¾îº¸µµ·Ï ÇÏ½Ê½Ã¿À.[ENTER]"
locale.main_quest_flame_lv102.say_50 = "¾î¼­¿À°Ô.[ENTER]ÀÚ³×°¡ º¸³»ÁØ Á¦·á·Î Á¤È­ÀÇ ¾×À» ¸¸µé¾ú´Ù³×.[ENTER]¿ø·¡´ë·Î¶ó¸é ¼ö·®ÀÌ ´õ ³ª¿Í¾ß ÇÏÁö¸¸, ÀÏºÎ´Â Á¦Á¶ Áß¿¡ ½ÇÆÐÇÏ¿© ¼ö·®ÀÌ Á» ÁÙ±ä ÇÏ¿´³×.[ENTER]±×·¡µµ ÃæºÐÇÑ ¼ö·®ÀÌ ³ª¿ÔÀ¸´Ï, ¾àÈ¯(20377)´Ô²² ÀüÇØÁÖ°Ô³ª.[ENTER]"
locale.main_quest_flame_lv102.say_51 = "±×·±µ¥ ¾×ÀÌ¶ó ÇÏ¿´´Âµ¥ ¿Ö È¯¾à°ú °°ÀÌ ´Ü´ÜÇÕ´Ï±î?[ENTER]"
locale.main_quest_flame_lv102.say_52 = "ÀÌ Ä£±¸ ±×·± »ç¼ÒÇÑ °ÍÀº ½Å°æ ¾²Áö ¸»°Ô³ª.[ENTER]±× ¸¸Å­ ³óÃàÇÏ¿© ±×¸® µÈ °ÍÀÌ³×.[ENTER]"
locale.main_quest_flame_lv102.say_53 = "±×·³ ºÎÅ¹ ÇÔ¼¼.[ENTER]"
locale.main_quest_flame_lv102.say_54 = "¾Ç»ç À¯È¯(20017)¿¡°Ô ¹ÞÀº Á¤È­ÀÇ ¾×À» ¾àÈ¯(20377)¿¡°Ô ÀüÇØÁÖÀÚ."
locale.main_quest_flame_lv102.say_55 = "¿Ö ¼Õ¿¡ ¾ÆÁ÷ Á¤È­ÀÇ ¾×ÀÌ ÀÖ´Â °ÍÀÎ°¡?[ENTER]¾î¼­ ¾àÈ¯(20377)´Ô²² Á¤È­ÀÇ ¾×À» ÀüÇØÁÖ°Ô³ª.[ENTER]"
locale.main_quest_flame_lv102.say_56 = "¿À~¾î¼­¿À°Ô³ª.[ENTER]ÇÑÂüÀ» ±â´Ù¸®°í ÀÖ¾ú´Ù³×.[ENTER]À¯È¯(20017)¿¡°Ôµµ ¸»Àº ÀÌ¹Ì ÀüÇØ µé¾ú°í ¸»ÀÌ¾ß.[ENTER]Á¤È­ÀÇ ¾×Àº °¡Áö°í ¿Ô´Â°¡?[ENTER]"
locale.main_quest_flame_lv102.say_57 = "³×. ³óÃàÇÏ¿© °ÅÀÇ È¯ÀÌ µÇ¾ú½À´Ï´Ù.[ENTER]Àû·æ¼º(zone1) µ¹ÀÔ ½Ã¿¡ À¯¿ëÇÏ°Ô »ç¿ëÀÌ µÉ °Í °°½À´Ï´Ù.[ENTER]"
locale.main_quest_flame_lv102.say_58 = "±×·¡. °í»ýÇÏ¿´³×.[ENTER]ºÎÇÏµé°ú ÇÔ²² µ¹ÀÔ ÁØºñµµ ÇÏ¿©¾ßÇÏ°í Á¤È­ÀÇ ¾×Àº µÎ°í °¡°Ô³ª.[ENTER]±×¸®°í ÇÏ³ª´Â ÀÚ³×°¡ °¡Áö°í °¡°Ô.[ENTER]¾Æ¹«·¡µµ ÀÚ³×°¡ Å« ÈûÀÇ ÃàÀÌ µÉ °Í °°¾Æ¼­ ¸»ÀÌ¾ß.[ENTER]³ªÁß¿¡ µ¹ÀÔ °­Çà ½Ã¿¡ ºÎ¸£µµ·Ï ÇÏ°Ú³×.[ENTER]"

locale.main_quest_flame_lv103 = {}
locale.main_quest_flame_lv103.say_1 = "Àû·æ¼º(zone1)À» ÇâÇØ"
locale.main_quest_flame_lv103.say_2 = "¾àÈ¯(20377)ÀÌ ´ç½ÅÀ» ±ÞÇÏ°Ô Ã£°í ÀÖ½À´Ï´Ù.[ENTER]¾àÈ¯(20377)¿¡°Ô ÀÚ¼¼ÇÑ ÀÌ¾ß±â¸¦ µé¾îº¸µµ·Ï ÇÏ½Ê½Ã¿À.[ENTER]"
locale.main_quest_flame_lv103.say_3 = "¾î¼­¿À°Ô.[ENTER]Ã¥»çµé°ú ³íÀÇ¸¦ ÇÏ¿©, ¾ö¼±µÈ º´»ç¸¦ Ãß·Á Á¤È­ÀÇ ¾×À» ³ìÀÎ ¹°À» ¸¶½Ã°Ô ÇÏ¿´´Ù³×.[ENTER]È¿°ú°¡ ´ë´ÜÇÏ´õ±º ±×·¡.[ENTER]¿Â¸ö¿¡ Ã»¾ÆÇÑ ±â¿îÀÌ µ¹°í Á¤½ÅÀÌ ¶Ç·ÇÇØÁö¸ç, ±â¿îÀÌ ¿Ã¶ó°¡´õ±¸¸¸.[ENTER]±×·¡¼­ Àû·æ¼º(zone1)¿¡ ÆÄ°ßÀ» ÇÏ¿´´Ù³×.[ENTER]"
locale.main_quest_flame_lv103.say_4 = "ºÎÇÏµéÀÌ ¸ÕÀú Ãâ¹ß ÇÏ¿´À¸´Ï ÀÚ³×°¡ Áö±Ý µÚµû¶ó °¡¸é ¸¶ÁÖ ÇÒ ¼ö ÀÖÀ» °ÍÀÌ¾ß.[ENTER]³» ºÎÇÏµé°ú ÇÔ²² Àû·æ¼º(zone1)À» ¾µ¾î¹ö¸®°í, °¡´ÉÇÏ´Ù¸é ¾ß¸¶Ãµ(6091)±îÁö Ã³Ä¡ ºÎÅ¹ÇÏ³×.[ENTER]ÃÖ ¿ì¼±ÀûÀ¸·Î ¼ÒÅëÀ» À§ÇÏ¿© º¸³½ ³» ºÎÇÏ¸¦ Ã£±æ ¹Ù¶ó³×.[ENTER]ÀÚ³×°¡ ÇÒ ÀÏÀ» ÀÏ·¯ ÁÙ °ÍÀÌ³×.[ENTER]"
locale.main_quest_flame_lv103.say_5 = "³×. ¾Ë°Ú½À´Ï´Ù.[ENTER]"
locale.main_quest_flame_lv103.say_6 = "±×·³ ºÎÅ¹ ÇÔ¼¼.[ENTER]"
locale.main_quest_flame_lv103.say_7 = "Àû·æ¼º(zone1)¿¡¼­ ¾àÈ¯ÀÇ ºÎÇÏ(20393)¸¦ Ã£ÀÚ."
locale.main_quest_flame_lv103.say_8 = "¾àÈ¯ÀÇ ºÎÇÏ(20393)¸¦ Ã£ÀÚ."
locale.main_quest_flame_lv103.say_9 = "Àû·æ¼º(zone1)¿¡ µ¹ÀÔÇÑ ¾àÈ¯ÀÇ ºÎÇÏ(20393)¸¦ Ã£ÀÚ.[ENTER]"
locale.main_quest_flame_lv103.say_10 = "ÀÌºÁ. ¾È°¡°í ¿Ö ´Ù½Ã ¿Â°Ô¾ß.[ENTER]¾î¼­ Àû·æ¼º(zone1)À¸·Î Ãâ¹ßÇÏ°Ô³ª.[ENTER]"
locale.main_quest_flame_lv103.say_11 = "´ë¡¦Çù´Ô¡¦¿©±é´Ï´Ù¡¦[ENTER]¸¶¹°µéÀ» ¸»»ìÇÏ°í µ¹ÀÔÀ» ÇÏ¿´À¸³ª, °á±¹ ¾ß¸¶Ãµ(6091)ÀÇ ¾ÐµµÀûÀÎ Èû ¾Õ¿¡[ENTER]Àü¸ê ´çÇÏ°í ¸»¾Ò½À´Ï´Ù.[ENTER]È¥ÀÚ¼­ ÇØ°á ÇÒ ¼ö ÀÖ´Â ºÎºÐÀÌ ¾Æ´Ï´Ï ¾àÈ¯(20377)´Ô²² ¸»À» ÀüÇØÁÖ½ÃÁö¿ä.[ENTER]"
locale.main_quest_flame_lv103.say_12 = "¾Ç·æ±ºµµÀÇÀÇ ¾àÈ¯(20377)À» Ã£¾Æ ¸»À» °Éµµ·Ï ÇÏÀÚ.[ENTER]"
locale.main_quest_flame_lv103.say_13 = "»ý°¢º¸´Ù »¡¸® ¿À´Â ±º ±×·¡.[ENTER]Àû·æ¼º(zone1)Àº ÇØ°áÇÏ°í ¿À´Â ±æÀÎ°¡?[ENTER]"
locale.main_quest_flame_lv103.say_14 = "¾Æ¡¦Àú¡¦±×°Ô¡¦[ENTER]"
locale.main_quest_flame_lv103.say_15 = "¹«¾ùÀÌ±â¿¡ ±×¸® ¸»À» Èå¸®´Â °Õ°¡?[ENTER]¹«½¼ ÀÏÀÌ¶óµµ ÀÖ¾ú³ª?[ENTER]"
locale.main_quest_flame_lv103.say_16 = "Á¤È­ÀÇ ¾×À» ¸¶½Å º´»çµéÀº °­·ÂÇÏ°Ô º¯È­ÇÏ¿© Àû·æ¼º(zone1)¿¡ µ¹ÀÔÀ» ÇÏ¿´À¸³ª, ¿°¿Õ ¾ß¸¶Ãµ(6091)¿¡°Ô ¸ô»ìÀ» ´çÇÏ¿´½À´Ï´Ù.[ENTER]ÀÌ ³»¿ëµµ ¸¶Áö¸·¿¡ ³²Àº º´»ç°¡ °Ü¿ì ¸»À» ÀüÇÏ°í ¸íÀ» ´Þ¸® ÇÏ¿´½À´Ï´Ù.[ENTER]´Ù¼Ò ¼º±ÞÇÏ°Ô µ¹ÀÔÀ» ÇÑ °ÍÀÌ È­±ÙÀÎ °Í °°½À´Ï´Ù.[ENTER]"
locale.main_quest_flame_lv103.say_17 = "´ÄÀ¸¸é Á×¾î¾ßÁö¡¦[ENTER]³ªÀÇ ¼º±ÞÇÑ ÆÇ´ÜÀ¸·Î ºÎÇÏµéÀ» »çÁö·Î ³»¸ô°Ô µÈ °ÍÀÌ·Î±¸³ª¡¦[ENTER]Àü¿­À» °¡´Ùµë¾î¾ß °Ú³×.[ENTER]±âº°À» ³ÖÀ» ÅÍÀÌ´Ï ´ë±âÇÏ°í ÀÖ°Ô³ª.[ENTER]"
locale.main_quest_flame_lv103.say_18 = "Á¡ÁøÀû °ÝÆÄ"
locale.main_quest_flame_lv103.say_19 = "ÀÌÁ¦ ¿À´Â°Õ°¡?[ENTER]Áö³­¹ø ³ªÀÇ °ú¿À·Î ÀÎÇÏ¿©, ½¢ÇÑ »ý¸íÀÌ »ç¶óÁ® °¬³×.[ENTER]ÃÊ¸¶´ÜÀÇ À½¸ð¸¦ ÀúÁöÇÏ¿©¾ßÇÏ´Â Áß¿äÇÑ ½Ã±âÀÌ±â¿¡ ¿©±â¼­ Æ÷±â ÇÒ ¼ö ¾ø¾ú´Ù³×.[ENTER]±×¸®ÇÏ¿©, ³íÀÇ ³¡¿¡ ÀÚ³×¸¦ ÁÖÃàÀ¸·Î ÇÏ´Â Ã¥·«À» ÁØºñÇÏ¿´³×.[ENTER]"
locale.main_quest_flame_lv103.say_20 = "ÀÏ´Ü ÀÚ³×°¡ ¹«°øÀÌ °í°­ÇÑ °ÍÀÌ »ç½ÇÀÌ±â¿¡ ±×¿¡ ¸Â´Â Ã¥·«ÀÌ´Ï ³Ê¹« ¾î·Á¿öÇÏÁö´Â ¸»°Ô³ª.[ENTER]Áö³­¹ø Á¤È­ÀÇ ¾×À» »ç¿ëÀ¸·Î ÀÎÇÑ °ËÁõÀº ÃæºÐÈ÷ µÇ¾ú³×.[ENTER]ÀÌ¹ø¿¡µµ Á¤È­ÀÇ ¾×À» »ç¿ëÇÏ¿© º´»ç¸¦ °­È­ÇÒ °ÍÀÌ³×.[ENTER]±×·¯³ª ¿°¿Õ ¾ß¸¶Ãµ(6091)ÀÇ Ã³Ä¡´Â ¿ì¸®ÂÊ¿¡¼­´Â ¾î·Á¿ï °ÍÀ¸·Î º¸¿©, ¿ì¸® º´»çµéÀº ¿ÜºÎ·Î[ENTER]Ã¢±ÈÇÏ·ÁÇÏ´Â ¸¶¹°À» Á¦°ÅÇÒ »ý°¢ÀÌ³×.[ENTER]"
locale.main_quest_flame_lv103.say_21 = "±× µ¿¾È ÀÚ³×´Â Àû·æ¼º(zone1)¿¡ µ¹ÀÔÇÏ¿©, ¸¶¹°À» 1Ãµ¸¶¸® °¡¸®Áö ¾Ê°í Á¦°ÅÇØ ÁÖ°Ô³ª.[ENTER]¼öÂ÷·Ê µ¹ÀÔÇØ¼­ ±× Á¤µµ ¸¶¹°ÀÇ ¼ö¸¦ Á¦°ÅÇÑ´Ù¸é ¾ß¸¶Ãµ(6091)µµ ±äÀåÇÒ °ÍÀÌ°í, µ¿¿äÇÏ´Â Æ´¿¡[ENTER]±âÈ¸°¡ ºÐ¸í ¿À°Ô µÉ °ÍÀÌ¾ß.[ENTER]ºÎÅ¹ÇÏ°Ú³×.[ENTER]"
locale.main_quest_flame_lv103.say_22 = "³×. ¾Ë°Ú½À´Ï´Ù.[ENTER]"
locale.main_quest_flame_lv103.say_23 = "Àû·æ¼º(zone1)¿¡ µ¹ÀÔÇÏ¿© Àû·æ¼º(zone1)ÀÇ ¸¶¹°À» Ã³Ä¡ÇÏÀÚ."
locale.main_quest_flame_lv103.say_24 = "¸¶¹°À» µµ·úÇÏÀÚ."
locale.main_quest_flame_lv103.say_25 = "Àû·æ¼º(zone1)¿¡ µ¹ÀÔÇÏ¿©, ¸¶¹°À» 1000¸¶¸® °ÝÆÄÇÏÀÚ.[ENTER]"
locale.main_quest_flame_lv103.say_26 = "¡ØÁö±ÞµÈ ÅëÇàÁõÀº Àç¹ß±Þ µÇÁö ¾Ê½À´Ï´Ù.[ENTER]"
locale.main_quest_flame_lv103.say_27 = "¾ÆÁ÷ ¸ðµÎ °ÝÆÄÇÏÁö ¸øÇÑ °Í °°±º ±×·¡.[ENTER]Àû·æ¼º(zone1)ÀÇ ¸¶¹°ÀÌ ¾ÆÁ÷µµ ¹ÛÀ¸·Î Ã¢±ÈÇÏ°í ÀÖÀ¸´Ï ¸»ÀÌ¾ß.[ENTER]¿ä·ÉÇÇ¿ï »ý°¢ÇÏÁö ¸»°í, ¾î¼­ ´Ù³à¿À°Ô³ª.[ENTER]"
locale.main_quest_flame_lv103.say_28 = "Àû·æ¼º(zone1)ÀÇ ¸¶¹°À» 1000¸¶¸® ¸ðµÎ °ÝÆÄÇÏ¿´´Ù.[ENTER]¾àÈ¯(20377)¿¡°Ô º¸°íÇÏÀÚ."
locale.main_quest_flame_lv103.say_29 = "ºÎÇÏµéÀÇ ¸»¿¡ µû¸£¸é Àû·æ¼º(zone1)¿¡¼­ Ã¢±ÈÇÏ¿© ¿ÜºÎ·Î ³ª¿À´Â ¸¶¹°ÀÌ ÀÌÁ¦ °ÅÀÇ »ç¶óÁ³´Ù°í ÇÏ´Â±º.[ENTER]Á¦³×°¡ ÃæºÐÈ÷ °ÝÆÄÇØÁØ °Í °°±º ±×·¡.[ENTER]°í»ýÇÏ¿´³×.[ENTER]´ÙÀ½ °èÈ¹À» ÇÐÀÚ(20380)¿Í ³íÀÇ ÁßÀÌ´Ï Àá½Ã¸¸ ±â´Ù¸®°í ÀÖ°Ô³ª.[ENTER]"
locale.main_quest_flame_lv103.say_30 = "Àû·æ¼º(zone1)ÀÇ °ñÄ©°Å¸®"
locale.main_quest_flame_lv103.say_31 = "Àß¿Ô³×.[ENTER]ÀÚ³×°¡ ¸¶¹°À» °ÝÆÄÇØÁØ ´öºÐ¿¡ µ¹ÀÔÀÌ ¼ö¿ùÇØÁö³ª ½Í¾úÁö¸¸, Ã´ÈÄ¿¡ ÀÇÇÏ¸é ¾ÆÁ÷ ¾î·Á¿î °Í °°´õ±º ±×·¡.[ENTER]¾Æ¹«·¡µµ ¾îÁÝÁö ¾ÊÀº ¸¶¹°À» Ã³Ä¡ÇØ¼­´Â µ¹ÀÔ¿¡ ¿µÇâÀ» ÁÙ °Í °°Áö°¡ ¾Ê³×.[ENTER]±×·¡¼­ Ã´ÈÄÀÇ Á¤º¸¿¡ µû¶ó ¼ö³úºÎ·Î º¸ÀÌ´Â ³à¼®µéÀ» ¿ì¼±ÀûÀ¸·Î Ã³Ä¡ÇÏ¿©¾ß ÇÒ °Í °°´Ù³×.[ENTER]"
locale.main_quest_flame_lv103.say_32 = "±× ³à¼®µéÀº È­¸¶(6005),¿°¸¶(6007),È­±«(6006),¿°±«,ÃÊ¿­±«(6009) ÀÌ 5³à¼®µéÀÌ¶ó³×.[ENTER]ÀÌ ³à¼®µéÀº Àû·æ¼º(zone1)¿¡¼­µµ »ó±Þ ¸¶¹°ÀÌ±âµµ ÇÏÁö¸¸, ¿°¿Õ ¾ß¸¶Ãµ(6091)À» Á¦¿ÜÇÑ ¼ö³úºÎ·Î ÆÇ´ÜÇÏ¿´³×.[ENTER]¹ìÀÇ ¸Ó¸®¸¦ ÀÚ¸£µí ¼ö³úºÎ¿¡ ¸·´ëÇÑ ÇÇÇØ¸¦ ÁÖ¸é ¿ì¸®ÀÇ °èÈ¹ÀÌ ¼øÁ¶·Ó°Ô ÁøÇàÀÌ µÉ °ÍÀÌ³×.[ENTER]±×·¡¼­ ¸»ÀÌ´Ï, 5³à¼®µéÀ» °¢ 50¸¶¸®¾¿ Ã³Ä¡ÇØ ÁÖ°Ô³ª.[ENTER]"
locale.main_quest_flame_lv103.say_33 = "Àû·æ¼º(zone1)¿¡ µ¹ÀÔÇÏ¿© ¼ö³úºÎ ¸¶¹°À» Á¦°ÅÇÏÀÚ."
locale.main_quest_flame_lv103.say_34 = "Àû·æ¼º(zone1) ¼ö³úºÎ¸¦ °ÝÆÄÇÏ¶ó."
locale.main_quest_flame_lv103.say_35 = "Àû·æ¼º(zone1)¿¡ µ¹ÀÔÇÏ¿©, ¼ö³úºÎ ¸¶¹°À» Ã³Ä¡ÇÏÀÚ.[ENTER]"
locale.main_quest_flame_lv103.say_36 = "¾ÆÁ÷ ¼ö³úºÎ¸¦ ÃæºÐÈ÷ °ÝÆÄÇÏÁö ¸øÇÑ °Í °°±º ±×·¡.[ENTER]¿ì¸®ÀÇ °èÈ¹À» À§ÇØ ²À ÇÊ¿äÇÑ ÀÛÀüÀÌ´Ï ´Ù½Ã ´Ù³à¿À°Ô³ª.[ENTER]"
locale.main_quest_flame_lv103.say_37 = "Àû·æ¼º(zone1)ÀÇ ¼ö³úºÎ ¸¶¹°À» ¸ðµÎ Ã³Ä¡ÇÏ¿´´Ù.[ENTER]¾àÈ¯(20377)¿¡°Ô º¸°íÇÏµµ·Ï ÇÏÀÚ."
locale.main_quest_flame_lv103.say_38 = "ÀÌÁ¦ ¿ì¸®°¡ Àû·æ¼º(zone1)¿¡ µ¹ÀÔÇÏ¿© ÃÊ¸¶´ÜÀÇ À½¸ð¸¦ ÀúÁöÇÒ ¼ö ÀÖ°Ú±º ±×·¡.[ENTER]ÀÌÁ¦ Á¶±Ý¸¸ ´õ ³ª¾Æ°¡¸é µÇ´Ï Á¶±Ý¸¸ ´õ Èû³» ÁÖ°Ô³ª.[ENTER]°í»ýÇÏ¿´³×.[ENTER]"
locale.main_quest_flame_lv103.say_39 = "¾ß¸¶Ãµ(6091) Åä¹ú1-1"
locale.main_quest_flame_lv103.say_40 = "ÀÚ³×°¡ ¼ö³úºÎ¸¦ °ÝÆÄÇØÁØ ´öºÐ¿¡ ³» ºÎÇÏµéÀÌ ¼øÇ³À» ¸¸³­ ¹èÃ³·³ Àû·æ¼º(zone1)À» Á¡ÁøÀûÀ¸·Î °ÝÆÄÇØ ³ª¾Æ°¡°í ÀÖ´Ù³×.[ENTER]Á¤¸» ÀÚ³×ÀÇ ´öÀÌ Å©´Ù³×.[ENTER]´Ù½Ã±Ý °¨»ç¸¦ Ç¥ÇÏÁö.[ENTER]ÀÌÁ¦ Àû·æ¼º(zone1)ÀÇ °ÝÆÄ¿Í ÇÔ²² ÃÊ¸¶´ÜÀÇ À½¸ð¸¦ ÀúÁöÇÒ ¼ö ÀÖÀ» °Í°°±¸¸¸.[ENTER]ÀÚ³×¸¦ ºÎ¸¥ °ÍÀº ÇöÈ²À» ¾Ë·ÁÁÖ´Â °Í°ú °¨»ç¸¦ Ç¥ÇÏ±â À§ÇØ¼­ ¿´³×.[ENTER]ÇÐÀÚ(20380)°¡ Ã¥·«À» ±¸»óÇØ µÐ °ÍÀÌ ÀÖÀ¸´Ï Áö±Ý ÇÐÀÚ(20380)¿¡°Ô °¡º¸°Ô³ª.[ENTER]"
locale.main_quest_flame_lv103.say_41 = "ÇÐÀÚ(20380)¿¡°Ô Ã¥·«À» µéÀ¸·¯ °¡ÀÚ."
locale.main_quest_flame_lv103.say_42 = "ÇÐÀÚ(20380)¸¦ Ã£¾Æ°¡ÀÚ.[ENTER]"
locale.main_quest_flame_lv103.say_43 = "¾î¼­¿À°Ô. ±â´Ù¸®°í ÀÖ¾ú´Ù³×.[ENTER]¾àÈ¯(20377)´Ô²² ÀÚ³×ÀÇ ÇõÇõÇÑ Àü°ú¸¦ °è¼Ó Á¢ÇÏ°í ÀÖ¾ú´Ù³×.[ENTER]ÀÏ´Ü ±×°Ç ±×°Å°í, ÃÊ¸¶´ÜÀÇ À½¸ð¸¦ ¸·±â À§ÇÔÀÌ Å©´Ï Ã¥·«ºÎÅÍ ¼³¸íÇØ ÁÖ°Ú³×.[ENTER]"
locale.main_quest_flame_lv103.say_44 = "¾àÈ¯(20377)´ÔÀÇ µµ¿òÀ¸·Î ¹«¿¹°¡ ¶Ù¾î³­ º´»ç¸¦ ¼±¹ßÇÏ¿©, ¿°¿Õ ¾ß¸¶Ãµ(6091)¿¡ ´ëÇÏ¿© Á¶»ç¸¦ ÇÏ¿´³×.[ENTER]±× °á°ú Å« ¼ÒµæÀ» ¾ò¾ú´Ù³×.[ENTER]¿°¿Õ ¾ß¸¶Ãµ(6091)Àº ¸¶¹°µéÀÌ µæ½Ç°Å¸®´Â °÷¿¡ ¼û°ÜµÐ È­¸¶¼®(8057)¿¡¼­ ÈûÀ» ¾ò´Â °Í °°´õ±º.[ENTER]±× È­¸¶¼®(8057)À» Á¦°ÅÇÑ´Ù¸é ¾ß¸¶Ãµ(6091)ÀÇ Ã³Ä¡´Â ÈÎ¾À ¼ö¿ùÇÏ°Ô µÉ °ÍÀÌ¾ß.[ENTER]"
locale.main_quest_flame_lv103.say_45 = "±×·¯¸é Á¦°¡ ±× È­¸¶¼®(8057)À» Á¦°ÅÇÏ°í ¿À¸é µÇ´Â °Ì´Ï±î?[ENTER]"
locale.main_quest_flame_lv103.say_46 = "±×·¸´Ù³×.[ENTER]ÀÚ³×µµ ¾Ë´Ù½ÃÇÇ È­¸¶¼®(8057)À» °ÝÆÄÇÏ¸é ¸¶¹°µéÀÌ ¾öÃ»³ª°Ô Ãâ¸ôÀ» ÇÏ°ÔµÇÁö.[ENTER]±×°ÍÀ» À¯³äÇÏ¿© Á¶½É½º·¯¿ì¸é¼­ °ú°¨ÇÏ°Ô ÀÏÀ» ÇàÇØ ÁÖ°Ô³ª.[ENTER]È­¸¶¼®(8057)ÀÌ ¾î´À°÷¿¡¼­ Ã£°Ô µÉÁö´Â ¹ÌÁö¼öÀÌ´Ï ´Ã ±äÀåÀ» ÇÏ°Ô³ª.[ENTER]"
locale.main_quest_flame_lv103.say_47 = "¾ß¸¶Ãµ(6091)À» »ó´ëÇÏ¿©¾ß ÇÒ ¶§¿¡´Â ¾àÈ¯(20377)´ÔÀÌ ÀÏ·¯ÁÖ½Ç °ÍÀÌ¾ß.[ENTER]±×·¯´Ï ÀÚ³×´Â Áö±Ý Àû·æ¼º(zone1)À¸·Î Ãâ¹ßÇÏ¿©, È­¸¶¼®(8057)À» 1°³ °ÝÆÄÇÏ°í ¾àÈ¯(20377)´Ô²² º¸°íÇØ ÁÖ°Ô³ª.[ENTER]"
locale.main_quest_flame_lv103.say_48 = "Àû·æ¼º(zone1)¿¡¼­ È­¸¶¼®(8057)À» °ÝÆÄÇÏÀÚ."
locale.main_quest_flame_lv103.say_49 = "È­¸¶¼®(8057)À» °ÝÆÄÇÏÀÚ."
locale.main_quest_flame_lv103.say_50 = "Àû·æ¼º(zone1)¿¡ ÀÖ´Â È­¸¶¼®(8057)À» °ÝÆÄÇÏÀÚ.[ENTER]"
locale.main_quest_flame_lv103.say_51 = "³²Àº  ÆÄ±«¼ö"
locale.main_quest_flame_lv103.say_52 = "³» ºÎÇÏ°¡ ¾ß¸¶Ãµ(6091)À» »ó´ëÇÏ±â´Â ¾î·Á¿ì³ª, ¼û¾î¼­ Ã´ÈÄ¸¦ ÇÔ¿¡´Â ¹®Á¦°¡ ¾ø´Ù³×.[ENTER]¾Æ¹«¸® ³»°¡ ´Ä¾ú´Ù ÇÏ´õ¶óµµ, ³ª¸¦ ¼ÓÀÌ·Á µå´Â °Õ°¡?[ENTER]È­¸¶¼®(8057)À» °ÝÆÄÇÏ¿©¾ß ´ÙÀ½ Ã¥·«À» ¼öÇàÇÒ ¼ö ÀÖÀ¸´Ï ¾î¼­ °ÝÆÄÇÏ°í µ¹¾Æ¿À°Ô³ª.[ENTER]"
locale.main_quest_flame_lv103.say_53 = "Àû·æ¼º(zone1)¿¡ ÀÖ´Â È­¸¶¼®(8057)À» ¸ðµÎ °ÝÆÄÇÏ¿´´Ù.[ENTER]¾àÈ¯(20377)¿¡°Ô ÀüÇÏµµ·Ï ÇÏÀÚ."
locale.main_quest_flame_lv103.say_54 = "È­¸¶¼®(8057)À» ¸ðµÎ °ÝÆÄÇÏ¿´´Ù´Â º¸°í¸¦ ¹Þ¾Ò³×.[ENTER]ÀÚ³×°¡ ¿Ã °ÍÀÌ¶ó´Â °Íµµ ¾Ë°í ÀÖ¾ú°í ¸»ÀÌ¾ß.[ENTER]°í»ýÇÏ¿´³×. ´ÙÀ½ Ã¥·«Àº ÀÚ³×µµ ´«Ä¡°¡ ÀÖÀ¸´Ï ¾Ë°ÍÀÌ³×.[ENTER]¹Ù·Î ¿°¿Õ ¾ß¸¶Ãµ(6091)ÀÇ °ÝÆÄÀÌ³×.[ENTER]ÁØºñ¿¡ ½Ã°£ÀÌ °É¸®±âµµÇÏ´Ï, ³ªÁß¿¡ ³»°¡ ºÎ¸£°Åµç Áö±Ý °Ç³»¾î ÁÙ[ENTER]Á¤È­ÀÇ ¾×µµ ÇÔ²² Ã¬°Ü ¿Àµµ·Ï ÇÏ°Ô³ª.[ENTER]"

locale.main_quest_flame_lv104 = {}
locale.main_quest_flame_lv104.say_1 = "¾ß¸¶Ãµ(6091) Åä¹ú 1-2"
locale.main_quest_flame_lv104.say_2 = "¾àÈ¯(20377)ÀÌ ´ç½ÅÀ» ±ÞÇÏ°Ô Ã£°í ÀÖ½À´Ï´Ù.[ENTER]¾àÈ¯(20377)¿¡°Ô ÀÚ¼¼ÇÑ ÀÌ¾ß±â¸¦ µé¾îº¸µµ·Ï ÇÏ½Ê½Ã¿À.[ENTER]"
locale.main_quest_flame_lv104.say_3 = "¿À·¡ ±â´Ù·È³×.[ENTER]ÀÚ³×°¡ È­¸¶¼®(8057)À» °ÝÆÄÇÏ¿´±â ¶§¹®¿¡ ¾ß¸¶Ãµ(6091)ÀÇ °ÝÆÄµµ ÀÌÁ¦ °¡´ÉÇØ Á³´Ù³×.[ENTER]ÀÌÁ¦ ±× ½Ã±â°¡ ¿Â°ÍÀÌ¾ß.[ENTER]ÃÊ¸¶´ÜÀÇ À½¸ð¸¦ ÀúÁöÇÏ°í ¿°¿Õ ¾ß¸¶Ãµ(6091)ÀÇ °ÝÆÄ¸¦ À§ÇØ ¾ÆÁ÷±îÁö ¸¹Àº Èñ»ýÀÌ ÀÖ¾úÀ¸´Ï[ENTER]ÀÌ¹ø¿¡´Â ±âÇÊÄÚ ¿Ï¼öÇØ ³»¾î¾ß¸¸ ÇÑ´Ù³×.[ENTER]"
locale.main_quest_flame_lv104.say_4 = "ÀÚ³× ÀÏÀü¿¡ ÁÖ¾ú´ø Á¤¾×À» °¡Áö°í ÀÖÀ» °ÍÀÌ³×.[ENTER]ºÎÇÏµé¿¡°Ô´Â Á¤Á¦ÇÏ¿© ÁÖ¾úÁö¸¸ ÀÚ³×ÀÇ °ÍÀº ¿ÂÀüÇÑ °ÍÀÌ±â¿¡ È¿·ÂÀÌ ¾î¸¶¾î¸¶ÇÏÁö.[ENTER]±×°ÍÀ» º¹¿ëÇÏ°í ¾ß¸¶Ãµ(6091)À» °ÝÆÄÇØÁÖ°Ô³ª.[ENTER]¾Æ¹«¸® ¿ÂÀüÇÑ °ÍÀÌ¶óµµ 1½Ã°£ÀÌ»ó »ç¿ëÇÏ±â ¾î·Á¿ì´Ï Àû´çÇÑ ½Ã±â¿¡ Àß º¹¿ëÇÏ°Ô³ª.[ENTER]±×·¸Áö ¾ÊÀ¸¸é ¾ß¸¶Ãµ(6091)À» »ó´ëÇÒ¶§ Å« ¾Ö·Î»çÇ×ÀÌ ²ÉÇÊ°ÍÀÌ³×.[ENTER]"
locale.main_quest_flame_lv104.say_5 = "³×. ¾Ë°Ú½À´Ï´Ù.[ENTER]"
locale.main_quest_flame_lv104.say_6 = "Àû·æ¼º(zone1)¿¡¼­ ¿°¿Õ ¾ß¸¶Ãµ(6091)À» °ÝÆÄÇÏÀÚ."
locale.main_quest_flame_lv104.say_7 = "¿°¿Õ ¾ß¸¶Ãµ(6091)À» °ÝÆÄÇÏ¶ó."
locale.main_quest_flame_lv104.say_8 = "Àû·æ¼º(zone1)¿¡ µ¹ÀÔÇÏ¿© ¿°¿Õ ¾ß¸¶Ãµ(6091)À» °ÝÆÄÇÏÀÚ.[ENTER]"
locale.main_quest_flame_lv104.say_9 = "¡ØÁö±ÞµÈ ÅëÇàÁõÀº Àç¹ß±Þ µÇÁö ¾Ê½À´Ï´Ù.[ENTER]"
locale.main_quest_flame_lv104.say_10 = "¿°¿Õ ¾ß¸¶Ãµ(6091)ÀÌ ½¬¿î »ó´ë°¡ ¾Æ´ÏÁö.[ENTER]±×·¯³ª ¿ì¸®°¡ ÃÊ¸¶´ÜÀÇ À½¸ð¸¦ ÀúÁöÇÏ°í ºÒÇÊ¿äÇÑ »ì»óÀ» ¾ø¿¡±â À§ÇØ¼­´Â[ENTER]²À °ÝÆÄÇÏ¿©¾ß¸¸ ÇÑ´Ù³×.[ENTER]´Ù½Ã±Ý ÈûÀ» ³»¾î ´Ù³à¿Í ÁÖ°Ô³ª.[ENTER]"
locale.main_quest_flame_lv104.say_11 = "ÀÌÁ¦ Á¶±Ý¸¸ ´õÇÏ¸é Àû·æÀÇ ºÀÀÎÀ» Ç® ¼ö ÀÖ¾ú´Âµ¥¡¦[ENTER]³ª¸¦ ¹æÇØÇÏ´Ù´Ï¡¦[ENTER]Àû·æµµ ³¯¶Ù°í ½Í¾îÇÏ¿© ³ª¸¦ ±×´ë·Î Á×°ÔÇÏÁö ¾ÊÀ» °ÍÀÌ´Ù.[ENTER]³ª´Â ºÐ¸íÈ÷ ´Ù½Ã µ¹¾Æ ¿Ã °ÍÀÌ´Ù.[ENTER]"
locale.main_quest_flame_lv104.say_12 = "Àû·æ¼º(zone1)ÀÇ ¿°¿Õ ¾ß¸¶Ãµ(6091)À» °ÝÆÄÇÏ¿´´Ù.[ENTER]¾àÈ¯(20377)¿¡°Ô ÀüÇÏµµ·Ï ÇÏÀÚ."
locale.main_quest_flame_lv104.say_13 = "¾Ç·æ±ºµµÀÇÀÇ ¾àÈ¯(20377)À» Ã£¾Æ ¸»À» °Éµµ·Ï ÇÏÀÚ.[ENTER]"
locale.main_quest_flame_lv104.say_14 = "´ë´ÜÇØ. ¾ÆÁÖ ´ë´ÜÇØ.[ENTER]ÀÚ³×°¡ ¹ü»óÄ¡ ¾ÊÀº ÀÎ¹°ÀÎ °ÍÀº ¾Ë¾ÒÁö¸¸, ÀÌ·¸°Ô ¾ß¸¶Ãµ(6091)±îÁö °ÝÆÄÇÏ¿´À» ÁÙÀÌ¾ß.[ENTER]°í»ýÇÏ¿´³× °¡º¸°Ô³ª.[ENTER]"
locale.main_quest_flame_lv104.say_15 = "¾àÈ¯(20377)´Ô ±×·±µ¥ ¿°¿Õ ¾ß¸¶Ãµ(6091)ÀÌ Á×À¸¸é¼­, ÀÌ·± ¸»À» ÇÏ¿´½À´Ï´Ù.[ENTER]Àû·æÀÌ ³¯¶Ù°í ½Í¾îÇÏ¿© ³ª¸¦ ±×´ë·Î Á×°ÔÇÏÁö ¾ÊÀ» °ÍÀÌ°í, ºÐ¸í ³ª´Â ´Ù½Ã µ¹¾Æ ¿Ã °ÍÀÌ´Ù. ¶ó°í Çß½À´Ï´Ù.[ENTER]¾Æ¹«·¡µµ ÀÌ°Ô ³¡ÀÌ ¾Æ´Ò °ÍÀ¸·Î º¸ÀÔ´Ï´Ù.[ENTER]"
locale.main_quest_flame_lv104.say_16 = "¾Ë°Ú³×.[ENTER]ÀÌÁ¦ ³¡ÀÏ ÁÙ ¾Ë¾Ò´Âµ¥ ±×°Ô ¾Æ´Ï¾ú±º ±×·¡.[ENTER]³»°¡ ´õ ¾Ë¾Æº» ÈÄ¿¡ ºÎ¸£µµ·Ï ÇÏ°Ú³×.[ENTER]"
locale.main_quest_flame_lv104.say_17 = "À½¸ðÀÇ ÀúÁö1-1"
locale.main_quest_flame_lv104.say_18 = "¾î¼­¿À°Ô.[ENTER]ÀÚ³×°¡ ¾ß¸¶Ãµ(6091)À» Ã³Ä¡ÇÏ°í ±× ³à¼®ÀÌ ³²±ä ¸»À» µû¶ó ´Ù¾çÇÏ°Ô Á¶»ç¸¦ ÇØ º¸¾Ò³×.[ENTER]Ã´ÈÄ¸¦ º¸³»¾î È®ÀÎµµ ÇÏ¿´°í ¸»ÀÌ¾ß.[ENTER]ÀÚ³× ¸»Ã³·³ ¾ß¸¶Ãµ(6091)Àº ºÎÈ°ÇÏ¿© ÀÖ¾ú³×.[ENTER]°Å±â´Ù°¡ Àû·æ¼º(zone1)¿¡¼­ »Õ¾îÀú³ª¿À´Â Å¹±â¿Í ±«¼ºÀÌ ´õ ½ÉÇØÁ³´Ù³×.[ENTER]"
locale.main_quest_flame_lv104.say_19 = "¾Æ¹«·¡µµ ¿°¿Õ ¾ß¸¶Ãµ(6091)À» ´Ù½Ã Á¦°ÅÇÏ¸é¼­ ±ÝÁ¦¸¦ °¡ÇÏ¿©¾ß¸¸ ¾È½ÉÀ» ÇÒ ¼ö ÀÖÀ» °ÍÀ¸·Î º¸ÀÌ³×.[ENTER]´õ °­·ÂÇØÁø ³à¼®À» »ó´ëÇÏÀÚ¸é ÀûÁö¾ÊÀº Èñ»ýÀÌ µû¸¦ °ÍÀ¸·Î º¸ÀÌ³×.[ENTER]¼ö°í½º·´°ÚÁö¸¸ ÀÌºÎºÐ¿¡ ´ëÇØ¼­´Â ÇÐÀÚ(20380)¿¡°Ôµµ ÀÏ·¯ µÎ¾úÀ¸´Ï, ÇÐÀÚ(20380)¿¡°Ô °¡¼­ ÀÚ¼¼ÇÑ ¹æ¾ÈÀ» µé¾îº¸µµ·Ï ÇÏ°Ô³ª.[ENTER]"
locale.main_quest_flame_lv104.say_20 = "ÇÐÀÚ(20380)¿¡°Ô °¡¼­ Ã¥·«À» µèµµ·Ï ÇÏÀÚ."
locale.main_quest_flame_lv104.say_21 = "ÇÐÀÚ(20380)¿¡°Ô °¡ÀÚ."
locale.main_quest_flame_lv104.say_22 = "ÇÐÀÚ(20380)¿¡°Ô °¡¼­ Ã¥·«À» µé¾îº¸ÀÚ.[ENTER]"
locale.main_quest_flame_lv104.say_23 = "ÇÐÀÚ(20380)¿¡°Ô °¡º¸¶ó´Ï±î ¿Ö ´Ù½Ã¿À´Â °Ô¾ß¡¦[ENTER]¾î¼­ °¡º¸°Ô³ª.[ENTER]"
locale.main_quest_flame_lv104.say_24 = "¾î¼­¿À°Ô. ±â´Ù¸®°í ÀÖ¾ú´Ù³×.[ENTER]¾ó¸¶Àü¿¡´Â ¿°¿Õ ¾ß¸¶Ãµ(6091)À» ¹°¸®ÃÆ´ÙÁö?[ENTER]¹ü»óÄ¡ ¾ÊÀº ±â¿îÀ» Ç°°í ÀÖ¾î, Àß ÇØ³»¸®¶ó »ý°¢ÇßÁö¸¸ ´ë´ÜÇÏ³× ±×·Á.[ENTER]ÀÏ´Ü Ã¥·«À» ¼³¸íÇØ ÁÖµµ·Ï ÇÏ°Ú³×.[ENTER]"
locale.main_quest_flame_lv104.say_25 = "¾ß¸¶Ãµ(6091)ÀÌ Àû·æÀÇ ±â¿îÀ¸·Î µÇ»ì¾Æ ³­ °ÍÀº »ç½ÇÀÌ³×.[ENTER]±× ÈûÀ» Â÷´ÜÇÏ±â¿¡´Â Àû·æ¿¡°Ô Á÷Á¢ÀûÀÎ ±ÝÁ¦¸¦ °¡ÇÏ¿©¾ß È¿À²ÀûÀÏ °ÍÀÌ³×.[ENTER]±×·¸±â¶§¹®¿¡ ±ÝÁ¦¸¦ °¡ÇÒ ¹æÃ¥À» ±¸ÇÏ¿´À¸´Ï ÀÚ³×°¡ ³ª¸¦ µµ¿Í ÀÌÇàÀ» ÇØÁÖ¸é µÈ´Ù³×.[ENTER]"
locale.main_quest_flame_lv104.say_26 = "¾Ë°Ú½À´Ï´Ù. ±×·³ Á¦°¡ µµ¿ïÀÏÀº ¾î¶² °ÍÀÔ´Ï±î?[ENTER]"
locale.main_quest_flame_lv104.say_27 = "ÀÏÀü¿¡ À½¾ç¿ÀÇàÀÇ ÀÌÄ¡¸¦ °£´ÜÈ÷ ¾Ë·ÁÁÖ¸é¼­ À½°ú ¾ç¿¡ ´ëÇØ¼­ ¾Ë°Ô µÇ¾úÀ» °ÍÀÌ³×.[ENTER]±×·±µ¥ ¾î´À ¼ºÁúÀÌµç ±ØÀ» ´Þ¼ºÇÑ ÀÌÈÄ¿¡¼­´Â ±× ÀÌ»ó ÈûÀ» ¹ßÈÖÇÏ´Â °ÍÀÌ ¾Æ´Ï¶ó ÅëÁ¦¸¦ ÇÒ ¼ö ¾ø°ÔµÈ´Ù³×.[ENTER]±×·¡¼­ »ý°¢ÇÑ ¹æ¾ÈÀÌ ¾çÀ» ¾çÀ¸·Î Á¦ÀÚÇÏ´Â ¹æÃ¥À» »õ¿ü´Ù³×.[ENTER]ÀÌ ¹æÃ¥À» ÀÌÇàÇÏ±â À§ÇØ¼­´Â ¾çÀÇ ¼ºÁúÀÌ °­ÇÑ ÀÏÁ¾ÀÇ ÇÙÀ» ±¸ÇÏ¿©¾ß ÇÑ´Ù³×.[ENTER]¾Ë¾Æº» °á°ú ¾çÁúÀÇ ÇÙÀ» ±¸ÇÏ±â À§ÇØ¼­´Â È­¸¶(6005),¿°¸¶(6007),È­±«(6006),¿°±«,ÃÊ¿­±«(6009) ÀÌ ¸¶¹°µéÀ» Ã³Ä¡ÇÏ°í ÇÙÀ» ±¸ÇØ ¿Í¾ß ÇÒ °ÍÀÌ³×.[ENTER]±× ÀÏÀ» ÇÒ »ç¶÷Àº ÀÚ³× »ÓÀÌ´Ï ºÎµð ÇÙ5°³Âë ±¸ÇØ´Ù ÁÖ°Ô.[ENTER]"
locale.main_quest_flame_lv104.say_28 = "±ÝÁ¦¿¡ ÇÊ¿äÇÑ Àç·á¸¦ ±¸ÇÏÀÚ."
locale.main_quest_flame_lv104.say_29 = "±ÝÁ¦¿¡ ÇÊ¿äÇÑ Àç·á¸¦ ±¸ÇØ¼­ ÇÐÀÚ(20380)¿¡°Ô ÀüÇØÁÖÀÚ..[ENTER]"
locale.main_quest_flame_lv104.say_30 = "¿À~ÀÌÁ¤µµ¸é ÃæºÐÇÏ±º.[ENTER]ÀÌÁ¦ %d°³¸¸ ´õ ±¸ÇØ¿À¸é µÇ°Ú±º ±×·¡.[ENTER]Á»´õ Èû³»°Ô³ª.[ENTER]"
locale.main_quest_flame_lv104.say_31 = "ÀÌÁ¦ ÇÙÀº ¸ðµÎ ¸ð¾Ò±º ±×·¡.[ENTER]ÇÏÁö¸¸ ÀÌ°Í ¸»°íµµ ÇÊ¿äÇÑ Àç·á´Â ´õ ÀÖ´Ù³×.[ENTER]ÀÏ´Ü ÀÌ ÇÙµéÀ» Á¤Á¦ÇÑ ÈÄ¿¡ ±âº°À» ³ÖÀ» ÅÍÀÌ´Ï ½¬°í ÀÖ°Ô³ª.[ENTER]"
locale.main_quest_flame_lv104.say_32 = "À½¡¦ÀÚ³×°¡ °í»ýÇÏ¿© ±¸ÇØ¿ÔÁö¸¸, ÀÌ ÇÙÀº ³Ê¹« ¿­±â°¡ ³·¾Æ »ç¿ëÇÏ±â ¾î·Á¿ï °Í °°±º±×·¡.[ENTER]´Ù¸¥°É ±¸ÇØ´Ù ÁÖ°Ú³ª?[ENTER]"
locale.main_quest_flame_lv104.say_33 = "À½¸ðÀÇ ÀúÁö1-2"
locale.main_quest_flame_lv104.say_34 = "ÇÐÀÚ(20380)°¡ ´ç½ÅÀ» ±ÞÇÏ°Ô Ã£°í ÀÖ½À´Ï´Ù.[ENTER]ÇÐÀÚ(20380)¿¡°Ô ÀÚ¼¼ÇÑ ÀÌ¾ß±â¸¦ µé¾îº¸µµ·Ï ÇÏ½Ê½Ã¿À.[ENTER]"
locale.main_quest_flame_lv104.say_35 = "¶ß°Å¿î ÇÙ(31082)À» ±¸ÇÑ ÀÌÈÄ Á¤Á¦¿¡ µé¾î°¡ ÀÖ´Â »óÅÂ¶ó³×.[ENTER]³Ê¹« ¶ß°Å¿ö¼­ °ø·ÂÀÌ ¾ø´Â ³ª°°Àº ÇÐÀÚ(20380)³ªºÎ·©ÀÌ´Â ¿©°£ °í»ýÀÌ ¾Æ´Ï¶ó³×.[ENTER]±× ´ö¿¡ ¼Õ¿¡ È­»óµµ ÀÔ°í ¸»ÀÌ¾ß.[ENTER]»óÈ²ÀÌ »óÈ²ÀÌ´Ï ¸¸Å­ ´ÙÀ½ Àç·á¸¦ ¾Ë·ÁÁÖ°Ú³×.[ENTER]ÀÚ³×°¡ ÀÌ¹ø¿¡ °¡Á®´Ù ÁÙ °ÍÀº ÇÇµ¶¾×(50814)ÀÌ¶ó³×.[ENTER]"
locale.main_quest_flame_lv104.say_36 = "ÇÇµ¶¾×(50814)Àº Á¤Á¦ÇÑ ÇÙÀ» À§¿¡ ¿Ã¸®°í Áõ±â·Î ³ì¿© ³»¾ßÇÏ´Âµ¥ ¾²ÀÎ´Ù³×.[ENTER]±×°Ô ¿Ï¼ºÀÌ µÇ°í ³ª¸é, ±ÝÁ¦¸¦ ½ÃÀÛ ÇÒ ¼ö ÀÖÀ» °ÍÀÌ³×.[ENTER]¹æ¹ýÀº ³ªÁß¿¡ ¾àÈ¯(20377)´Ô²² µèµµ·Ï ÇÏ°í, ÇÇµ¶¾×(50814)Àº Á» ¸¹ÀÌ ÇÊ¿äÇÏ´Ï 100°³Á¤µµ ±¸ÇØ´Ù ÁÖ°Ô³ª.[ENTER]±×·³ ±â´Ù¸®°í ÀÖ°Ú³×.[ENTER]"
locale.main_quest_flame_lv104.say_37 = "ÇÇµ¶¾×(50814)À» ±¸ÇØ ÇÐÀÚ(20380)¿¡°Ô ÀüÇØÁÖÀÚ."
locale.main_quest_flame_lv104.say_38 = "ÇÇµ¶¾×(50814)À» ±¸ÇØ ÇÐÀÚ(20380)¿¡°Ô ÀüÇØÁÖÀÚ.[ENTER]"
locale.main_quest_flame_lv104.say_39 = "°¡Á®¿Ô±º ±×·¡.[ENTER]ÀÌÁ¦ Áõ±â·Î ³ì¿©³»¸é °ÅÀÇ ¿Ï¼ºÀÌ µÈ´Ù³×.[ENTER]°í»ýÇÏ¿´³×.[ENTER]"
locale.main_quest_flame_lv104.say_40 = "°ÅÀÇ ¿Ï¼ºÀÌ¶ó´¢?[ENTER]¾ÆÁ÷ ³²Àº °ÍÀÔ´Ï±î?[ENTER]"
locale.main_quest_flame_lv104.say_41 = "¸¶Áö¸·ÀÌ ³²±ä ÇÏ¿´³×.[ENTER]ÀÏ´Ü ³ì¿©³»´Âµ¥ ½ÅÁßÀ» ±âÇØ¾ßÇÏ´Ï ³ªÁß¿¡ ´Ù½Ã ºÎ¸£µµ·Ï ÇÏ°Ú³×.[ENTER]"
locale.main_quest_flame_lv104.say_42 = "ÀÚ³× ¼³¸¶ ¼ýÀÚ¸¦ ÇØ¾Æ¸®Áö ¸øÇÏ´Â °ÍÀÎ°¡?[ENTER]¾Æ¹«¸® ¹«ÀÎÀÌ¶óÁö¸¸ 100±îÁö´Â ÇØ¾Æ·Á¾ßÁö¡¦ÂìÂì[ENTER]¾î¼­°¡¼­ ³ª¸ÓÁö ÇÇµ¶¾×(50814)±îÁö ±¸ÇØ ´Ù½Ã¿À°Ô³ª.[ENTER]"
locale.main_quest_flame_lv104.say_43 = "ÇÇµ¶¾×(50814)À» ¸ðµÎ ±¸ÇÏ¿´´Ù. ÇÐÀÚ(20380)¿¡°Ô ÀüÇØÁÖÀÚ."
locale.main_quest_flame_lv104.say_44 = "¾Ç·æ±ºµµÀÇÀÇ ÇÐÀÚ(20380)¸¦ Ã£¾Æ ¸»À» °Éµµ·Ï ÇÏÀÚ.[ENTER]"
locale.main_quest_flame_lv104.say_45 = "À½¸ðÀÇ ÀúÁö1-3"
locale.main_quest_flame_lv104.say_46 = "ÀÚ³×°¡ ³ª¸¦ µµ¿ÍÁØ ´öºÐ¿¡ ÁØºñ°¡ ÂøÂø µÇ¾î°¡°í ÀÖ³×.[ENTER]ÀÌÁ¦ ¸·¹ÙÁö·Î ´Þ¸®°í ÀÖÀ¸´Ï Á¶±Ý¸¸ ´õ Èû³»ÁÖ°Ô³ª.[ENTER]¸¶Áö¸· ´Ü°èÀÌ³×.[ENTER]"
locale.main_quest_flame_lv104.say_47 = "ÀÌÁ¦ ¸¶¹«¸®´Â ÀÌ Á¤Á¦¾×À» ¿ÂÀüÇÏ°Ô ´ã¾ÆÁÙ ¿ë±â¸¦ ¸¸µå´Â °ÍÀÌ³×.[ENTER]Áö±Ý ¹°ÁúÀº ¾çÀÇ ±â¿îÀÌ ³ÑÃÄÈê·¯ ¸÷½Ã »óÅÂ°¡ ºÒ¾ÈÁ¤ÇÑ »óÅÂ¶ó³×.[ENTER]±× ¸¸Å­ È¿°ú´Â º¸ÁõÀÌÁö¸¸ ¸»ÀÌ¾ß.[ENTER]°¢¼³ÇÏ°í ÀÚ³× ÀÏÀü¿¡ ÃÊ¸¶´ÜÀ» ÃßÀûÇÏ¸é¼­ ¹üÀÍÁ·À» »ó´ëÇÑ ÀûÀÌ ÀÖÀ» °ÍÀÌ³×.[ENTER]¹üÀÍÁ· Áß¿¡¼­µµ ¹üÀÍ Á·Àå(3291)¿¡°Ô¼­ °¡Á×À» ±¸ÇØ´Ù ÁÖ°Ô³ª.[ENTER]°ã°ãÀÌ µ¿¿©¸Å¾î¾ß ÇÏ´Ï, 5Àå¸¸ ±¸ÇØ´Ù ÁÖ°Ô³ª.[ENTER]"
locale.main_quest_flame_lv104.say_48 = "Áú ÁÁÀº °¡Á×À» ±¸ÇØ ÇÐÀÚ(20380)¿¡°Ô ÀüÇØÁÖÀÚ."
locale.main_quest_flame_lv104.say_49 = "¹üÀÍÁ·ÀÇ °¡Á×(31024)À» ±¸ÇØ ÇÐÀÚ(20380)¿¡°Ô ÀüÇØÁÖÀÚ.[ENTER]"
locale.main_quest_flame_lv104.say_50 = "ÀÌÁ¦ ¸¶¹«¸®ÀÎµ¥ ºÐ¹ßÇØ¼­ ¸ðµÎ ±¸ÇØ´Ù ÁÖ°Ô.[ENTER]ÃÊ¸¶´Üµµ Àû·æµµ ¸ðµÎ ÀúÁöÇØ¾ß¸¸ÇÏ³×.[ENTER]±×·³ ±â´Ù¸®°í ÀÖ°Ú³×.[ENTER]"
locale.main_quest_flame_lv104.say_51 = "¿À~ÀÌÁ¦ ¸ðµç Àç·á°¡ ±¸ÇØÁ³±¸¸¸.[ENTER]Àá½Ã¸¸ ±â´Ù¸®°Ô.[ENTER]°ð Ã³¸®ÇÏ¿© ÁÙÅÍÀÌ´Ï ³ªÁß¿¡ ¾àÈ¯(20377)´ÔÀÌ ºÎ¸£½Ã°Åµç °¡Áö°í °¡°Ô³ª.[ENTER]"
locale.main_quest_flame_lv104.say_52 = "°¡Á×À» ¸ðµÎ ±¸ÇÏ¿´´Ù. ÇÐÀÚ(20380)¿¡°Ô ÀüÇØÁÖÀÚ."

locale.main_quest_flame_lv105 = {}
locale.main_quest_flame_lv105.say_1 = "°ÝÀüÀÇ ½ÃÀÛ"
locale.main_quest_flame_lv105.say_2 = "¾àÈ¯(20377)ÀÌ ´ç½ÅÀ» ±ÞÇÏ°Ô Ã£°í ÀÖ½À´Ï´Ù.[ENTER]¾àÈ¯(20377)¿¡°Ô ÀÚ¼¼ÇÑ ÀÌ¾ß±â¸¦ µé¾îº¸µµ·Ï ÇÏ½Ê½Ã¿À.[ENTER]"
locale.main_quest_flame_lv105.say_3 = "¿À·»¸¸ÀÌ³×.[ENTER]ÇÐÀÚ(20380)¸¦ µµ¿Í ±ÝÁ¦¿¡ ÇÊ¿äÇÑ ¹°ÁúÀ» ¸¸µé¾ú´Ù°í µé¾ú³×.[ENTER]±ÝÁ¦ ÁÖ¸Ó´Ï(31083)¸¦ °¡Á® ¿Ô´Â°¡?[ENTER]"
locale.main_quest_flame_lv105.say_4 = "¿©±â ÀÖ½À´Ï´Ù. ÃÑ 3°³ÀÔ´Ï´Ù.[ENTER]"
locale.main_quest_flame_lv105.say_5 = "±ÝÁ¦ ÁÖ¸Ó´Ï(31083)ÀÇ »ç¿ë¹ýÀº ³ªÁß¿¡ ¾Ë·ÁÁÖ°Ú³×.[ENTER]ÀÏ´Ü ÀÚ³×°¡ ÇØÁÖ¾î¾ß ÇÒ ÀÏÀ» ¾Ë·ÁÁÖµµ·Ï ÇÏÁö.[ENTER]±ÝÁ¦ ÁÖ¸Ó´Ï(31083)°¡ ¿Ï¼ºÀÌ µÇ¾úÁö¸¸, ÀÚ³×µµ ¾Ë´Ù½ÃÇÇ Àû·æÀÇ ¿µÇâÀ¸·Î ¿°¿Õ ¾ß¸¶Ãµ(6091)±îÁö ¸ðµÎ µÇ»ì¾Æ³­ »óÅÂÀÌ³×.[ENTER]¹«Ã´ÀÌ³ª ¾Ö·Î»çÇ×ÀÌ ²ÉÇÇ´Â »óÈ²ÀÌÁö.[ENTER]ÀÌ¹ø¿¡´Â ³» Á÷ÇÒÀÇ ¸ê¸¶±ºÀÇ 5ÇÒÀ» ÀÛÀü¿¡ ÅõÀÔÇÒ °ÍÀÌ³×.[ENTER]"
locale.main_quest_flame_lv105.say_6 = "Àû·æ¼º(zone1)¿¡ ÀÖ´Â ¸¶¹°À» ³» º´»ç·Î ¾î´ÀÁ¤µµ Á¤¸® ÇÒ ¼ö°¡ ÀÖ´Ù³×.[ENTER]±×·¯³ª ¼ö³úºÎ ¸¶¹°ºÎÅÍ ¿°¿Õ ¾ß¸¶Ãµ(6091)±îÁö´Â ¾ÆÁ÷ ³» º´»çµéÀÌ °¨´çÇÏ±â¿¡´Â ³Ê¹«³ª [ENTER]Å« Àåº®°úµµ °°Áö.[ENTER]ÀÏ´Ü ¼ö³úºÎ ¸¶¹°ÀÎ È­¸¶(6005),¿°¸¶(6007),È­±«(6006),¿°±«,ÃÊ¿­±«(6009)¸¦ 10¸¶¸®¾¿ Ã³¸®ÇÏ°í µ¹¾Æ¿Í ÁÖ°Ô³ª.[ENTER]"
locale.main_quest_flame_lv105.say_7 = "³×. ¾Ë°Ú½À´Ï´Ù.[ENTER]"
locale.main_quest_flame_lv105.say_8 = "Àû·æ¼º(zone1)¿¡ µ¹ÀÔÇÏ¿© ¼ö³úºÎ ¸¶¹°À» Á¦°ÅÇÏÀÚ."
locale.main_quest_flame_lv105.say_9 = "¼ö³úºÎ¸¦ °ÝÆÄÇÏÀÚ."
locale.main_quest_flame_lv105.say_10 = "Àû·æ¼º(zone1)¿¡ µ¹ÀÔÇÏ¿©, ¼ö³úºÎ ¸¶¹°À» Ã³Ä¡ÇÏÀÚ.[ENTER]"
locale.main_quest_flame_lv105.say_11 = "¡ØÁö±ÞµÈ ÅëÇàÁõÀº Àç¹ß±Þ µÇÁö ¾Ê½À´Ï´Ù.[ENTER]"
locale.main_quest_flame_lv105.say_12 = "¾ÆÁ÷ ¼ö³úºÎ¸¦ ÃæºÐÈ÷ °ÝÆÄÇÏÁö ¸øÇÑ °Í °°±º ±×·¡.[ENTER]¼ö³úºÎ¸¦ °ÝÆÄÇÏÁö ¸øÇÏ¸é Àû·æÀÇ ±ÝÁ¦°í ÃÊ¸¶´ÜÀÌ°í ¸ðµÎ ¾îÂîÇÒ ¹æµµ°¡ ¾ø¾îÁø´Ù³×.[ENTER]¾î¼­ ´Ù³à¿À°Ô.[ENTER]"
locale.main_quest_flame_lv105.say_13 = "Àû·æ¼º(zone1)ÀÇ ¼ö³úºÎ ¸¶¹°À» ¸ðµÎ Ã³Ä¡ÇÏ¿´´Ù.[ENTER]¾àÈ¯(20377)¿¡°Ô º¸°íÇÏµµ·Ï ÇÏÀÚ."
locale.main_quest_flame_lv105.say_14 = "¾Ç·æ±ºµµÀÇÀÇ ¾àÈ¯(20377)À» Ã£¾Æ ¸»À» °Éµµ·Ï ÇÏÀÚ.[ENTER]"
locale.main_quest_flame_lv105.say_15 = "ÀÌÁ¦ ¿ì¸®°¡ Àû·æ¼º(zone1)¿¡ µ¹ÀÔÇÏ¿© ÃÊ¸¶´ÜÀÇ À½¸ð¸¦ ÀúÁöÇÒ ¼ö ÀÖ°Ú±º ±×·¡.[ENTER]ÀÌÁ¦ Àû·æÀ» ±ÝÁ¦ÇÏ´Â °Í¸¸ ³²¾Ò±º ±×·¡.[ENTER]°í»ýÇÏ¿´³×.[ENTER]"
locale.main_quest_flame_lv105.say_16 = "Àº¿ø"
locale.main_quest_flame_lv105.say_17 = "ÀÚ³×°¡ ¼ö³úºÎ¸¦ °ÝÆÄÇÏ°í ÀÏÀü¿¡ ¿°¿Õ ¾ß¸¶Ãµ(6091)À» Ã³Ä¡Çß¾ú´øÁö¶ó, ºÎÈ°ÇÑ ¾ß¸¶Ãµ(6091)ÀÌ »ó´çÈ÷ ºÐÇÑ°¡ º¸´õ±º.[ENTER]±«¼ºÀÌ Àû·æ¼º(zone1)¿¡ Â¼··Â¼·· ÇÏ´Ù´Â º¸°í°¡ µé¾î ¿Ô³×.[ENTER]¹¹ ¾ß¸¶Ãµ(6091)Àº ÀÚ³×¿¡°Ô ¼÷ÀûÀÌ µÈ ¼ÀÀÌ´Ï ±×·²¸¸µµÇÏÁö.[ENTER]±×·¸´Ù°í Å©°Ô ´Þ¸®ÁöÁö´Â ¾Ê°ÚÁö¸¸ ¸»ÀÌ¾ß.[ENTER]"
locale.main_quest_flame_lv105.say_18 = "ÀÌ¹ø¿¡ ÀÚ³×°¡ ÇØÁÙ ÀÏÀº ´«Ä¡°¡ ÀÖÀ¸¸é ¾Ë°ÚÁö¸¸, ¹Ù·Î ¿°¿Õ ¾ß¸¶Ãµ(6091)ÀÇ Ã³Ä¡ÀÌ³×.[ENTER]Àü¿¡µµ Ã³Ä¡ÇÑ ÀÌ·ÂÀÌ ÀÖÀ¸³ª, Àû·æ¿¡ ÀÇÇØ¼­ ´Ù½Ã ºÎÈ°ÇÏ¿´°í ÀÚ³×¿¡°Ô ¾Ó½ÉÀ» Ç°°í ÀÖÀ¸´Ï[ENTER]ÁÖÀÇÇÏ°Ô³ª.[ENTER]¾Æ¹«¸® ½¬¿îÀÏ ÇØ³»¾ú´ø ÀÏµµ ¹æ½ÉÇÏ¸é ±×¸©Ä¡°Ô µÇ´Ï ¸í½ÉÇÏ°í ´Ù³à¿À°Ô.[ENTER]"
locale.main_quest_flame_lv105.say_19 = "Àû·æ¼º(zone1)¿¡¼­ ¿°¿Õ ¾ß¸¶Ãµ(6091)À» °ÝÆÄÇÏÀÚ."
locale.main_quest_flame_lv105.say_20 = "¿°¿Õ ¾ß¸¶Ãµ(6091)À» Ã³´ÜÇÏÀÚ."
locale.main_quest_flame_lv105.say_21 = "Àû·æ¼º(zone1)¿¡ µ¹ÀÔÇÏ¿©, ¿°¿Õ ¾ß¸¶Ãµ(6091)À» Ã³Ä¡ÇÏÀÚ.[ENTER]"
locale.main_quest_flame_lv105.say_22 = "¿°¿Õ ¾ß¸¶Ãµ(6091)ÀÌ ¹«¼­¿ü´ø °Õ°¡?[ENTER]¾î¼­°¡¼­ ¾ß¸¶Ãµ(6091)À» Ã³Ä¡ÇÏ°í ¿ÍÁÖ°Ô³ª.[ENTER]ÀÚ³×¶ó¸é ´ÉÈ÷ ÇØ³¾ ¼ö ÀÖÀ» °ÍÀÌ¾ß.[ENTER]"
locale.main_quest_flame_lv105.say_23 = "Àû·æ¼º(zone1)ÀÇ ¿°¿Õ ¾ß¸¶Ãµ(6091)À» °ÝÆÄÇÏ¿´´Ù.[ENTER]¾àÈ¯(20377)¿¡°Ô ÀüÇÏµµ·Ï ÇÏÀÚ."
locale.main_quest_flame_lv105.say_24 = "¿ª½Ã!!¿ª½Ã ´ë´ÜÇØ.[ENTER]°í»ýÇÏ¿´³×.[ENTER]ºÎÇÏ·ÎºÎÅÍ º¸°í¸¦ Á»Àü¿¡ ¹Þ¾Ò´Ù³×.[ENTER]ÀÌÁ¦ Àû·æ¿¡°Ô Á÷Á¢ÀûÀÎ ±ÝÁ¦¸¦ °¡ÇÏ±â¸¸ÇÏ¸é ¾î´ÀÁ¤µµ ¸¶¹«¸®°¡ µÉ °Í °°±¸¸¸.[ENTER]º´»çµé¸¦ Á¤ºñÇÏ°í ´Ù½Ã ºÎ¸£µµ·Ï ÇÏ°Ú³×.[ENTER]"
locale.main_quest_flame_lv105.say_25 = "Àû·æÀÇ ±ÝÁ¦"
locale.main_quest_flame_lv105.say_26 = "µåµð¾î ¶§°¡ µÇ¾ú³×.[ENTER]Àû·æ¿¡°Ô ±ÝÁ¦¸¦ °¡ÇÏ°í ÃÊ¸¶´ÜÀÇ À½¸ð¸¦ ÀúÁö½ÃÅ³ ½Ã°£ÀÌ¸»ÀÌ¾ß.[ENTER]ÀÌÁ¦ ±ÝÁ¦ ÁÖ¸Ó´Ï(31083)ÀÇ »ç¿ë¹ý°ú ÇØ¾ßÇÒ Çàµ¿À» Áö½ÃÇÏµµ·Ï ÇÏ°Ú³×.[ENTER]"
locale.main_quest_flame_lv105.say_27 = "Àü¿¡ ³ª¿¡°Ô ÀüÇØÁØ ±ÝÁ¦ÁÖ¸Ó´Ï(31083)´Â ³» ºÎÇÏµéÀ» ÅëÇÏ¿© 2°³ÀÇ ÁöÁ¡¿¡ µÑ·¯¼­ ÁøÀ» ¼³Ä¡ÇØ µÎ¾ú´Ù³×.[ENTER]±ÝÁ¦ ÁÖ¸Ó´Ï(31083)¿¡ µé¾î ÀÖ´Â °ÍÀ¸·Î ÁøÀ» ¼³Ä¡ÇÒ ¼ö ÀÖ°í, »ç¿ë¿¡ µû¶ó °ÝÇÑ ±âÆøÁ¦°¡ µÇ±âµµÇÏÁö.[ENTER]ÀÚ³×°¡ ÇÒ ÀÏÀº ¹Ù·Î ±âÆøÀÌ ÀÏ¾î³¯ ¼ö ÀÖµµ·Ï ÇÏ´Â °ÍÀÌ³×.[ENTER]¿°¿Õ ¾ß¸¶Ãµ(6091)À» Ã³Ä¡ÇÑ °÷¿¡¼­ Àû·æÀÌ ºÀÀÎµÈ °÷ÀÌ º¸ÀÏ °ÍÀÌ³×.[ENTER]°Å±â¿¡ ÀÌ ±ÝÁ¦ ÁÖ¸Ó´Ï(31083)¸¦ °­ÇÏ°Ô ´øÁö°Ô.[ENTER]ÁÖ¸Ó´Ï¼ÓÀÌ ºÒ¾ÈÁ¤ÇÏ±â ¶§¹®¿¡ ±âÆøÀÌ ÀÏ¾î³¯ °ÍÀÌ°í ³» ºÎÇÏµéÀÌ ¼³Ä¡ÇÑ Áø½ÄÀ¸·Î ÀÎÇÏ¿©[ENTER]±ÝÁ¦°¡ ¹ßµ¿ ÇÒ °ÍÀÌ³×.[ENTER]"
locale.main_quest_flame_lv105.say_28 = "Àû·æ¼º(zone1)¿¡ µ¹ÀÔÇÏ¿© Àû·æ¿¡°Ô ±ÝÁ¦¸¦ °¡ÇÏÀÚ."
locale.main_quest_flame_lv105.say_29 = "³²Àº ±ÝÁ¦¼ö·®"
locale.main_quest_flame_lv105.say_30 = "Àû·æ¿¡°Ô ±ÝÁ¦¸¦ °¡ÇÏÀÚ."
locale.main_quest_flame_lv105.say_31 = "Àû·æ¼º(zone1)¿¡ µ¹ÀÔÇÏ¿©, Àû·æºÀÀÎ¼®¿¡ ±ÝÁ¦ÁÖ¸Ó´Ï(31083)¸¦ »ç¿ëÇÏÀÚ.[ENTER]"
locale.main_quest_flame_lv105.say_32 = "Àû·æ ºÀÀÎ¼®(20390): 1°³"
locale.main_quest_flame_lv105.say_33 = "Àû·æ È­±Ø"
locale.main_quest_flame_lv105.say_34 = "Å©¸£¸£¡¦°Ü..¿ì °Ü¿ì ÀÌÁ¤µµÀÎ°¡!! Å©ÇÏÇÏÇÏ[ENTER]¿¹±âÄ¡ ¸øÇÏ¿© ÈûÀ» ¸¹ÀÌ ÀÒ¾úÁö¸¸, ÀÌ Á¤µµ·Î´Â ³ª¿¡°Ô ±ÝÁ¦¸¦ °¡ÇÒ ¼ö ¾ø´Ù.[ENTER]³ªµµ ¿°¿Õ ¾ß¸¶Ãµ(6091)µµ ºÎÈ°ÇÏ°í ºÀÀÎÀ» Ç®°Ô µÉ °ÍÀÌ´Ù.[ENTER]Å©ÇÏÇÏÇÏÇÏ[ENTER]"
locale.main_quest_flame_lv105.say_35 = "Àû·æ¿¡°Ô ±ÝÁ¦¸¦ °¡ÇÏ·Á ½ÃµµÇÏ¿´À¸³ª, ½ÇÆÐÇÏ¿´´Ù.[ENTER]¾àÈ¯(20377)¿¡°Ô ÀüÇØÁÖÀÚ."
locale.main_quest_flame_lv105.say_36 = "¾î¼­¿À°Ô³ª. ´ëÃæ ÀüÇØ µè±â´Â ÇÏ¿´À¸³ª, ¼Ò»óÈ÷ ³ª¿¡°Ô º¸°íÇØ ÁÖ°Ô.[ENTER]"
locale.main_quest_flame_lv105.say_37 = "¿¹.[ENTER]Áø½ÄÀÇ ÀÛµ¿°ú ±âÆøÀº Á¤È®ÇÏ°Ô ÀÏ¾î ³µ½À´Ï´Ù.[ENTER]¹°·Ð ±ÝÁ¦°¡ ½Ãµµ°¡ µÇ¾ú°í ¸»ÀÔ´Ï´Ù.[ENTER]±×·¯³ª Àû·æÀÇ °Å´ëÇÑ Èû¿¡ ±ÝÁ¦´Â ½ÇÆÐÇÏ¿´½À´Ï´Ù.[ENTER]Àû·æÀº ¿°¿Õ ¾ß¸¶Ãµ(6091)µµ ºÎÈ°ÇÒ °ÍÀÌ°í ÀÚ½Åµµ ºÀÀÎÀ» Ç®°ÔµÉ °ÍÀÌ¶ó Çß½À´Ï´Ù.[ENTER]Çã³ª, ÀÌ¹ø ±ÝÁ¦ ½Ãµµ°¡ ¿¹»óÇÏÁö ¸øÇÏ¿´´ÂÁö Å« ÇÇÇØ¸¦ ÀÔÈ÷±â´Â ÇÏ¿´½À´Ï´Ù.[ENTER]"
locale.main_quest_flame_lv105.say_38 = "±×·¸±º.[ENTER]°í»ýÇÏ¿´³×. ÀÚ³× ´öºÐ¿¡ ¿©±â±îÁö Àß ÇØ³½°ÍÀÌ´Ï±î ¸»ÀÌ¾ß.[ENTER]º¸°í¸¦ ¹Þ°íºÎÅÍ Ã¥»ç¿Í ÇÐÀÚ(20380) ¸ðµÎ¸¦ ºÒ·¯ ÀÌ·± °æ¿ì¸¦ ´ëºñÇÏ·Á Çß´Ù³×.[ENTER]Áö±ÝÀº ³» ºÎÇÏµéÀ» ½ÃÄÑ Áö¼ÓÀûÀ¸·Î °¨½ÃÇÏ¸é¼­ Á÷Á¢ÀûÀÎ ±ÝÁ¦¸¦ °¡ÇÒ ¹æµµ¸¦ Ã£¾Æ¾ß ÇÏ´Â ½ÇÁ¤ÀÌ¶ó³×.[ENTER]Àû·æ¿¡°Ô ±ÝÁ¦¸¦ °¡ÇÏ°í ¿Ïº®ÇÏ°Ô ºÀÀÎÇÒ ¹æ¾ÈÀ» Ã£°Åµç ÀÚ³×¸¦ ´Ù½Ã ºÎ¸£µµ·Ï ÇÏ°Ú³×.[ENTER]°í»ýÇÏ¿´³×.[ENTER]"

locale.snow_dungeon = {}
locale.snow_dungeon.say_1 = "Black Dragon Start Intellekt"
locale.snow_dungeon.say_2 = "Pass this one abgelaufen ist. [ENTER] Black Dragon Intelligenz Position für 1 Stunde gehalten, und wurde in der Mitte des weißen Drachen intellektuellen Fortschritt gesendet oder abgeschlossen, wenn die Position auf 30 Minuten begrenzt ist."
locale.snow_dungeon.say_3 = "nicht passieren das Verlies wird raus."
locale.snow_dungeon.say_4 = "10 Sekunden später mit dem Chef Zimmer gehen"
locale.snow_dungeon.say_5 = "White Dragon von Intelligenz"
locale.snow_dungeon.say_6 = "Wollen Sie wirklich in Black Dragon Intelligenz?"
locale.snow_dungeon.say_7 = "10 Sekunden bis in den zweiten Stock zu bewegen"
locale.snow_dungeon.say_8 = "10 Sekunden bis in den vierstöckigen gehen"
locale.snow_dungeon.say_9 = "10 Sekunden bis in den fünfstöckigen gehen"
locale.snow_dungeon.say_10 = "Metin Steine ??gefunden"
locale.snow_dungeon.say_11 = "10 Sekunden bis in den dritten Stock zu bewegen"
locale.snow_dungeon.say_12 = "ist nicht der eigentliche Schlüssel"
locale.snow_dungeon.say_13 = "Bitte zerlegen Sie das zweite Verzauberung"
locale.snow_dungeon.say_14 = "Bitte zerlegen Sie das dritte Verzauberung"
locale.snow_dungeon.say_15 = "falsche Reihenfolge"
locale.snow_dungeon.say_16 = "Bitte bauen Sie die vierte Chains"
locale.snow_dungeon.say_17 = "Bitte bauen Sie die fünfte Chains"
locale.snow_dungeon.say_18 = "10 Sekunden bis in das sechsstöckige gehen"
locale.snow_dungeon.say_19 = "10 Sekunden bis in die sieben Stockwerke zu gehen"
locale.snow_dungeon.say_20 = "false verschwindet"
locale.snow_dungeon.say_21 = "10 Sekunden bis in den acht-Geschichte gehen"
locale.snow_dungeon.say_22 = "10 Sekunden bis in den neun-stöckigen gehen"
locale.snow_dungeon.say_23 = "Boss besiegt"
locale.snow_dungeon.say_24 = "1 Minuten nach dem Black Dragon Intelligenz bewegt sich aus."
locale.snow_dungeon.say_25 = "Position die ganze Zeit verstrichen ist, wird die Wartung der White Dragon Verstand bewegt werden."
locale.snow_dungeon.say_26 = "Black Dragon Intelligenz Verweilzeit Eintrag% d Minuten."
locale.snow_dungeon.say_27 = "Black Dragon Intelligenz Positionen wurden halten die Zeit abgelaufen ist."
locale.snow_dungeon.say_28 = "10 Sekunden erlischt die Black Dragon Intelligenz."
locale.snow_dungeon.say_29 = "re-entry Zeit ist mehr als fünf Minuten ist nicht erlaubt. [ENTER]"
locale.snow_dungeon.say_30 = "eine Partei kann nicht weiter vorgehen Behinderung verschwinden [ENTER]"
locale.snow_dungeon.say_31 = "Parteien nicht erreichen Kapitel 104Lv weitere Fortschritte ist unmöglich."
locale.snow_dungeon.say_32 = "Party Kapitel 103Lv nicht füllen Sie alle Quests, sind weitere Fortschritte unmöglich."
locale.snow_dungeon.say_33 = "Hanma Entscheidung der Position du das wollen?"
locale.snow_dungeon.say_34 = "position"
locale.snow_dungeon.say_35 = "Schließen"
locale.snow_dungeon.say_36 = "Boss Room Entry"
locale.snow_dungeon.say_37 = "um alles Böse zu besiegen."
locale.snow_dungeon.say_38 = "den Schlüssel, mit dem Eis von dem Bösen."
locale.snow_dungeon.say_39 = "all das Böse zu besiegen die jincho naenggoe vergeben."
locale.snow_dungeon.say_40 = "all das Siegel zu brechen."
locale.snow_dungeon.say_41 = "Abbruch notwendigen Elemente für das Böse kann bezogen werden."
locale.snow_dungeon.say_42 = "Bing Manastein durch den Sieg über alle Monster zu zerstören."
locale.snow_dungeon.say_43 = "jincho Verliehen naenggoe."
locale.snow_dungeon.say_44 = "Böse aus der Nutzung jigeon White Dragon erhalten."
locale.snow_dungeon.say_45 = "White Dragon Wheel, um zu zerstören."
locale.snow_dungeon.say_46 = "Hanma Verliehen für."
locale.snow_dungeon.say_47 = "versäumt, das Verlies mit Partei hayeotgeona starten"

locale.event_flame_dungeon_open = {}
locale.event_flame_dungeon_open.say_1 = "µµ¿°È­ÁöÀÇ ³­"
locale.event_flame_dungeon_open.say_2 = "¾Æ.. ÀÌ¾ß±â¸¦ µé¾ú´Â°¡..[ENTER]µµ¿°È­Áö¿¡ Å« À¯ÀûÀÌ ¹ß°ßµÆ´Ù°í ÇÏ´Â±¸¸¸...[ENTER]³ªµµ ÀÚ³×Ã³·³ ¿ë»ç¿´À¸¸é....[ENTER]±× À¯ÀûÀ» Á÷Á¢º¸°í ½ÍÁö¸¸ ³ªÀÇ ¿ª·®À¸·Î ºÎÁ·ÇÑµí ÇÏÀÌ..."
locale.event_flame_dungeon_open.say_3 = "Èì.... Àá½Ã ÈÄ¿¡ ´Ù½Ã ¿À¸é...[ENTER]³» µµ¿°È­Áö À¯ÀûÁöÀÇ ÁÂÇ¥°¡ ÀûÈù ÀÌµ¿¼­¸¦ ÇÏ³ª ÁÖ°Ú³×...[ENTER]±×°ÍÀ¸·Î ´Ù³à¿Í¼­ ³ª¿¡°Ô ¸»ÇØÁÖÁö ¾Ê°Ú´Â°¡?![ENTER]Á¤¸» ±Ã±ÝÇÏ±¸¸¸.... ÇãÇã" 
locale.event_flame_dungeon_open.say_4 = "ÀÌµ¿¼­¸¦ ÁÖ¼¼¿ä~!"
locale.event_flame_dungeon_open.say_5 = "¿ÀÈ£~!![ENTER]¿ë±â°¡ ÀÖ´Â ¸ÚÁø »ç¶÷ÀÌ·Î±¸¸Õ...[ENTER]µ¤°í Ã´¹ÚÇÏ¸ç, ¸¶¹°ÀÌ ³ÑÃÄ³ª´Â µµ¿°È­Áö¸¦ ÀÌ·¸°Ô °¡°Ú´Ù´Ï[ENTER]¾îÁö°£ÇÑ °­½ÉÀåÀÌ ¾Æ´Ï¸é ºÒ°¡´ÉÇÏÁö..[ENTER]¾îµðº¸ÀÚ...."
locale.event_flame_dungeon_open.say_6 = "ÀÚ~!!![ENTER]¿©±â ÀÖ³×~!! µµ¿°È­Áö À¯ÀûÁöÀÇ ÁÂÇ¥°¡ ±â·ÏµÈ ÀÌµ¿¼­ÀÏ¼¼[ENTER]±×¸®°í ´ýÀ¸·Î ÅëÇà±ÇÀ» ÁÙÅÍ´Ï Àß »ìÆìº¸°í ³ªÁß¿¡ ´Ù³à¿Â ÀÌ¾ß±â³ª ÇØÁÖ°Ô³ª~![ENTER]±×·³ ¸öÁ¶½É ÇÏ°Ô³ª~!!"
locale.event_flame_dungeon_open.say_7 = "¾îÇã~!!![ENTER]ÀÌ»ç¶÷ÀÌ~!! ¾Æ¹«¸® ³ª¶óµµ ÀÌµ¿¼­¸¦ ¸¸µå´Âµ¥´Â ÇÑ°è°¡ ÀÖ³×...[ENTER]ÇÏ·ç¿¡ ÇÑ¹ø¸¸ ÁÙ ¼ö ÀÖÀ¸´Ï ³»ÀÏ ¿À°Ô³ª..."
