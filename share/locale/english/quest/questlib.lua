CONFIRM_NO = 0
CONFIRM_YES = 1
CONFIRM_OK = 1
CONFIRM_TIMEOUT = 2

MALE = 0
FEMALE = 1

--quest.create = function(f) return coroutine.create(f) end
--quest.process = function(co,args) return coroutine.resume(co, args) end
setstate = q.setstate
newstate = q.setstate

q.set_clock = function(name, value) q.set_clock_name(name) q.set_clock_value(value) end
q.set_counter = function(name, value) q.set_counter_name(name) q.set_counter_value(value) end
c_item_name = function(vnum) return ("[ITEM value;"..vnum.."]") end
c_mob_name = function(vnum) return ("[MOB value;"..vnum.."]") end

-- d.set_folder = function (path) raw_script("[SET_PATH path;"..path.."]") end
-- d.set_folder = function (path) path.show_cinematic("[SET_PATH path;"..path.."]") end
-- party.run_cinematic = function (path) party.show_cinematic("[RUN_CINEMATIC value;"..path.."]") end

newline = "[ENTER]"
function color256(r, g, b) return "[COLOR r;"..(r/255.0).."|g;"..(g/255.0).."|b;"..(b/255.0).."]" end
function color(r,g,b) return "[COLOR r;"..r.."|g;"..g.."|b;"..b.."]" end
function delay(v) return "[DELAY value;"..v.."]" end
function setcolor(r,g,b) raw_script(color(r,g,b)) end
function setdelay(v) raw_script(delay(v)) end
function resetcolor(r,g,b) raw_script("[/COLOR]") end
function resetdelay(v) raw_script("[/DELAY]") end

-- trim a string
function trim(s) return (string.gsub(s, "^%s*(.-)%s*$", "%1")) end

-- minimap에 동그라미 표시
function addmapsignal(x,y) raw_script("[ADDMAPSIGNAL x;"..x.."|y;"..y.."]") end

-- minimap 동그라미들 모두 클리어
function clearmapsignal() raw_script("[CLEARMAPSIGNAL]") end

-- 클라이언트에서 보여줄 대화창 배경 그림을 정한다.
function setbgimage(src) raw_script("[BGIMAGE src;") raw_script(src) raw_script("]") end

-- 대화창에 이미지를 보여준다.
function addimage(x,y,src) raw_script("[IMAGE x;"..x.."|y;"..y) raw_script("|src;") raw_script(src) raw_script("]") end

-- generate when a linebreak in the functions: d.notice,notice,notice_all
function notice_multiline( str , func )
    local p = 0
    local i = 0
    while true do
        i = string.find( str, "%[ENTER%]", i+1 )
        if i == nil then
            if string.len(str) > p then
                func( string.sub( str, p, string.len(str) ) )
            end
            break
        end
        func( string.sub( str, p, i-1 ) )
        p = i + 7
    end
end 

function makequestbutton(name)
    raw_script("[QUESTBUTTON idx;")
    raw_script(""..q.getcurrentquestindex()) 
    raw_script("|name;")
    raw_script(name) raw_script("]")
end

function make_quest_button_ex(name, icon_type, icon_name)
    test_chat(icon_type)
    test_chat(icon_name)
    raw_script("[QUESTBUTTON idx;")
    raw_script(""..q.getcurrentquestindex()) 
    raw_script("|name;")
    raw_script(name)
    raw_script("|icon_type;")
    raw_script(icon_type)
    raw_script("|icon_name;")
    raw_script(icon_name)
    raw_script("]")
end

function make_quest_button(name) makequestbutton(name) end

function send_letter_ex(name, icon_type, icon_name) make_quest_button_ex(name, icon_type, icon_name) set_skin(NOWINDOW) q.set_title(name) q.start() end

function send_letter(name) makequestbutton(name) set_skin(NOWINDOW) q.set_title(name) q.start() end
function clear_letter() q.done() end
function say_title(name) say(color256(255, 230, 186)..name..color256(196, 196, 196)) end
function say_reward(name) say(color256(255, 200, 200)..name..color256(196, 196, 196)) end
function say_pc_name() say(pc.get_name()..":") end
function say_size(width, height) say("[WINDOW_SIZE width;"..width.."|height;"..height.."]") end
function setmapcenterposition(x,y)
    raw_script("[SETCMAPPOS x;")
    raw_script(x.."|y;")
    raw_script(y.."]")
end
function say_item(name, vnum, desc)
    say("[INSERT_IMAGE image_type;item|idx;"..vnum.."|title;"..name.."|desc;"..desc.."|index;".. 0 .."|total;".. 1 .."]")
end
function say_show_item(vnum)
    say("[INSERT_IMAGE image_type;item|idx;"..vnum.."|index;".. 0 .."|total;".. 1 .."]")
end
function say_item_vnum(vnum)
    say_item(item_name(vnum), vnum, "")
end
function say_item_vnum_inline(vnum,index,total)
    if index >= total then
        return
    end
    if total > 3 then
        return
    end
    raw_script("[INSERT_IMAGE image_type;item|idx;"..vnum.."|title;"..item_name(vnum).."|desc;".."".."|index;"..index.."|total;"..total.."]")
end
function pc_is_novice()
    if pc.get_skill_group()==0 then
        return true
    else
        return false
    end
end
function pc_get_exp_bonus(exp, text)
    say_reward(text)
    pc.give_exp2(exp)
    set_quest_state("levelup", "run")
end
function pc_get_village_map_index(index)
    return village_map[pc.get_empire()][index]
end
function pc_has_even_id()
    return math.mod(pc.get_player_id(),2) == 0
end

function pc_get_account_id()
    return math.mod(pc.get_account_id(), 2) !=0
end

village_map = {
    {1, 3},
    {21, 23},
    {41, 43},
}

function npc_is_same_empire()
    if pc.get_empire()==npc.empire then
        return true
    else
        return false
    end
end

function npc_get_skill_teacher_race(pc_empire, pc_job, sub_job)
    if 1==sub_job then
        if 0==pc_job then
            return WARRIOR1_NPC_LIST[pc_empire]
        elseif 1==pc_job then
            return ASSASSIN1_NPC_LIST[pc_empire]
        elseif 2==pc_job then
            return SURA1_NPC_LIST[pc_empire]
        elseif 3==pc_job then
            return SHAMAN1_NPC_LIST[pc_empire]
        end	
    elseif 2==sub_job then
        if 0==pc_job then
            return WARRIOR2_NPC_LIST[pc_empire]
        elseif 1==pc_job then
            return ASSASSIN2_NPC_LIST[pc_empire]
        elseif 2==pc_job then
            return SURA2_NPC_LIST[pc_empire]
        elseif 3==pc_job then
            return SHAMAN2_NPC_LIST[pc_empire]
        end	
    end

    return 0
end 


function pc_find_square_guard_vid()
    if pc.get_empire()==1 then 
        return find_npc_by_vnum(11000) 
    elseif pc.get_empire()==2 then
        return find_npc_by_vnum(11002)
    elseif pc.get_empire()==3 then
        return find_npc_by_vnum(11004)
    end
    return 0
end

function pc_find_skill_teacher_vid(sub_job)
    local vnum=npc_get_skill_teacher_race(pc.get_empire(), pc.get_job(), sub_job)
    return find_npc_by_vnum(vnum)
end

function pc_find_square_guard_vid()
    local pc_empire=pc.get_empire()
    if pc_empire==1 then
        return find_npc_by_vnum(11000)
    elseif pc_empire==2 then
        return find_npc_by_vnum(11002)
    elseif pc_empire==3 then
        return find_npc_by_vnum(11004)
    end
end

function npc_is_same_job()
    local pc_job=pc.get_job()
    local npc_vnum=npc.get_race()

    -- test_chat("pc.job:"..pc.get_job())
    -- test_chat("npc_race:"..npc.get_race())
    -- test_chat("pc.skill_group:"..pc.get_skill_group())
    if pc_job==0 then
        if table_is_in(WARRIOR1_NPC_LIST, npc_vnum) then return true end
        if table_is_in(WARRIOR2_NPC_LIST, npc_vnum) then return true end
    elseif pc_job==1 then
        if table_is_in(ASSASSIN1_NPC_LIST, npc_vnum) then return true end
        if table_is_in(ASSASSIN2_NPC_LIST, npc_vnum) then return true end
    elseif pc_job==2 then
        if table_is_in(SURA1_NPC_LIST, npc_vnum) then return true end
        if table_is_in(SURA2_NPC_LIST, npc_vnum) then return true end
    elseif pc_job==3 then
        if table_is_in(SHAMAN1_NPC_LIST, npc_vnum) then return true end
        if table_is_in(SHAMAN2_NPC_LIST, npc_vnum) then return true end
    end

    return false
end

function npc_get_job()
    local npc_vnum=npc.get_race()

    if table_is_in(WARRIOR1_NPC_LIST, npc_vnum) then return COND_WARRIOR_1 end
    if table_is_in(WARRIOR2_NPC_LIST, npc_vnum) then return COND_WARRIOR_2 end
    if table_is_in(ASSASSIN1_NPC_LIST, npc_vnum) then return COND_ASSASSIN_1 end
    if table_is_in(ASSASSIN2_NPC_LIST, npc_vnum) then return COND_ASSASSIN_2 end
    if table_is_in(SURA1_NPC_LIST, npc_vnum) then return COND_SURA_1 end
    if table_is_in(SURA2_NPC_LIST, npc_vnum) then return COND_SURA_2 end
    if table_is_in(SHAMAN1_NPC_LIST, npc_vnum) then return COND_SHAMAN_1 end
    if table_is_in(SHAMAN2_NPC_LIST, npc_vnum) then return COND_SHAMAN_2 end
    return 0

end

function time_min_to_sec(value)
    return 60*value
end

function time_hour_to_sec(value)
    return 3600*value
end

function next_time_set(value, test_value)
    local nextTime=get_time()+value
    if is_test_server() then
        nextTime=get_time()+test_value
    end
    pc.setqf("__NEXT_TIME__", nextTime)
end

function next_time_is_now(value)
    if get_time()>=pc.getqf("__NEXT_TIME__") then
        return true
    else
        return false
    end
end

function table_get_random_item(self)
    return self[number(1, table.getn(self))]
end

function table_is_in(self, test)
    for i = 1, table.getn(self) do
        if self[i]==test then
            return true
        end
    end
    return false
end


function giveup_quest_menu(title)
    local s=select("진행한다", "포기한다")
    if 2==s then 
    say(title.." 퀘스트를 정말로")
    say("포기하시겠습니까?")
    local s=select("네, 그렇습니다", "아닙니다")
    if 1==s then
        say(title.."퀘스트를 포기했습니다")
        restart_quest()
    end
    end
end

function restart_quest()
    set_state("start")
    q.done()
end

function complete_quest()
    set_state("__COMPLETE__")
    q.done()
end

function giveup_quest()
    set_state("__GIVEUP__")
    q.done()
end

function complete_quest_state(state_name)
    set_state(state_name)
    q.done()
end

function test_chat(log)
    if is_test_server() then
        chat(log)
    end
end

function bool_to_str(is)
    if is then
        return "true"
    else
        return "false"
    end
end

WARRIOR1_NPC_LIST 	= {20300, 20320, 20340, }
WARRIOR2_NPC_LIST 	= {20301, 20321, 20341, }
ASSASSIN1_NPC_LIST 	= {20302, 20322, 20342, }
ASSASSIN2_NPC_LIST 	= {20303, 20323, 20343, }
SURA1_NPC_LIST 		= {20304, 20324, 20344, }
SURA2_NPC_LIST 		= {20305, 20325, 20345, }
SHAMAN1_NPC_LIST 	= {20306, 20326, 20346, }
SHAMAN2_NPC_LIST 	= {20307, 20327, 20347, }

function skill_group_dialog(e, j, g) -- e = 제국, j = 직업, g = 그룹
    e = 1 -- XXX 메시지가 나라별로 있다가 하나로 통합되었음
    

    -- 다른 직업이거나 다른 제국일 경우
    if pc.job != j then
        say(locale.skill_group.dialog[e][pc.job][3])
    elseif pc.get_skill_group() == 0 then
        if pc.level < 5 then
            say(locale.skill_group.dialog[e][j][g][1])
            return
        end
        say(locale.skill_group.dialog[e][j][g][2])
        local answer = select(locale.yes, locale.no)

        if answer == 1 then
            --say(locale.skill_group.dialog[e][j][g][2])
            pc.set_skill_group(g)
        else
            --say(locale.skill_group.dialog[e][j][g][3])
        end
    --elseif pc.get_skill_group() == g then
        --say(locale.skill_group.dialog[e][j][g][4])
    --else
        --say(locale.skill_group.dialog[e][j][g][5])
    end
end

function show_horse_menu()
    if horse.is_mine() then			
        say(locale.horse_menu.menu)

        local s = 0
        if horse.is_dead() then
            s = select(locale.horse_menu.revive, locale.horse_menu.ride, locale.horse_menu.unsummon, locale.horse_menu.close)
        else
            s = select(locale.horse_menu.feed, locale.horse_menu.ride, locale.horse_menu.unsummon, locale.horse_menu.close)
        end

        if s==1 then
            if horse.is_dead() then
                horse.revive()
            else
                local food = horse.get_grade() + 50054 - 1
                if pc.countitem(food) > 0 then
                pc.removeitem(food, 1)
                horse.feed()
                else
                say(locale.need_item_prefix..item_name(food)..locale.need_item_postfix);
                end
            end
        elseif s==2 then
            horse.ride()
        elseif s==3 then
            horse.unsummon()
        elseif s==4 then
            -- do nothing
        end
    end
end

npc_index_table = {
    ['race'] = npc.getrace,
    ['empire'] = npc.get_empire,
}

pc_index_table = {
    ['weapon']		= pc.getweapon,
    ['level']		= pc.get_level,
    ['hp']		= pc.gethp,
    ['maxhp']		= pc.getmaxhp,
    ['sp']		= pc.getsp,
    ['maxsp']		= pc.getmaxsp,
    ['exp']		= pc.get_exp,
    ['nextexp']		= pc.get_next_exp,
    ['job']		= pc.get_job,
    ['money']		= pc.getmoney,
    ['gold'] 		= pc.getmoney,
    ['name'] 		= pc.getname,
    ['playtime'] 	= pc.getplaytime,
    ['leadership'] 	= pc.getleadership,
    ['empire'] 		= pc.getempire,
    ['skillgroup'] 	= pc.get_skill_group,
    ['x'] 		= pc.getx,
    ['y'] 		= pc.gety,
    ['local_x'] 	= pc.get_local_x,
    ['local_y'] 	= pc.get_local_y,
}

item_index_table = {
    ['vnum']		= item.get_vnum,
    ['name']		= item.get_name,
    ['size']		= item.get_size,
    ['count']		= item.get_count,
    ['type']		= item.get_type,
    ['sub_type']	= item.get_sub_type,
    ['refine_vnum']	= item.get_refine_vnum,
    ['level']		= item.get_level,
}

guild_war_bet_price_table = 
{
    10000,
    30000,
    50000,
    100000
}

function npc_index(t,i) 
    local npit = npc_index_table
    if npit[i] then
    return npit[i]()
    else
    return rawget(t,i)
    end
end

function pc_index(t,i) 
    local pit = pc_index_table
    if pit[i] then
    return pit[i]()
    else
    return rawget(t,i)
    end
end

function item_index(t, i)
    local iit = item_index_table
    if iit[i] then
    return iit[i]()
    else
    return rawget(t, i)
    end
end

setmetatable(pc,{__index=pc_index})
setmetatable(npc,{__index=npc_index})
setmetatable(item,{__index=item_index})

--coroutine을 이용한 선택항 처리
function select(...)
    return q.yield('select', arg)
end

function select_table(table)
    return q.yield('select', table)
end

-- coroutine을 이용한 다음 엔터 기다리기
function wait()
    q.yield('wait')
end

function input()
    return q.yield('input')
end

function confirm(vid, msg, timeout)
    return q.yield('confirm', vid, msg, timeout)
end

function select_item()
    setskin(NOWINDOW)
    return q.yield('select_item')
end

--전역 변수 접근과 관련된 계열
NOWINDOW = 0
NORMAL = 1
CINEMATIC = 2
SCROLL = 3

WARRIOR = 0
ASSASSIN = 1
SURA = 2
SHAMAN = 3

COND_WARRIOR_0 = 8
COND_WARRIOR_1 = 16
COND_WARRIOR_2 = 32
COND_WARRIOR = 56

COND_ASSASSIN_0 = 64
COND_ASSASSIN_1 = 128
COND_ASSASSIN_2 = 256
COND_ASSASSIN = 448

COND_SURA_0 = 512
COND_SURA_1 = 1024
COND_SURA_2 = 2048
COND_SURA = 3584

COND_SHAMAN_0 = 4096
COND_SHAMAN_1 = 8192
COND_SHAMAN_2 = 16384
COND_SHAMAN = 28672

PART_MAIN = 0
PART_HAIR = 3

GUILD_CREATE_ITEM_VNUM = 70101

QUEST_SCROLL_TYPE_KILL_MOB = 1
QUEST_SCROLL_TYPE_KILL_ANOTHER_EMPIRE = 2

apply = {
    ["MAX_HP"]		= 1,
    ["MAX_SP"]		= 2,
    ["CON"]			= 3,
    ["INT"]			= 4,
    ["STR"]			= 5,
    ["DEX"]			= 6,
    ["ATT_SPEED"]		= 7,
    ["MOV_SPEED"]		= 8,
    ["CAST_SPEED"]		= 9,
    ["HP_REGEN"]		= 10,
    ["SP_REGEN"]		= 11,
    ["POISON_PCT"]		= 12,
    ["STUN_PCT"]		= 13,
    ["SLOW_PCT"]		= 14,
    ["CRITICAL_PCT"]	= 15,
    ["PENETRATE_PCT"]	= 16,
    ["ATTBONUS_HUMAN"]	= 17,
    ["ATTBONUS_ANIMAL"]	= 18,
    ["ATTBONUS_ORC"]	= 19,
    ["ATTBONUS_MILGYO"]	= 20,
    ["ATTBONUS_UNDEAD"]	= 21,
    ["ATTBONUS_DEVIL"]	= 22,
    ["STEAL_HP"]		= 23,
    ["STEAL_SP"]		= 24,
    ["MANA_BURN_PCT"]	= 25,
    ["DAMAGE_SP_RECOVER"]	= 26,
    ["BLOCK"]		= 27,
    ["DODGE"]		= 28,
    ["RESIST_SWORD"]	= 29,
    ["RESIST_TWOHAND"]	= 30,
    ["RESIST_DAGGER"]	= 31,
    ["RESIST_BELL"]		= 32,
    ["RESIST_FAN"]		= 33,
    ["RESIST_BOW"]		= 34,
    ["RESIST_FIRE"]		= 35,
    ["RESIST_ELEC"]		= 36,
    ["RESIST_MAGIC"]	= 37,
    ["RESIST_WIND"]		= 38,
    ["REFLECT_MELEE"]	= 39,
    ["REFLECT_CURSE"]	= 40,
    ["POISON_REDUCE"]	= 41,
    ["KILL_SP_RECOVER"]	= 42,
    ["EXP_DOUBLE_BONUS"]	= 43,
    ["GOLD_DOUBLE_BONUS"]	= 44,
    ["ITEM_DROP_BONUS"]	= 45,
    ["POTION_BONUS"]	= 46,
    ["KILL_HP_RECOVER"]	= 47,
    ["IMMUNE_STUN"]		= 48,
    ["IMMUNE_SLOW"]		= 49,
    ["IMMUNE_FALL"]		= 50,
    ["SKILL"]		= 51,
    ["BOW_DISTANCE"]	= 52,
    ["ATT_GRADE_BONUS"]	= 53,
    ["DEF_GRADE_BONUS"]	= 54,
    ["MAGIC_ATT_GRADE"]	= 55,
    ["MAGIC_DEF_GRADE"]	= 56,
    ["CURSE_PCT"]		= 57,
    ["MAX_STAMINA"]		= 58,
    ["ATTBONUS_WARRIOR"]	= 59,
    ["ATTBONUS_ASSASSIN"]	= 60,
    ["ATTBONUS_SURA"]	= 61,
    ["ATTBONUS_SHAMAN"]	= 62,
    ["ATTBONUS_MONSTER"]	= 63,
    ["MALL_EXPBONUS"]   = 66,
    ["MAX_HP_PCT"]  = 69,
    ["MAX_SP_PCT"]  = 70,

    ["MALL_DEFBONUS"] = 65,

    ["NORMAL_HIT_DEFEND_BONUS"] = 74,
}

-- 레벨업 퀘스트 -_-
special = {}

special.fortune_telling = 
{
--  { prob	크리	item	money	remove money
    { 1,	0,	20,	20,	0	}, -- 10
    { 499,	0,	10,	10,	0	}, -- 5
    { 2500,	0,	5,	5,	0	}, -- 1
    { 5000,	0,	0,	0,	0	},
    { 1500,	0,	-5,	-5,	20000	},
    { 499,	0,	-10,	-10,	20000	},
    { 1,	0,	-20,	-20,	20000	},
}

special.questscroll_reward =
{
    {1,	1500,	3000,	30027,	0,	0    },
    {2,	1500,	3000,	30028,	0,	0    },
    {3,	1000,	2000,	30034,	30018,	0    },
    {4,	1000,	2000,	30034,	30011,	0    },
    {5,	1000,	2000,	30011,	30034,	0    },
    {6,	1000,	2000,	27400,	0,	0    },
    {7,	2000,	4000,	30023,	30003,	0    },
    {8,	2000,	4000,	30005,	30033,	0    },
    {9,	2000,	8000,	30033,	30005,	0    },
    {10,	4000,	8000,	30021,	30033,	30045},
    {11,	4000,	8000,	30045,	30022,	30046},
    {12,	5000,	12000,	30047,	30045,	30055},
    {13,	5000,	12000,	30051,	30017,	30058},
    {14,	5000,	12000,	30051,	30007,	30041},
    {15,	5000,	15000,	30091,	30017,	30018},
    {16,	3500,	6500,	30021,	30033,	0    },
    {17,	4000,	9000,	30051,	30033,	0    },
    {18,	4500,	10000,	30056,	30057,	30058},
    {19,	4500,	10000,	30059,	30058,	30041},
    {20,	5000,	15000,	0,	0,	0    },
}

special.active_skill_list = {
    {
        { 1, 2, 3, 4, 5},
        { 16, 17, 18, 19, 20},
    },
    {
        {31, 32, 33, 34, 35},
        {46, 47, 48, 49, 50},
    },
    {
        {61, 62, 63, 64, 65, 66},
        {76, 77, 78, 79, 80, 81},
    },
    {
        {91, 92, 93, 94, 95, 96},
        {106, 107, 108, 109, 110, 111},
    },
}

special.skill_reset_cost = {
    2000,
    2000,
    2000,
    2000,
    2000,
    2000,
    4000,
    6000,
    8000,
    10000,
    14000,
    18000,
    22000,
    28000,
    34000,
    41000,
    50000,
    59000,
    70000,
    90000,
    101000,
    109000,
    114000,
    120000,
    131000,
    141000,
    157000,
    176000,
    188000,
    200000,
    225000,
    270000,
    314000,
    348000,
    393000,
    427000,
    470000,
    504000,
    554000,
    600000,
    758000,
    936000,
    1103000,
    1276000,
    1407000,
    1568000,
    1704000,
    1860000,
    2080000,
    2300000,
    2700000,
    3100000,
    3500000,
    3900000,
    4300000,
    4800000,
    5300000,
    5800000,
    6400000,
    7000000,
    8000000,
    9000000,
    10000000,
    11000000,
    12000000,
    13000000,
    14000000,
    15000000,
    16000000,
    17000000,
}

special.levelup_img = 
{
    [171] = "dog.tga",
    [172] = "wolf.tga",
    [173] = "wolf.tga",
    [174] = "wolf.tga",
    [175] = "wolf.tga",
    [175] = "wolf.tga",
    [176] = "wolf.tga",
    [177] = "wolf.tga",
    [178] = "wild_boar.tga",
    [179] = "wild_boar.tga",
    [180] = "bear.tga",
    [181] = "bear.tga",
    [182] = "bear.tga",
    [183] = "bear.tga",
    [184] = "tiger.tga",
    [185] = "tiger.tga",

    [351] = "bak_inf.tga",
    [352] = "bak_gung.tga",
    [353] = "bak_gen1.tga",
    [354] = "bak_gen2.tga",
    
    [402] = "402.tga",

    [451] = "huk_inf.tga",
    [452] = "huk_dol.tga",
    [453] = "huk_gen1.tga",
    [454] = "huk_gen2.tga",
    [456] = "456.tga",

    [551] = "o_inf.tga",
    [552] = "o_jol.tga",
    [553] = "o_gung.tga",
    [554] = "o_jang.tga",

    [651] = "ung_inf.tga",
    [652] = "ung_chuk.tga",
    [653] = "ung_tu.tga",

    [751] = "mil_chu.tga",
    [752] = "mil_na.tga",
    [753] = "mil_na.tga",
    [754] = "mil_na.tga",
    [755] = "mil_jip.tga",
    [756] = "756.tga",
    [757] = "757.tga",

    [771] = "mil_chu.tga",
    [772] = "mil_na.tga",
    [773] = "mil_na.tga",
    [774] = "mil_na.tga",
    [775] = "mil_jip.tga",
    [776] = "776.tga",
    [777] = "777.tga",

    [931] = "sigwi.tga",
    [932] = "932.tga",
    [933] = "gwoijil.tga",
    [934] = "934.tga",
    [935] = "935.tga",
    [936] = "936.tga",
    [937] = "937.tga",
    
    [1001] = "1001.tga",
    [1002] = "1002.tga",
    [1003] = "1003.tga",
    [1004] = "1004.tga",
    
    [1061] = "1061.tga",
    [1063] = "1063.tga",
    [1064] = "1064.tga",
    [1065] = "1065.tga",
    [1066] = "1066.tga",
    [1068] = "1068.tga",
    [1069] = "1069.tga",

    [1070] = "1070.tga",
    [1071] = "1071.tga",

    [1101] = "1101.tga",
    [1102] = "1102.tga",
    [1104] = "1104.tga",
    [1105] = "1105.tga",
    [1106] = "1106.tga",
    [1107] = "1107.tga",

    [1131] = "1131.tga",
    [1132] = "1132.tga",
    [1133] = "1133.tga",
    [1135] = "1135.tga",
    [1136] = "1136.tga",
    [1137] = "1137.tga",

    [1301] = "1301.tga",
    [1303] = "1303.tga",
    [1305] = "1305.tga",

    [2001] = "spider.tga",
    [2002] = "spider.tga",
    [2003] = "spider.tga",
    [2004] = "spider.tga",
    [2005] = "spider.tga",

    [2051] = "spider.tga",
    [2052] = "spider.tga",
    [2053] = "spider.tga",
    [2054] = "spider.tga",
    [2055] = "spider.tga",

    [2031] = "2031.tga",
    [2032] = "2032.tga",
    [2033] = "2033.tga",
    [2034] = "2034.tga",

    [2061] = "2061.tga",
    [2062] = "2062.tga",
    [2063] = "2063.tga",

    [2102] = "2102.tga",
    [2103] = "2103.tga",
    [2106] = "2106.tga",
    
    [2131] = "2131.tga",
    [2158] = "2158.tga",
    
    [2201] = "2201.tga",
    [2202] = "2202.tga",
    [2204] = "2204.tga",
    [2205] = "2205.tga",
    
    [2301] = "2301.tga",
    [2302] = "2302.tga",
    [2303] = "2303.tga",
    [2304] = "2304.tga",
    [2305] = "2305.tga",
    
    [2311] = "2311.tga",
    [2312] = "2312.tga",
    [2313] = "2313.tga",
    [2314] = "2314.tga",
    [2315] = "2315.tga",

    [5123] = "5123.tga",
    [5124] = "5124.tga",
    [5125] = "5125.tga",
    [5126] = "5126.tga",
    

}

special.levelup_quest = {
    -- monster kill  monster   kill
    --    vnum		qty.		 vnum		qty.	 exp percent
{	0	,	0	,	0	,	0	,	0	}	,	--	lev	1
{	171	,	10	,	172	,	5	,	10	}	,	--	lev	2
{	171	,	20	,	172	,	10	,	10	}	,	--	lev	3
{	172	,	15	,	173	,	5	,	10	}	,	--	lev	4
{	173	,	10	,	174	,	10	,	10	}	,	--	lev	5
{	174	,	20	,	178	,	10	,	10	}	,	--	lev	6
{	178	,	10	,	175	,	5	,	10	}	,	--	lev	7
{	178	,	20	,	175	,	10	,	10	}	,	--	lev	8
{	175	,	15	,	179	,	5	,	10	}	,	--	lev	9
{	175	,	20	,	179	,	10	,	10	}	,	--	lev	10
{	179	,	10	,	180	,	5	,	10	}	,	--	lev	11
{	180	,	15	,	176	,	10	,	10	}	,	--	lev	12
{	176	,	20	,	181	,	5	,	10	}	,	--	lev	13
{	181	,	15	,	177	,	5	,	10	}	,	--	lev	14
{	181	,	20	,	177	,	10	,	10	}	,	--	lev	15
{	177	,	15	,	184	,	5	,	10	}	,	--	lev	16
{	177	,	20	,	184	,	10	,	10	}	,	--	lev	17
{	184	,	10	,	182	,	10	,	10	}	,	--	lev	18
{	182	,	20	,	183	,	10	,	10	}	,	--	lev	19
{	183	,	20	,	352	,	15	,	10	}	,	--	lev	20
{	352	,	20	,	185	,	10	,	"2-10"	}	,	--	lev	21
{	185	,	25	,	354	,	10	,	"2-10"	}	,	--	lev	22
{	354	,	20	,	451	,	40	,	"2-10"	}	,	--	lev	23
{	451	,	60	,	402	,	80	,	"2-10"	}	,	--	lev	24
{	551	,	80	,	454	,	20	,	"2-10"	}	,	--	lev	25
{	552	,	80	,	456	,	20	,	"2-10"	}	,	--	lev	26
{	456	,	30	,	554	,	20	,	"2-10"	}	,	--	lev	27
{	651	,	35	,	554	,	30	,	"2-10"	}	,	--	lev	28
{	651	,	40	,	652	,	30	,	"2-10"	}	,	--	lev	29
{	652	,	40	,	2102	,	30	,	"2-10"	}	,	--	lev	30
{	652	,	50	,	2102	,	45	,	"2-5"	}	,	--	lev	31
{	653	,	45	,	2051	,	40	,	"2-5"	}	,	--	lev	32
{	751	,	35	,	2103	,	30	,	"2-5"	}	,	--	lev	33
{	751	,	40	,	2103	,	40	,	"2-5"	}	,	--	lev	34
{	752	,	40	,	2052	,	30	,	"2-5"	}	,	--	lev	35
{	754	,	20	,	2106	,	20	,	"2-5"	}	,	--	lev	36
{	773	,	30	,	2003	,	20	,	"2-5"	}	,	--	lev	37
{	774	,	40	,	2004	,	20	,	"2-5"	}	,	--	lev	38
{	756	,	40	,	2005	,	30	,	"2-5"	}	,	--	lev	39
{	757	,	40	,	2158	,	20	,	"2-5"	}	,	--	lev	40
{	931	,	40	,	5123	,	25	,	"2-5"	}	,	--	lev	41
{	932	,	30	,	5123	,	30	,	"2-5"	}	,	--	lev	42
{	932	,	40	,	2031	,	35	,	"2-5"	}	,	--	lev	43
{	933	,	40	,	2031	,	40	,	"2-5"	}	,	--	lev	44
{	771	,	50	,	2032	,	45	,	"2-5"	}	,	--	lev	45
{	772	,	30	,	5124	,	30	,	"2-5"	}	,	--	lev	46
{	933	,	35	,	5125	,	30	,	"2-5"	}	,	--	lev	47
{	934	,	40	,	5125	,	35	,	"2-5"	}	,	--	lev	48
{	773	,	40	,	2033	,	45	,	"2-5"	}	,	--	lev	49
{	774	,	40	,	5126	,	20	,	"2-5"	}	,	--	lev	50
{	775	,	50	,	5126	,	30	,	"1-4"	}	,	--	lev	51
{	934	,	45	,	2034	,	45	,	"1-4"	}	,	--	lev	52
{	934	,	50	,	2034	,	50	,	"1-4"	}	,	--	lev	53
{	776	,	40	,	1001	,	30	,	"1-4"	}	,	--	lev	54
{	777	,	40	,	1301	,	35	,	"1-4"	}	,	--	lev	55
{	935	,	50	,	1002	,	30	,	"1-4"	}	,	--	lev	56
{	935	,	60	,	1002	,	40	,	"1-4"	}	,	--	lev	57
{	936	,	45	,	1303	,	40	,	"1-4"	}	,	--	lev	58
{	936	,	50	,	1303	,	45	,	"1-4"	}	,	--	lev	59
{	937	,	45	,	1003	,	40	,	"1-4"	}	,	--	lev	60
{	1004	,	50	,	2061	,	60	,	"2-4"	}	,	--	lev	61
{	1305	,	45	,	2131	,	55	,	"2-4"	}	,	--	lev	62
{	1305	,	50	,	1101	,	45	,	"2-4"	}	,	--	lev	63
{	2062	,	50	,	1102	,	45	,	"2-4"	}	,	--	lev	64
{	1104	,	40	,	2063	,	40	,	"2-4"	}	,	--	lev	65
{	2301	,	50	,	1105	,	45	,	"2-4"	}	,	--	lev	66
{	2301	,	55	,	1105	,	50	,	"2-4"	}	,	--	lev	67
{	1106	,	50	,	1061	,	50	,	"2-4"	}	,	--	lev	68
{	1107	,	45	,	1061	,	50	,	"2-4"	}	,	--	lev	69
{	2302	,	55	,	2201	,	55	,	"2-4"	}	,	--	lev	70
{	2303	,	55	,	2202	,	55	,	"2-4"	}	,	--	lev	71
{	2303	,	60	,	2202	,	60	,	"2-4"	}	,	--	lev	72
{	2304	,	55	,	1063	,	55	,	"2-4"	}	,	--	lev	73
{	2305	,	50	,	1063	,	55	,	"2-4"	}	,	--	lev	74
{	1064	,	50	,	2204	,	50	,	"2-4"	}	,	--	lev	75
{	2205	,	45	,	1065	,	50	,	"2-4"	}	,	--	lev	76
{	2311	,	50	,	1068	,	50	,	"2-4"	}	,	--	lev	77
{	1070	,	50	,	1066	,	55	,	"2-4"	}	,	--	lev	78
{	1070	,	50	,	1069	,	50	,	"2-4"	}	,	--	lev	79
{	1071	,	50	,	2312	,	55	,	"2-4"	}	,	--	lev	80
{	1071	,	55	,	2312	,	50	,	"2-4"	}	,	--	lev	81
{	2313	,	55	,	2314	,	45	,	"2-4"	}	,	--	lev	82
{	2313	,	55	,	2314	,	45	,	"2-4"	}	,	--	lev	83
{	1131	,	60	,	2315	,	45	,	"5-10"}	,	--	lev	84
{	1131	,	60	,	2315	,	45	,	"5-10"}	,	--	lev	85
{	1132	,	60	,	1135	,	50	,	"5-10"}	,	--	lev	86
{	1132	,	60	,	1135	,	50	,	"5-10"}	,	--	lev	87
{	1133	,	60	,	1136	,	50	,	"5-10"}	,	--	lev	88
{	1133	,	60	,	1137	,	50	,	"5-10"}	,	--	lev	89
{	1132	,	60	,	1137	,	40	,	"5-10"}	,	--	lev	90

}

special.levelup_reward1 = 
{
    -- warrior assassin  sura  shaman
    {     0,        0,      0,      0 },
    { 11200,    11400,  11600,  11800 }, -- 갑옷
    { 12200,    12340,  12480,  12620 }, -- 투구
    { 13000,    13000,  13000,  13000 }  -- 방패
}

-- levelup_reward1 테이블 크기보다 레벨이 높아지면 아래
-- 테이블을 이용하여 아이템을 준다.
special.levelup_reward3 = {
    -- pct   item #  item count
    {   33,  27002,  10 }, -- 25%
    {   67,  27005,  10 }, -- 25%
  --{   75,  27101,   5 }, -- 25%
    {  100,  27114,   5 }, -- 25%
}

special.levelup_reward_gold21 = 
{
    { 10000,	20 },
    { 20000,	50 },
    { 40000,	25 },
    { 80000,	3 },
    { 100000,	2 },
}
special.levelup_reward_gold31 =
{
    { 20000,	20 },
    { 40000,	40 },
    { 60000,	25 },
    { 80000,	10 },
    { 100000,	5 },
}
special.levelup_reward_gold41 =
{
    { 40000,	20 },
    { 60000,	40 },
    { 80000,	25 },
    { 100000,	10 },
    { 150000,	5 },
}
special.levelup_reward_gold51 =
{
    { 60000,	20 },
    { 80000,	40 },
    { 100000,	25 },
    { 150000,	10 },
    { 200000,	5 },
}

special.levelup_reward_exp21 =
{
    { 2,	9 },
    { 3,	14 },
    { 4,	39 },
    { 6,	24 },
    { 8,	9 },
    { 10,	4 },
}

special.levelup_reward_exp31 = 
{
    { 2,	10 },
    { 2.5,	15 },
    { 3,	40 },
    { 3.5,	25 },
    { 4,	8 },
    { 4.5,	5 },
    { 5,	2 },
}
special.levelup_reward_exp41 = 
{
    { 2,	10 },
    { 2.5,	15 },
    { 3,	40 },
    { 3.5,	25 },
    { 4,	8 },
    { 4.5,	5 },
    { 5,	2 },
}
special.levelup_reward_exp51 = 
{
    { 1,	10 },
    { 1.5,	15 },
    { 2,	40 },
    { 2.5,	25 },
    { 3,	8 },
    { 3.5,	5 },
    { 4,	2 },
}
special.levelup_reward_exp84 =
{
    { 5,	9 },
    { 6,	14 },
    { 7,	39 },
    { 8,	24 },
    { 9,	9 },
    { 10,	4 },
}

special.levelup_reward_item_21 =
{
    -- no couple ring
    { { 27002, 10 }, { 27005, 10 }, { 27114, 10 } }, -- lev 21
    { 15080, 15100, 15120, 15140 }, -- lev 22
    { 16080, 16100, 16120, 16140 }, -- lev 23
    { 17080, 17100, 17120, 17140 }, -- lev 24
    { { 27002, 10 }, { 27005, 10 }, { 27114, 10 } }, -- lev 25
    { { 27003, 20 }, { 27006, 20 }, { 27114, 10 } }, -- over lev 25

    -- with couple ring
    -- { { 27002, 10 }, { 27005, 10 }, { 27114, 10 }, { 70301, 1 } }, -- lev 21
    -- { 15080, 15100, 15120, 15140, 70301 }, -- lev 22
    -- { 16080, 16100, 16120, 16140, 70301 }, -- lev 23
    -- { 17080, 17100, 17120, 17140, 70301 }, -- lev 24
    -- { { 27002, 10 }, { 27005, 10 }, { 27114, 10 }, { 70301, 1 } }, -- lev 25
    -- { { 27003, 20 }, { 27006, 20 }, { 27114, 10 } }, -- over lev 25
}

special.warp_to_pos = {
-- 승룡곡
    {
    { 402100, 673900 }, 
    { 270400, 739900 },
    { 321300, 808000 },
    },
--도염화지
    {
--A 5994 7563 
--B 5978 6222
--C 7307 6898
    { 599400, 756300 },
    { 597800, 622200 },
    { 730700, 689800 },
    },
--영비사막
    {
--A 2178 6272
    { 217800, 627200 },
--B 2219 5027
    { 221900, 502700 },
--C 3440 5025
    { 344000, 502500 },
    },
--서한산
    {
--A 4342 2906
    { 434200, 290600 },
--B 3752 1749
    { 375200, 174900 },
--C 4918 1736
    { 491800, 173600 },
    },
}

special.devil_tower = 
{
    --{ 123, 608 },
    { 2048+126, 6656+384 },
    { 2048+134, 6656+147 },
    { 2048+369, 6656+629 },
    { 2048+369, 6656+401 },
    { 2048+374, 6656+167 },
    { 2048+579, 6656+616 },
    { 2048+578, 6656+392 },
    { 2048+575, 6656+148 },
}

special.lvq_map = {
    { -- "A1" 1
        {},
    
        { { 440, 565 }, { 460, 771 }, { 668, 800 },},
        { { 440, 565 }, { 460, 771 }, { 668, 800 },},
        { { 440, 565 }, { 460, 771 }, { 668, 800 },},
        {{496, 401}, {494, 951}, {542, 1079}, {748, 9741},},
        {{496, 401}, {494, 951}, {542, 1079}, {748, 9741},},
        {{496, 401}, {494, 951}, {542, 1079}, {748, 9741},},
        {{496, 401}, {494, 951}, {542, 1079}, {748, 9741},},
        {{496, 401}, {494, 951}, {542, 1079}, {748, 9741},},
        {{496, 401}, {494, 951}, {542, 1079}, {748, 9741},},
        {{496, 401}, {494, 951}, {542, 1079}, {748, 9741},},
        
        {{496, 401}, {494, 951}, {542, 1079}, {748, 9741},},
        {{853,557}, {845,780}, {910,956},},
        {{853,557}, {845,780}, {910,956},},
        {{340, 179}, {692, 112}, {787, 256}, {898, 296},},
        {{340, 179}, {692, 112}, {787, 256}, {898, 296},},
        {{340, 179}, {692, 112}, {787, 256}, {898, 296},},
        {{340, 179}, {692, 112}, {787, 256}, {898, 296},},
        {{340, 179}, {692, 112}, {787, 256}, {898, 296},},
        {{340, 179}, {692, 112}, {787, 256}, {898, 296},},
        {{340, 179}, {692, 112}, {787, 256}, {898, 296},},
        
        {{224,395}, {137,894}, {206,830}, {266,1067},},
        {{224,395}, {137,894}, {206,830}, {266,1067},},
        {{224,395}, {137,894}, {206,830}, {266,1067},},
        {{405,74}},
        {{405,74}},
        {{405,74}},
        {{405,74}},
        {{405,74}},
        {{405,74}},
        {{405,74}},
        
        {{405,74}}, {{405,74}}, {{405,74}}, {{405,74}}, {{405,74}}, {{405,74}}, {{405,74}}, {{405,74}}, {{405,74}}, {{405,74}},
        
        {{405,74}}, {{405,74}}, {{405,74}}, {{405,74}}, {{405,74}}, {{405,74}}, {{405,74}}, {{405,74}}, {{405,74}},
    },


    { -- "A2" 2
        {},
        
        {{ 640,1437 }}, {{ 640,1437 }}, {{ 640,1437 }}, {{ 640,1437 }}, {{ 640,1437 }}, {{ 640,1437 }}, {{ 640,1437 }}, {{ 640,1437 }}, {{ 640,1437 }}, {{ 640,1437 }},
        
        {{ 640,1437 }}, {{ 640,1437 }}, {{ 640,1437 }}, {{ 640,1437 }}, {{ 640,1437 }}, {{ 640,1437 }}, {{ 640,1437 }}, {{ 640,1437 }}, {{ 640,1437 }}, {{ 640,1437 }},
        
        {{ 640,1437 }}, {{ 640,1437 }}, {{ 640,1437 }}, {{640,1437}}, {{640,1437}}, {{640,1437}}, {{640,1437}}, {{640,1437}}, {{640,1437}}, {{640,1437}},
        
        {{640,1437}}, {{640,1437}}, {{640,1437}}, {{640,1437}}, {{640,1437}}, {{640,1437}}, {{640,1437}}, {{640,1437}}, {{640,1437}}, {{640,1437}},
        
        {{640,1437}},
        {{640,1437}},
        {{640,1437}},
        {{244,1309}, {4567,1080}, {496,885}, {798,975}, {1059,1099}, {855,1351},},
        {{244,1309}, {4567,1080}, {496,885}, {798,975}, {1059,1099}, {855,1351},},
        {{244,1309}, {4567,1080}, {496,885}, {798,975}, {1059,1099}, {855,1351},},
        {{244,1309}, {4567,1080}, {496,885}, {798,975}, {1059,1099}, {855,1351},},
        {{193,772}, {390,402}, {768,600}, {1075,789}, {1338,813},},
        {{193,772}, {390,402}, {768,600}, {1075,789}, {1338,813},},
    },



    { -- "A3" 3
        {},

        {{ 948,804 }}, {{ 948,804 }}, {{ 948,804 }}, {{ 948,804 }}, {{ 948,804 }}, {{ 948,804 }}, {{ 948,804 }}, {{ 948,804 }}, {{ 948,804 }}, {{ 948,804 }},
        {{ 948,804 }}, {{ 948,804 }}, {{ 948,804 }}, {{ 948,804 }}, {{ 948,804 }}, {{ 948,804 }}, {{ 948,804 }}, {{ 948,804 }}, {{ 948,804 }}, {{ 948,804 }},

        {{ 948,804 }},
        {{ 948,804 }},
        {{ 948,804 }},
        {{438, 895}, {725, 864}, {632, 671},},
        {{438, 895}, {725, 864}, {632, 671},},
        {{438, 895}, {725, 864}, {632, 671},},
        {{438, 895}, {725, 864}, {632, 671},},
        {{438, 895}, {725, 864}, {632, 671},},
        {{847, 412}, {844, 854}, {823, 757}, {433, 407},},
        {{847, 412}, {844, 854}, {823, 757}, {433, 407},},
        {{847, 412}, {844, 854}, {823, 757}, {433, 407},},
        {{847, 412}, {844, 854}, {823, 757}, {433, 407},},
        {{847, 412}, {844, 854}, {823, 757}, {433, 407},},
        {{316,168}, {497,130}, {701,157}, {858,316},},
        {{316,168}, {497,130}, {701,157}, {858,316},},
        {{316,168}, {497,130}, {701,157}, {858,316},},
        {{316,168}, {497,130}, {701,157}, {858,316},},
        {{316,168}, {497,130}, {701,157}, {858,316},},
        {{316,168}, {497,130}, {701,157}, {858,316},},
        {{316,168}, {497,130}, {701,157}, {858,316},},
        {{200,277}, {130,646}, {211,638}, {291,851},},
        {{200,277}, {130,646}, {211,638}, {291,851},},
        {{200,277}, {130,646}, {211,638}, {291,851},},
        {{100,150}},
        {{100,150}},
        {{100,150}},
        {{100,150}},
        {{100,150}},
        {{100,150}},
    },

    {}, -- 4
    {}, -- 5
    {}, -- 6
    {}, -- 7
    {}, -- 8
    {}, -- 9
    {}, -- 10
    {}, -- 11
    {}, -- 12
    {}, -- 13
    {}, -- 14
    {}, -- 15
    {}, -- 16
    {}, -- 17
    {}, -- 18
    {}, -- 19
    {}, -- 20

    { -- "B1" 21
        {},
        
        {{412,635}, {629,428}, {829,586},},
        {{412,635}, {629,428}, {829,586},},
        {{412,635}, {629,428}, {829,586},},
        {{329,643}, {632,349}, {905,556},},
        {{329,643}, {632,349}, {905,556},},
        {{329,643}, {632,349}, {905,556},},
        {{329,643}, {632,349}, {905,556},},
        {{329,643}, {632,349}, {905,556},},
        {{329,643}, {632,349}, {905,556},},
        {{329,643}, {632,349}, {905,556},},

        {{329,643}, {632,349}, {905,556},},
        {{866,822}, {706,224}, {247,722},},
        {{866,822}, {706,224}, {247,722},},
        {{617,948}, {353,221},},
        {{617,948}, {353,221},},
        {{617,948}, {353,221},},
        {{617,948}, {353,221},},
        {{617,948}, {353,221},},
        {{617,948}, {353,221},},
        {{617,948}, {353,221},},
    
        {{496,1089}, {890,1043},},
        {{496,1089}, {890,1043},},
        {{496,1089}, {890,1043},},
        {{876,1127}},
        {{876,1127}},
        {{876,1127}},
        {{876,1127}},
        {{876,1127}},
        {{876,1127}},
        {{876,1127}},
    
        {{876,1127}}, {{876,1127}}, {{876,1127}}, {{876,1127}}, {{876,1127}},	{{876,1127}},	{{876,1127}},	{{876,1127}},	{{876,1127}}, {{876,1127}},
        {{876,1127}}, {{876,1127}}, {{876,1127}}, {{908,87}},	{{908,87}},		{{908,87}},		{{908,87}},		{{908,87}},		{{908,87}},
    },

    { -- "B2" 22
        {},

        {{ 95,819 }}, {{ 95,819 }}, {{ 95,819 }}, {{ 95,819 }}, {{ 95,819 }}, {{ 95,819 }}, {{ 95,819 }}, {{ 95,819 }}, {{ 95,819 }}, {{ 95,819 }},
        {{ 95,819 }}, {{ 95,819 }}, {{ 95,819 }}, {{ 95,819 }}, {{ 95,819 }}, {{ 95,819 }}, {{ 95,819 }}, {{ 95,819 }}, {{ 95,819 }}, {{ 95,819 }},
        {{ 95,819 }}, {{ 95,819 }}, {{ 95,819 }}, {{746,1438}}, {{746,1438}}, {{746,1438}}, {{746,1438}}, {{746,1438}}, {{746,1438}}, {{746,1438}},
        {{746,1438}}, {{746,1438}}, {{746,1438}}, {{746,1438}}, {{746,1438}}, {{746,1438}}, {{746,1438}}, {{746,1438}}, {{746,1438}}, {{746,1438}},

        {{746,1438}},
        {{746,1438}},
        {{746,1438}},
        {{ 172,810}, {288,465}, {475,841}, {303,156}, {687,466},},
        {{ 172,810}, {288,465}, {475,841}, {303,156}, {687,466},},
        {{ 172,810}, {288,465}, {475,841}, {303,156}, {687,466},},
        {{ 172,810}, {288,465}, {475,841}, {303,156}, {687,466},},
        {{787,235}, {1209,382}, {1350,571}, {1240,852}, {1254,1126}, {1078,1285}, {727,1360},},
        {{787,235}, {1209,382}, {1350,571}, {1240,852}, {1254,1126}, {1078,1285}, {727,1360},},
    },


    { -- "B3" 23
        {},
        
        {{ 106,88 }}, {{ 106,88 }}, {{ 106,88 }}, {{ 106,88 }}, {{ 106,88 }}, {{ 106,88 }}, {{ 106,88 }}, {{ 106,88 }}, {{ 106,88 }}, {{ 106,88 }},
        {{ 106,88 }}, {{ 106,88 }}, {{ 106,88 }}, {{ 106,88 }}, {{ 106,88 }}, {{ 106,88 }}, {{ 106,88 }}, {{ 106,88 }}, {{ 106,88 }}, {{ 106,88 }},

         {{ 106,88 }},
        {{ 106,88 }},
        {{ 106,88 }},
        {{230, 244}, {200, 444}, {594, 408},},
        {{230, 244}, {200, 444}, {594, 408},},
        {{230, 244}, {200, 444}, {594, 408},},
        {{230, 244}, {200, 444}, {594, 408},},
        {{230, 244}, {200, 444}, {594, 408},},
        {{584,204}, {720,376}, {861,272},},
        {{584,204}, {720,376}, {861,272},},
        {{584,204}, {720,376}, {861,272},},
        {{584,204}, {720,376}, {861,272},},
        {{584,204}, {720,376}, {861,272},},
        {{566,694}, {349,574}, {198,645},},
        {{566,694}, {349,574}, {198,645},},
        {{566,694}, {349,574}, {198,645},},
        {{566,694}, {349,574}, {198,645},},
        {{566,694}, {349,574}, {198,645},},
        {{566,694}, {349,574}, {198,645},},
        {{566,694}, {349,574}, {198,645},},
        {{816,721}, {489,823},},
        {{816,721}, {489,823},},
        {{816,721}, {489,823},},
        {{772,140}},
        {{772,140}},
        {{772,140}},
        {{772,140}},
        {{772,140}},
        {{772,140}},
    },

    {}, -- 24
    {}, -- 25
    {}, -- 26
    {}, -- 27
    {}, -- 28
    {}, -- 29
    {}, -- 30
    {}, -- 31
    {}, -- 32
    {}, -- 33
    {}, -- 34
    {}, -- 35
    {}, -- 36
    {}, -- 37
    {}, -- 38
    {}, -- 39
    {}, -- 40

    { -- "C1" 41
        {},

        {{385,446}, {169,592}, {211,692}, {632,681},},
        {{385,446}, {169,592}, {211,692}, {632,681},},
        {{385,446}, {169,592}, {211,692}, {632,681},},
        {{385,374}, {227,815}, {664,771},},
        {{385,374}, {227,815}, {664,771},},
        {{385,374}, {227,815}, {664,771},},
        {{385,374}, {227,815}, {664,771},},
        {{385,374}, {227,815}, {664,771},},
        {{385,374}, {227,815}, {664,771},},
        {{385,374}, {227,815}, {664,771},},
        
        {{385,374}, {227,815}, {664,771},},
        {{169,362}, {368,304}, {626,409}, {187,882}, {571,858},},
        {{169,362}, {368,304}, {626,409}, {187,882}, {571,858},},
        {{178,275}, {365,242}, {644,313}, {194,950}, {559,936},},
        {{178,275}, {365,242}, {644,313}, {194,950}, {559,936},},
        {{178,275}, {365,242}, {644,313}, {194,950}, {559,936},},
        {{178,275}, {365,242}, {644,313}, {194,950}, {559,936},},
        {{178,275}, {365,242}, {644,313}, {194,950}, {559,936},},
        {{178,275}, {365,242}, {644,313}, {194,950}, {559,936},},
        {{178,275}, {365,242}, {644,313}, {194,950}, {559,936},},
        
        {{452,160}, {536,1034}, {184,1044},},
        {{452,160}, {536,1034}, {184,1044},},
        {{452,160}, {536,1034}, {184,1044},},
        {{137,126}},
        {{137,126}},
        {{137,126}},
        {{137,126}},
        {{137,126}},
        {{137,126}},
        {{137,126}},
        
        {{137,126}}, {{137,126}}, {{137,126}}, {{137,126}}, {{137,126}}, {{137,126}}, {{137,126}}, {{137,126}}, {{137,126}}, {{137,126}},
        {{137,126}}, {{137,126}}, {{137,126}}, {{137,126}}, {{137,126}}, {{137,126}}, {{137,126}}, {{137,126}}, {{137,126}},
    },

    { -- "C2" 42
        {},

        {{1409,139}}, {{1409,139}}, {{1409,139}}, {{1409,139}}, {{1409,139}}, {{1409,139}}, {{1409,139}}, {{1409,139}}, {{1409,139}}, {{1409,139}},
        {{1409,139}}, {{1409,139}}, {{1409,139}}, {{1409,139}}, {{1409,139}}, {{1409,139}}, {{1409,139}}, {{1409,139}}, {{1409,139}}, {{1409,139}},
        {{1409,139}}, {{1409,139}}, {{1409,139}}, {{1409,139}}, {{1409,139}}, {{1409,139}}, {{1409,139}}, {{1409,139}}, {{1409,139}}, {{1409,139}},
        {{1409,139}}, {{1409,139}}, {{1409,139}}, {{1409,139}}, {{1409,139}}, {{1409,139}}, {{1409,139}}, {{1409,139}}, {{1409,139}}, {{1409,139}},
    
        {{1409,139}},
        {{1409,139}},
        {{1409,139}},
        {{991,222}, {1201,525}, {613,232}, {970,751}, {1324,790},},
        {{991,222}, {1201,525}, {613,232}, {970,751}, {1324,790},},
        {{991,222}, {1201,525}, {613,232}, {970,751}, {1324,790},},
        {{991,222}, {1201,525}, {613,232}, {970,751}, {1324,790},},
        {{192,211}, {247,600}, {249,882}, {987,981}, {1018,1288}, {1303,1174},},
        {{192,211}, {247,600}, {249,882}, {987,981}, {1018,1288}, {1303,1174},},
    },

    { -- "C3" 43
        {},

        {{901,151}}, {{901,151}}, {{901,151}}, {{901,151}}, {{901,151}}, {{901,151}}, {{901,151}}, {{901,151}}, {{901,151}}, {{901,151}},
        {{901,151}}, {{901,151}}, {{901,151}}, {{901,151}}, {{901,151}}, {{901,151}}, {{901,151}}, {{901,151}}, {{901,151}}, {{901,151}},
    
        {{901,151}},
        {{901,151}},
        {{901,151}},
        {{421, 189}, {167, 353},},
        {{421, 189}, {167, 353},},
        {{421, 189}, {167, 353},},
        {{421, 189}, {167, 353},},
        {{421, 189}, {167, 353},},
        {{679,459}, {505,709},},
        {{679,459}, {505,709},},
        {{679,459}, {505,709},},
        {{679,459}, {505,709},},
        {{679,459}, {505,709},},
        {{858,638}, {234,596},},
        {{858,638}, {234,596},},
        {{858,638}, {234,596},},
        {{858,638}, {234,596},},
        {{858,638}, {234,596},},
        {{858,638}, {234,596},},
        {{858,638}, {234,596},},
        {{635,856}, {324,855},},
        {{635,856}, {324,855},},
        {{635,856}, {324,855},},
        {{136,899}},
        {{136,899}},
        {{136,899}},
        {{136,899}},
        {{136,899}},
        {{136,899}},
    },

    {}, -- 44
    {}, -- 45
    {}, -- 46
    {}, -- 47
    {}, -- 48
    {}, -- 49
    {}, -- 50
    {}, -- 51
    {}, -- 52
    {}, -- 53
    {}, -- 54
    {}, -- 55
    {}, -- 56
    {}, -- 57
    {}, -- 58
    {}, -- 59
    {}, -- 60
}

function BuildSkillList(job, group)
    local skill_vnum_list = {}
    local skill_name_list = {}

    if pc.get_skill_group() != 0 then
        local skill_list = special.active_skill_list[job+1][group]
                
        table.foreachi( skill_list,
            function(i, t)
                local lev = pc.get_skill_level(t)

                if lev > 0 then
                    local name = locale.GM_SKILL_NAME_DICT[t]

                    if name != nil then
                        table.insert(skill_vnum_list, t)
                        table.insert(skill_name_list, name)
                    end
                end
            end
        )
    end

    table.insert(skill_vnum_list, 0)
    table.insert(skill_name_list, gameforge.locale.cancel)

    return { skill_vnum_list, skill_name_list }
end

--BEGIN EDIT created for Heavens cave pre event, Arne 23Sept09
-- Table for storing character names,
char_name_list = {}
   char_name_list[1] = {}
   char_name_list[2] = {}
   char_name_list[3] = {}
   char_name_list[4] = {}
   char_name_list[5] = {}
   char_name_list[6] = {}
   char_name_list[7] = {}
   char_name_list[8] = {}
   char_name_list[9] = {}
   char_name_list[10] = {}

--no return, just used for storing a name into the list
function store_charname_by_id(id, charname, charid)
       char_name_list[id]["name"] = charname
       char_name_list[id]["eid"] = charid
    return nil
end

-- returns the name of a given list item, id is the highscore slot
function return_charname_by_id(charid)
    local counter = 11
    repeat
        counter = counter -1
    until char_name_list[counter]["eid"] == charid
    return char_name_list[counter]["name"]
end

 function get_map_name_by_number(number)
map_name = {
--EmpireNr-MapNrs
        [1] = {[1] = gameforge.functions._100_say, [2] = gameforge.functions._130_say, [3] = gameforge.functions._130_say,  [4] = gameforge.functions._160_say, [61] = gameforge.functions._200_say, [62] = gameforge.functions._210_say, [63] = gameforge.functions._220_say, [64] = gameforge.functions._190_say, [65] = gameforge.functions._230_say, [72] = gameforge.functions._240_say, [73] = gameforge.functions._240_say,},
        [2] = {[1] = gameforge.functions._110_say, [2] = gameforge.functions._140_say, [3] = gameforge.functions._140_say,  [4] = gameforge.functions._170_say, [61] = gameforge.functions._200_say, [62] = gameforge.functions._210_say, [63] = gameforge.functions._220_say, [64] = gameforge.functions._190_say, [65] = gameforge.functions._230_say, [72] = gameforge.functions._240_say, [73] = gameforge.functions._240_say,},
        [3] = {[1] = gameforge.functions._120_say, [2] = gameforge.functions._150_say, [3] = gameforge.functions._150_say,  [4] = gameforge.functions._180_say, [61] = gameforge.functions._200_say, [62] = gameforge.functions._210_say, [63] = gameforge.functions._220_say, [64] = gameforge.functions._190_say, [65] = gameforge.functions._230_say, [72] = gameforge.functions._240_say, [73] = gameforge.functions._240_say,},
}
    return map_name[pc.get_empire()][number]
end
--END EDIT 

PREMIUM_EXP             = 0
PREMIUM_ITEM            = 1
PREMIUM_SAFEBOX         = 2
PREMIUM_AUTOLOOT        = 3
PREMIUM_FISH_MIND       = 4
PREMIUM_MARRIAGE_FAST   = 5
PREMIUM_GOLD            = 6

-- point type start
POINT_NONE                 = 0
POINT_LEVEL                = 1
POINT_VOICE                = 2
POINT_EXP                  = 3
POINT_NEXT_EXP             = 4
POINT_HP                   = 5
POINT_MAX_HP               = 6
POINT_SP                   = 7
POINT_MAX_SP               = 8  
POINT_STAMINA              = 9  --스테미너
POINT_MAX_STAMINA          = 10 --최대 스테미너

POINT_GOLD                 = 11
POINT_ST                   = 12 --근력
POINT_HT                   = 13 --체력
POINT_DX                   = 14 --민첩성
POINT_IQ                   = 15 --정신력
POINT_DEF_GRADE			= 16
POINT_ATT_SPEED            = 17 --공격속도
POINT_ATT_GRADE			= 18 --공격력 MAX
POINT_MOV_SPEED            = 19 --이동속도
POINT_CLIENT_DEF_GRADE		= 20 --방어등급
POINT_CASTING_SPEED        = 21 --주문속도 (쿨다운타임*100) / (100 + 이값) = 최종 쿨다운 타임
POINT_MAGIC_ATT_GRADE      = 22 --마법공격력
POINT_MAGIC_DEF_GRADE      = 23 --마법방어력
POINT_EMPIRE_POINT         = 24 --제국점수
POINT_LEVEL_STEP           = 25 --한 레벨에서의 단계.. (1 2 3 될 때 보상 4 되면 레벨 업)
POINT_STAT                 = 26 --능력치 올릴 수 있는 개수
POINT_SUB_SKILL			= 27 --보조 스킬 포인트
POINT_SKILL				= 28 --액티브 스킬 포인트
POINT_WEAPON_MIN			= 29 --무기 최소 데미지
POINT_WEAPON_MAX			= 30 --무기 최대 데미지
POINT_PLAYTIME             = 31 --플레이시간
POINT_HP_REGEN             = 32 --HP 회복률
POINT_SP_REGEN             = 33 --SP 회복률

POINT_BOW_DISTANCE         = 34 --활 사정거리 증가치 (meter)

POINT_HP_RECOVERY          = 35 --체력 회복 증가량
POINT_SP_RECOVERY          = 36 --정신력 회복 증가량

POINT_POISON_PCT           = 37 --독 확률
POINT_STUN_PCT             = 38 --기절 확률
POINT_SLOW_PCT             = 39 --슬로우 확률
POINT_CRITICAL_PCT         = 40 --크리티컬 확률
POINT_PENETRATE_PCT        = 41 --관통타격 확률
POINT_CURSE_PCT            = 42 --저주 확률

POINT_ATTBONUS_HUMAN       = 43 --인간에게 강함
POINT_ATTBONUS_ANIMAL      = 44 --동물에게 데미지 % 증가
POINT_ATTBONUS_ORC         = 45 --웅귀에게 데미지 % 증가
POINT_ATTBONUS_MILGYO      = 46 --밀교에게 데미지 % 증가
POINT_ATTBONUS_UNDEAD      = 47 --시체에게 데미지 % 증가
POINT_ATTBONUS_DEVIL       = 48 --마귀(악마)에게 데미지 % 증가
POINT_ATTBONUS_INSECT      = 49 --벌레족
POINT_ATTBONUS_FIRE        = 50 --화염족
POINT_ATTBONUS_ICE         = 51 --빙설족
POINT_ATTBONUS_DESERT      = 52 --사막족
POINT_ATTBONUS_MONSTER     = 53 --모든 몬스터에게 강함
POINT_ATTBONUS_WARRIOR     = 54 --무사에게 강함
POINT_ATTBONUS_ASSASSIN	= 55 --자객에게 강함
POINT_ATTBONUS_SURA		= 56 --수라에게 강함
POINT_ATTBONUS_SHAMAN		= 57 --무당에게 강함

-- ADD_TRENT_MONSTER
POINT_ATTBONUS_TREE     	= 58 --나무에게 강함 20050729.myevan UNUSED5 
-- END_OF_ADD_TRENT_MONSTER
POINT_RESIST_WARRIOR		= 59 --무사에게 저항
POINT_RESIST_ASSASSIN		= 60 --자객에게 저항
POINT_RESIST_SURA			= 61 --수라에게 저항
POINT_RESIST_SHAMAN		= 62 --무당에게 저항

POINT_STEAL_HP             = 63 --생명력 흡수
POINT_STEAL_SP             = 64 --정신력 흡수

POINT_MANA_BURN_PCT        = 65 --마나 번

--/ 피해시 보너스 =/

POINT_DAMAGE_SP_RECOVER    = 66 --공격당할 시 정신력 회복 확률

POINT_BLOCK                = 67 --블럭율
POINT_DODGE                = 68 --회피율

POINT_RESIST_SWORD         = 69
POINT_RESIST_TWOHAND       = 70
POINT_RESIST_DAGGER        = 71
POINT_RESIST_BELL          = 72
POINT_RESIST_FAN           = 73
POINT_RESIST_BOW           = 74  --화살   저항   : 대미지 감소
POINT_RESIST_FIRE          = 75  --화염   저항   : 화염공격에 대한 대미지 감소
POINT_RESIST_ELEC          = 76  --전기   저항   : 전기공격에 대한 대미지 감소
POINT_RESIST_MAGIC         = 77  --술법   저항   : 모든술법에 대한 대미지 감소
POINT_RESIST_WIND          = 78  --바람   저항   : 바람공격에 대한 대미지 감소

POINT_REFLECT_MELEE        = 79 --공격 반사

--/ 특수 피해시 =/
POINT_REFLECT_CURSE		= 80 --저주 반사
POINT_POISON_REDUCE		= 81 --독데미지 감소

--/ 적 소멸시 =/
POINT_KILL_SP_RECOVER		= 82 --적 소멸시 MP 회복
POINT_EXP_DOUBLE_BONUS		= 83
POINT_GOLD_DOUBLE_BONUS		= 84
POINT_ITEM_DROP_BONUS		= 85

--/ 회복 관련 =/
POINT_POTION_BONUS			= 86
POINT_KILL_HP_RECOVERY		= 87

POINT_IMMUNE_STUN			= 88
POINT_IMMUNE_SLOW			= 89
POINT_IMMUNE_FALL			= 90
--========

POINT_PARTY_ATTACKER_BONUS		= 91
POINT_PARTY_TANKER_BONUS		= 92

POINT_ATT_BONUS			= 93
POINT_DEF_BONUS			= 94

POINT_ATT_GRADE_BONUS		= 95
POINT_DEF_GRADE_BONUS		= 96
POINT_MAGIC_ATT_GRADE_BONUS	= 97
POINT_MAGIC_DEF_GRADE_BONUS	= 98

POINT_RESIST_NORMAL_DAMAGE		= 99

POINT_HIT_HP_RECOVERY		= 100
POINT_HIT_SP_RECOVERY 		= 101
POINT_MANASHIELD			= 102 --흑신수호 스킬에 의한 마나쉴드 효과 정도

POINT_PARTY_BUFFER_BONUS		= 103
POINT_PARTY_SKILL_MASTER_BONUS	= 104

POINT_HP_RECOVER_CONTINUE		= 105
POINT_SP_RECOVER_CONTINUE		= 106

POINT_STEAL_GOLD			= 107 
POINT_POLYMORPH			= 108 --변신한 몬스터 번호
POINT_MOUNT				= 109 --타고있는 몬스터 번호

POINT_PARTY_HASTE_BONUS		= 110
POINT_PARTY_DEFENDER_BONUS		= 111
POINT_STAT_RESET_COUNT		= 112 --피의 단약 사용을 통한 스텟 리셋 포인트 (1당 1포인트 리셋가능)

POINT_HORSE_SKILL			= 113

POINT_MALL_ATTBONUS		= 114 --공격력 +x%
POINT_MALL_DEFBONUS		= 115 --방어력 +x%
POINT_MALL_EXPBONUS		= 116 --경험치 +x%
POINT_MALL_ITEMBONUS		= 117 --아이템 드롭율 x/10배
POINT_MALL_GOLDBONUS		= 118 --돈 드롭율 x/10배

POINT_MAX_HP_PCT			= 119 --최대생명력 +x%
POINT_MAX_SP_PCT			= 120 --최대정신력 +x%

POINT_SKILL_DAMAGE_BONUS		= 121 --스킬 데미지 *(100+x)%
POINT_NORMAL_HIT_DAMAGE_BONUS	= 122 --평타 데미지 *(100+x)%

-- DEFEND_BONUS_ATTRIBUTES
POINT_SKILL_DEFEND_BONUS		= 123 --스킬 방어 데미지
POINT_NORMAL_HIT_DEFEND_BONUS	= 124 --평타 방어 데미지
-- END_OF_DEFEND_BONUS_ATTRIBUTES

-- PC_BANG_ITEM_ADD 
POINT_PC_BANG_EXP_BONUS		= 125 --PC방 전용 경험치 보너스
POINT_PC_BANG_DROP_BONUS		= 126 --PC방 전용 드롭률 보너스
-- END_PC_BANG_ITEM_ADD
-- POINT_MAX_NUM = 128	common/length.h
-- point type start


function input_number (sentence)
     say (sentence)
     local n = nil
     while n == nil do
         n = tonumber (input())
         if n != nil then
             break
         end
         say ("input number")
     end
     return n
 end
ITEM_NONE = 0
ITEM_WEAPON = 1
ITEM_ARMOR = 2

WEAPON_SWORD = 0
WEAPON_DAGGER = 1
WEAPON_BOW = 2
WEAPON_TWO_HANDED = 3
WEAPON_BELL = 4
WEAPON_FAN = 5
WEAPON_ARROW = 6
WEAPON_MOUNT_SPEAR = 7

--dofile( get_locale_base_path() .. "/quest/GFquestlib.lua")

function get_today_count(questname, flag_name)
    local today = math.floor(get_global_time() / 86400)
    local today_flag = flag_name.."_today"
    local today_count_flag = flag_name.."_today_count"
    local last_day = pc.getf(questname, today_flag)
    if last_day == today then
        return pc.getf(questname, today_count_flag)
    else
        return 0
    end
end
-- "$flag_name"_today unix_timestamp % 86400
-- "$flag_name"_count count
function inc_today_count(questname, flag_name, count)
    local today = math.floor(get_global_time() / 86400)
    local today_flag = flag_name.."_today"
    local today_count_flag = flag_name.."_today_count"
    local last_day = pc.getqf(questname, today_flag)
    if last_day == today then
        pc.setf(questname, today_count_flag, pc.getf(questname, today_count_flag) + 1)
    else
        pc.setf(questname, today_flag, today)
        pc.setf(questname, today_count_flag, 1)
    end
end

-- This function will return true always in window os,
-- but not in freebsd.
-- (In window os, RAND_MAX = 0x7FFF = 32767.)
-- function drop_gamble_with_flag(drop_flag)
        -- local dp, range = pc.get_killee_drop_pct()
        -- dp = 40000 * dp / game.get_event_flag(drop_flag)
        -- if dp < 0 or range < 0 then
            -- return false
        -- end
        -- return dp >= number(1, range)
-- end

-- "Fix"
function drop_gamble_with_flag(drop_flag)
	local drop_chance = game.get_event_flag(drop_flag)
	if drop_chance < 1 or drop_chance > 100 then
		drop_chance = 10
	end
	return drop_chance >= number(1, 100)
end


function say_npc()
	say_title(""..mob_name(npc.get_race())..":")
end
