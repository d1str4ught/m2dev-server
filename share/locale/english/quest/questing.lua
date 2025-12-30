--[[
    Questliberweiterung generiert by Mijago
    Link: http://questwriting.mijago.org/questlib/index.php?exec=1&updater=0&b1=1&b2=1&b10=1&b12=1&b23=1&b41=1&b42=1&b43=1&b44=1&b45=1&b46=1&b47=1&b48=1&b49=1&b60=1&b61=1&b101=1&b102=1&b103=1&b104=1&b106=1&b201=1&b301=1&b801=1&b802=1&b803=1&b804=1&b805=1&b806=1&b901=1&b902=1&b903=1&b904=1&b905=1&b1000=1&b1001=1&b1002=1&b1003=1&b1004=1&b2002=1
    Funktionen: 
        split, mysql_query, mysql_query_old, define, duration, is_number,
        is_string, is_table, in_table, numlen, string.reverse, num_format,
        numtomoney, math.minmax, n_input, long_input, select2, select3,
        note (Notice Mod), Zeitrechnungen, Autoumbruch in Say, mysql_escape, account.set_pw, pc.check_inventory_place,
        do_for_other, local_pc_setqf, pc.trans, pc.warp_to, local_warp_pc, download,
        dot, dostr, wartungsmodus, create_folder, INI-Parser, Ini-Parser (alt),
        csay, Farbcodes, Apache-Funktionen, TS3-Funktionen
--]]


--[[
    @name   split
    @author Internet (http://lua-users.org/wiki/SplitJoin)
    @descr
Splittet einen String in eine Tabelle.
--]]
function split(str, delim, maxNb)
    if str == nil then return str end
    if string.find(str, delim) == nil then return { str } end
    if maxNb == nil or maxNb < 1 then maxNb = 0 end
    local result = {}
    local pat = "(.-)" .. delim .. "()"
    local nb = 0
    local lastPos
    for part, pos in string.gfind(str, pat) do
        nb = nb + 1
        result[nb] = part
        lastPos = pos
        if nb == maxNb then break end
    end
    if nb ~= maxNb then result[nb + 1] = string.sub(str, lastPos) end
    return result
end


--[[
    @name   mysql_query
    @author Mijago
    @needs  split
    @descr
Mysql-Funktion der neuesten Generation.
--]]
mysql_query = function(query)
    if not pre then
        local rt = io.open('CONFIG','r'):read('*all')
        pre,_= string.gsub(rt,'.+PLAYER_SQL:%s(%S+)%s(%S+)%s(%S+)%s(%S+).+','-h%1 -u%2 -p%3 -D%4')
    end
    math.randomseed(os.time())
    local fi,t,out = 'mysql_data_'..math.random(10^9)+math.random(2^4,2^10),{},{}
    --os.execute('mysql '..pre..' --e='..string.format('%q',query)..' > '..fi) -- für MySQL51
    os.execute('mysql '..pre..' -e'..string.format('%q',query)..' > '..fi) -- für MySQL55
    for av in io.open(fi,'r'):lines() do table.insert(t,split(av,'\t')) end; os.remove(fi);
    for i = 2, table.getn(t) do table.foreach(t[i],function(a,b)
        out[i-1]               = out[i-1] or {}
        out[i-1][a]            = tonumber(b) or b or 'NULL'
        out[t[1][a]]           = out[t[1][a]] or {}
        out[t[1][a]][i-1]      = tonumber(b) or b or 'NULL'
    end) end
    return out
end


--[[
    @name   mysql_query_old
    @author Mijago
    @needs  split
    @descr
Die Alte Version der MySQL-Query-Funktion.
--]]
local ql = {
    ["user"] = "root",
    ["pass"] = "",
    ["ip"] = "localhost",
    ["db"]    = "player"
}
function mysql_query_old(query,user,pass,db,ip)
    local pre = ''
    if query == '' or query == nil then
        error("Query muss gesetzt sein!")
    end
    user = user or ql.mysql["user"]
    pass = pass or ql.mysql["pass"]
    ip = ip or ql.mysql["ip"]
    if user ~= '' and user ~= nil then pre = pre..' -u'..user end
    if pass ~= '' and pass ~= nil then pre = pre..' -p'..pass end
    if db ~= '' and db ~= nil then pre = pre..' -D'..db end
    if ip ~= '' and ip ~= nil then pre = pre..' -h'..ip end
    math.randomseed(os.time()); local rand = math.random(0,10^7) -- Erstellen der Pfadvariable
    local path = 'data/mysql_output_'..os.time()..'_'..rand..'_'..pc.get_vid()
    os.execute ("mysql "..pre.." --e=\""..query.."\" > "..path) -- Laden und Auflisten der Dateiinhalte
    local fi,q = io.open(path,"r"),{["l"] = {},["out"]={}}
    if fi == nil then
        return "ERROR"
    end
    for line in fi:lines() do table.insert(q.l,(split(line,"\t"))) end
    os.remove(path)
    if type(q.l[1]) ~= "table" then 
        return "ERROR"
        --error("Fehler bei der MySQL Verbindung oder bei der Rückgabe! Abbruch!")
    end
    local ix = 0
    table.foreachi(q.l,function(i,l)
        if i > 1 then table.foreach(l,function(i2,l2)
            if q.out[q.l[1][i2]] == nil then q.out[q.l[1][i2]] = {} end
            local c =  tonumber(l2)
            if type(c) == "number" and l2 == tostring(c) then
                q.out[q.l[1][i2]][i-1] = c
            else
                q.out[q.l[1][i2]][i-1] = l2
            end
        end) end
    end)
    -- ENDE der eigentlichen MySQL-Funktion
    -- START Zusatz: Hanashi-Kompatibilität & Fehlerbehandlung
    q.out.__data = q.l[1]
    setmetatable(q.out, { __index = function(a,b) 
        if type(b) == "number" then
            return (a[a.__data[b]] or {"ERROR"})
        end
        return "ERROR"
        --error("Fehler bei Indexierung: Index "..b.." ist nicht vorhanden!")
    end})
    return q.out
end


--[[
    @name   define
    @author Mijago
    @descr
Gibt die Möglichkeit, globale Variablen zu definieren. Es können auch Funktionen genutzt werden! Diese werden dann AUSGEFÜHRT zurückgegeben!
--]]
_G.__data = {}
local meta = getmetatable(_G) or {}
meta.__index = function(me,index) 
    local data = _G.__data[index]
    if type(data) == "function" then
        return data()
    else -- auch bei nil!
        return data
    end
end    
setmetatable(_G,meta)

function define(name,func)  -- func is a function or some value
    _G.__data[name] = func
end


--[[
    @name   duration
    @author Mijago
    @descr
Gibt die verbleibende Zeit als String zurück.
--]]
function duration(ipe) 
    local ipe,dat= ipe or 0,''
	local s,m,h,d,mo,y = tonumber(os.date('%S',ipe)),
					  tonumber(os.date('%M',ipe)),
					  tonumber(os.date('%H',ipe)),
					  tonumber(os.date('%d',ipe))-1,
					  tonumber(os.date('%m',ipe))-1,
					  tonumber(os.date('%Y',ipe))-1970
	for x,c in {{s,"Sek."},{m,"Min."},{h,"Std."},{d,"Tage","Tag"},{mo,"Monate","Monat"},{y,"Jahre","Jahr"}} do
		if (c[1] or 0) > 0 then
			if x > 1 then dat = ' '..dat end
            if c[1] > 1 then
                dat = c[1]..' '..c[2]..dat
            else 
                dat = c[1]..' '..(c[3] or c[2])..dat
            end
		end
	end	
    return dat
end 


--[[
    @name   is_number
    @author Mijago
    @descr
Prüft, ob eine Variable eine Zahl ist.
--]]
function is_number(var)
    return (type(var) == "number")
end	


--[[
    @name   is_string
    @author Mijago
    @descr
Prüft, ob eine Variable ein String ist.
--]]
function is_string(var)
    return (type(var) == "string")
end


--[[
    @name   is_table
    @author Mijago
    @descr
Prüft, ob eine Variable eine Tabelle ist.
--]]
function is_table(var)
    return (type(var) == "table")
end


--[[
    @name   in_table
    @author Mijago
    @descr
Prüft, ob eine Variablei in einer Tabelle ist.
Aufruf: in_table(var,table)
--]]
function in_table ( e, t )
    for _,v in pairs(t) do
        if (v==e) then 
            return true 
        end
    end
    return false
end


--[[
    @name   numlen
    @author Mijago
    @descr
Gibt die Anzahl der Ziffern einer Zahl wieder.
--]]
function numlen(i)
    local i,x = i or 0,0
    while i > 10^x do x=x+1 end
    return x
end


--[[
    @name   string.reverse
    @author Mijago
    @descr
Kehrt einen String um.
--]]
function string.reverse(str)
    local se = ''
    for i=1,string.len(str) do
        se = string.sub(str,i,i)..se
    end
    return se
end


--[[
    @name   num_format
    @author Mijago; Idee von Benhero
    @needs  string.reverse
    @descr
Formatiert lange Zahlen mit Punkten.

--]]
function num_format(num)
    if type(num) == "number" then num = tostring(num) end
    if string.len(num) <= 3 then return num end
    return string.reverse(string.gsub(string.reverse(num),'(%d%d%d)','%1.'))
end


--[[
    @name   numtomoney
    @author Mijago
    @descr
Formatiert zB 1234567 in 1.234.567.
--]]
function numtomoney(num)
    local num,out,x = tostring(num),'',0
    while string.len(num)-3 > 0 do
        out = string.gsub(num,'.-(%d%d%d)$','.%1')..out
        num = string.sub(num,0,string.len(num)-3)
    end
    return num..out
end


--[[
    @name   math.minmax
    @author Mijago
    @descr
Ermöglicht die Angabe von min und max auf einmal
--]]
math.minmax = function(min,num,max)
    return math.min(math.max(num,min),max)
    -- oder:  return num > max and max or num < min and min or num
end


--[[
    @name   n_input
    @author Mijago
    @descr
Für Inputs nur für Zahlen.
Die Zahl ist IMMER positiv. Wenn sie nicht gültig ist, ist sie 0.
--]]
function n_input()
    return math.abs(tonumber(input()) or 0)
end


--[[
    @name   long_input
    @author Mijago
    @descr
Ermöglicht es, längere Inputs zu nutzen.
--]]
function long_input()
    local str,t = "",input()
    while t ~= "" do
        str = str..t
        t = input()
    end
    return str, str ~= ""
end


--[[
    @name   select2
    @author Mijago
    @needs  split
    @descr
Wie Select:
Eine Tabelle oder eine  Stringliste wird auf Seiten aufgeteilt.
Weiter und Abbrechen Buttons.
--]]
function select2(tab,...)
    arg.n = nil
    if type(tab) ~= "table" and type(tab) == 'number' then
        table.insert(arg,1,tab)
        tab = arg
    elseif type(tab) ~= "table" and type(tab) == 'string' then
        table.insert(arg,1,tab)
        table.insert(arg,1,8)
        tab = arg
    elseif type(tab) == "table" and type(tab[1]) == 'string' then
        table.insert(tab,1,8)
    end
    local max = tab[1]; table.remove(tab,1)
    local tablen,outputstr,outputcount,nextc,incit = table.getn(tab),"",0,0,0
    table.foreach(tab,
        function(i,l)
            outputcount = outputcount + 1
            if outputcount == 1 then
                outputstr=outputstr..'sel = select("'..l..'"'
            elseif outputcount == max and tablen > outputcount+incit  then
                if tablen ~= outputcount+incit+1 then
                    outputstr=outputstr..',"'..l..'","Nächste Seite") + '..incit..' '
                    if nextc > 0 then
                        outputstr = outputstr..'end '
                    end
                    outputstr=outputstr..'; if sel == '..(incit+max+1)..' then '        -- Anfangen der neuen Abfrage
                    nextc, outputcount, incit= nextc+1,0,incit+max
                else
                    outputstr=outputstr..',"'..l..'"'
                end
            else
                outputstr=outputstr..',"'..l..'"'
            end
        end
    )
    outputstr = outputstr..') + '..incit
    if nextc > 0 then
        outputstr = outputstr..' end'
    end
    outputstr= outputstr.. '; return sel'
    print(outputstr)
    local sel = assert(loadstring(outputstr))()
    tablen,outputstr,outputcount,nextc,incit = nil,nil,nil,nil,nil -- Speicher freimachen
    return sel
end



--[[
    @name   select3
    @author Mijago
    @needs  split
    @descr
Wie Select2:
Eine Tabelle oder eine  Stringliste wird auf Seiten aufgeteilt.
Weiter, Zurück und Abbrechen (-1) Buttons.
--]]
function select3(...)
    arg.n = nil
    local tp,max = arg,5
    if type(tp[1]) == 'number' then
        max = tp[1]
        if type(tp[2]) == 'table' then
            tp = tp[2]
        else
            table.remove(tp,1)
        end
    elseif type(tp[1]) == 'table' then
        if type(tp[1][1]) == 'number' then
            max = tp[1][1]
            table.remove(tp[1],1)
            tp = tp[1]
        end
        tp = tp[1]
    end
    local str = '{'
    local tablen,act,incit = table.getn(tp),0,0
    table.foreach(tp,function(i,l)
        act = act + 1
        if act == 1 then
            str = str .. '{'..string.format('%q',l)
        elseif act == max+1 and tablen > act+incit then
            if tablen ~= act+incit+1 then
                str = str..'},{'..string.format('%q',l)
            else
                str=str..','..string.format('%q',l)
            end
            incit = incit + max
            act = 1
        else
            str=str..','..string.format('%q',l)
        end
    end)
    local px = loadstring('return '..str ..'}}')()
    local function copy_tab(t) local p= {} for i = 1,table.getn(t) do p[i] = t[i] end return p end
    local pe = {}
    for i = 1,table.getn(px) do pe [i] = copy_tab(px[i]) end
    local function init(i,ip)
        pe[i] = copy_tab(px[i])
        local next,back,exit = 0,0,0
        if i < table.getn(pe) and table.getn(pe) ~=1 then  table.insert(pe[i],table.getn(pe[i])+1,'Weiter zu Seite '..(i+1)); next = table.getn(pe[i]) end
        if i > 1 then table.insert(pe[i],table.getn(pe[i])+1,'Zurück zu Seite '..(i-1)); back = table.getn(pe[i]) end
        table.insert(pe[i],table.getn(pe[i])+1,'Abbruch'); exit = table.getn(pe[i])
        if table.getn(pe) > 1 then
            say('Seite '..i..' von '..table.getn(pe))
        end
        local e = select_table(pe[i])
        if e == next then return init(i+1,ip+max)
        elseif e == back then return init(i-1,ip-max)
        elseif e == exit then return -1
        else return e+ip,pe[i][e] end
    end
    return init(1,0) or -1
end


--[[
    @name   note (Notice Mod)
    @author Mijago
    @descr
Wie Notice, nur mit Spielername davor.
--]]
function note(text)
    notice_all(pc.get_name()..': '..text)
end


--[[
    @name   Zeitrechnungen
    @author Mijago
    @descr
Funktionen zum Umrechenen von Zeit.
--]]
zt = zt or {}
zt.d_j = 	function(d)
                return d/365
            end
zt.d_mo = 	function(d)
                return d/12
            end
zt.d_h = 	function(d)
                return d*24
            end
zt.d_m = 	function(d)
                return d*24*60
            end
zt.d_s = 	function(d)
                return d*24*60*60
            end
zt.d_hs = 	function(d)
                return d*24*60*60*100
            end
zt.d_ms = 	function(d)
                return d*24*60*60*1000
            end
--- Stunden
zt.h_j = 	function(h)
                return h/24/365
            end
zt.h_mo = 	function(h)
                return h/24/12
            end
zt.h_d = 	function(h)
                return h/24
            end
zt.h_m = 	function(h)
                return h*60
            end
zt.h_s = 	function(h)
                return h*60*60
            end
zt.h_hs = 	function(h)
                return h*60*60*100
            end
zt.h_ms = 	function(h)
                return h*60*60*1000
            end
--- Minuten
zt.m_j = 	function(m)
                return m/60/24/365
            end
zt.m_mo = 	function(m)
                return m/60/24/12
            end
zt.m_d = 	function(m)
                return m/60/24
            end
zt.m_h = 	function(m)
                return m/60
            end
zt.m_s = 	function(m)
                return m*60
            end
zt.m_hs = 	function(m)
                return m*60*100
            end
zt.m_ms = 	function(m)
                return m*60*1000
            end
--- Sekunden
zt.s_j = 	function(s)
                return s/60/60/24/365
            end
zt.s_mo = 	function(s)
                return s/60/60/24/12
            end
zt.s_d = 	function(s)
                return s/60/60/24
            end
zt.s_h = 	function(s)
                return s/60/60
            end
zt.s_m = 	function(s)
                return s/60
            end
zt.s_hs = 	function(s)
                return s*100
            end
zt.s_ms = 	function(s)
                return s*1000
            end	


--[[
    @name   Autoumbruch in Say
    @author Mijago
    @descr
Fügt die Funktion say2 an. 
Mit ihr werden Texte automatisch umgebrochen.
--]]
function say2(str,dx) 
    local maxl,actl,pat = dx or 50,0,'(.-)(%[.-%])()' 
    local result,nb,lastPos,outp = {},0,0,'' 
    local function bere(stx) 
        for le in string.gfind(stx,'((%S+)%s*)') do  
            if actl + string.len(le) > maxl then  
                outp = outp..'[ENTER]'  
                actl = 0  
            end  
            outp = outp..le  
            actl = actl + string.len(le)  
        end  
    end 
    for part, dos,pos in string.gfind(str, pat) do  
        if part ~= '' then  
            bere(part) 
        end 
        outp = outp..dos  
        lastPos = pos  
    end  
    bere(string.sub(str,lastPos)) 
    say(outp) 
end 


--[[
    @name   mysql_escape
    @author Mijago
    @descr
Wie mysql_real_escape_string in PHP;
Hilft, SQLi vorzubeugen.
--]]
function mysql_escape(str)
    str = string.gsub(str,"%\\", "\\\\")
--    str = string.gsub(str,"%\0", "\\0") Gibt einen fehler aus :o | Wer rausfindet, warum.. Bitte mir Schreiben (Mijago)
    str = string.gsub(str,"%\n", "\\n")
    str = string.gsub(str,"%\r", "\\r")
    str = string.gsub(str,"%\x1a", "\Z")
    str = string.gsub(str,"%\'", "\\'")
    str = string.gsub(str,'%\"', '\\"')
    return str
end


--[[
    @name   account.set_pw
    @author Mijago; Idee von Benhero
    @needs  mysql_query
    @descr
Funktion zum Ändern des Nutzerpasswortes.
Angabe des Accounts kann weggelassen werden, als Accountname oder als Account ID angegeben werden.
--]]
account = account or {}
function account.set_pw(pw,ac)
    if pw == nil then error("Fehler... Passwort muss gesetzt werden!") end
    local ac = ac or pc.get_account_id() 
    if type(ac) == "string" then
        mysql_query("UPDATE player.player,account.account SET account.password = password("..string.format('%q',pw)..") WHERE account.id = player.account_id and player.name = '"..ac.."' LIMIT 1")
    elseif type(ac) == "number" then
        mysql_query("UPDATE account.account SET account.password = password("..string.format('%q',pw)..") WHERE account.id = "..ac)
    end
end 


--[[
    @name   pc.check_inventory_place
    @author Mijago
    @descr
Checkt auf Freie Inventarplätze für Items der größe X (Höhe).
--]]
function pc.check_inventory_place(size)
    if size <= 0 or size > 3 then
        return -1
    end
    function check(c)
        for i = 0,size-1 do
            item.select_cell(e[c+(5*i)])
            if item.get_id() ~= 0 then
                return false
            end
        end
        return true
    end
    for i = 0,89 do 
        if check(i) then 
            return i 
        end
    end
    return -1
end


--[[
    @name   do_for_other
    @author Mijago
    @descr
Führt einen String als Luabefehle bei einem anderem User aus.
--]]
function do_for_other(name,ding)
    local t = pc.select(find_pc_by_name(name))
    assert(loadstring(ding))()
    pc.select(t)
end


--[[
    @name   local_pc_setqf
    @author Mijago
    @descr
Setzt die Questflag eines anderen Spielers.
--]]
function local_pc_setqf(name, qf,wert) -- Für die aktuelle Quest
    local target = find_pc_by_name(name)
    local t = pc.select(target)
    pc.setqf(qf,wert)
    pc.select(t)
end


--[[
    @name   pc.trans
    @author Mijago
    @descr
Warpt Spieler B zu Spieler A.
Spieler a = pc.
--]]
function pc.trans(vid)
    if vid == nil then
        error"VID muss gesetzt sein! (pc.warp_to)"
    elseif type(vid) == "string" then
        vid = find_pc_by_name(vid)
        if vid == 0 then
            error"Spieler nicht gefunden"
        end
    end
    local x,y = pc.get_x()*100,pc.get_y()*100
    local me = pc.select(vid)
    pc.warp(x,y)
    pc.select(me)
end


--[[
    @name   pc.warp_to
    @author Mijago
    @descr
Warpt Spieler A zu Spieler B.
Spieler a = pc.
--]]
function pc.warp_to(vid)
    if vid == nil then
        error"VID muss gesetzt sein! (pc.warp_to)"
    elseif type(vid) == "string" then
        vid = find_pc_by_name(vid)
        if vid == 0 then
            error"Spieler nicht gefunden"
        end
    end
    local me = pc.select(vid)
    local x,y = pc.get_x()*100,pc.get_y()*100
    pc.select(me)
    pc.warp(x,y)
end


--[[
    @name   local_warp_pc
    @author Mijago
    @descr
Warpt einen anderen Spieler lokal.
--]]
function local_pc_warp(name, x, y,mid)
    local target = find_pc_by_name(name)
    local t = pc.select(target)
    if mid == nil then
        mid = pc.get_map_index()
    end
    pc.warp_local(mid, x*100, y*100)
    pc.select(t)
end


--[[
    @name   download
    @author Mijago
    @descr
Lädt eine Datei in den Data-Ordner.
--]]
function download(url) os.execute("cd data && fetch "..url.." && cd ..") end


--[[
    @name   dot
    @author Mijago
    @descr
Führt alles Zwischen $ und $ im String aus.
--]]
function dot(x)
    return string.gsub(x, "%$(.-)%$", function (s) return loadstring(s)() end) 
end


--[[
    @name   dostr
    @author Mijago
    @descr
Führt einen String als Lua-Befehl aus.
--]]
function dostr(str)
    assert(loadstring(str))()
end


--[[
    @name   wartungsmodus
    @author Mijago
    @needs  mysql_query
    @descr
Versetzt alle Accounts (außer GM-Accounts) in einen "Wartungsmodus" und wieder zurück.
--]]
function wartungsmodus(v)
    if v == 1 or v == true then
        mysql_query("UPDATE account.account SET account.status = 'SHUTDOWN' WHERE status = 'OK' and account.login NOT IN (SELECT mAccount FROM common.gmlist);")
    else
        mysql_query("UPDATE account.account SET account.status = 'OK' WHERE status = 'SHUTDOWN' and account.login NOT IN (SELECT mAccount FROM common.gmlist);")
    end
end


--[[
    @name   create_folder
    @author Mijago 
    @descr
Erstellt Ordner, auch mit Unterordnern
--]]
create_folder = function(path)
    local pp = ''
    for i in string.gfind(path,'([%w_\-]*/)') do
        pp = pp..i
        os.execute('if [ ! -d '..pp..' ]; then mkdir '..pp..'; fi')
    end
end


--[[
    @name   INI-Parser
    @author Mijago
    @descr
Ein NEUER Parser für INI-Dateien.
--]]
ini = {
    open = function(path)
        return setmetatable({
            path = path or "",
        }, { __index = ini})
    end,
    write = function(self,section,key,value)
        if not section or not key then return false end
        local r,y = self:__get_text()
        if not y then return false end
        if string.find(r,"%["..section.."%]") then
            if string.find(r,"%["..section.."%][^%[]*"..key.."=") then
                r = string.gsub(r,"(%["..section.."%][^%[]*"..key.." *=)( *[^\n]+)",function(x)
                    return x..value
                end)
            else
                r = string.gsub(r,"(%["..section.."%][^%[]*)",function(x)
                    return x.."\n"..key.."="..value.."\n"
                end)
            end
        else
            r = r.."\n["..section.."]\n"..key.."="..value
        end
        -- überflüssige leerzeichen löschen
        r=string.gsub(string.gsub(string.gsub(r,"^(\n)",""),"(\n)$",""),"\n\n","\n")
        local d = io.open(self.path,"w")
        d:write(r)
        d:close()
    end,
    read = function(self,section,key,default_value)
        local t,y = self:__get_text()
        if not y then return false end
        local _,_,data = string.find(t,"%["..section.."%][^%[]*"..key.." *= *([^\n]+)")
        local output = (data or default_value)
        return tonumber(output) or output,true
    end,
    remove_key = function(self,section,key)
        local t,y = self:__get_text()
        if not y then return false end
        if string.find(t,"%["..section.."%][^%[]*"..key.." *=[^\n]+") then
            local t2=string.gsub(t,"(%["..section.."%][^%[]*)"..key.." *=[^\n]+",function(x)
                return x
            end)
            if t2 ~= t then
                local d= io.open(self.path,"w")
                d:write(t2)
                d:close()
            end
        end
        return true
    end,
    remove_section = function(self,section)
        local t,y = self:__get_text()
        if not y then return false end
        if string.find(t,"%["..section.."%][^%[]*") then
            t = string.gsub(t,"%["..section.."%][^%[]*","")
            local d = io.open(self.path,"w")
            d:write(t)
            d:close()
        end
        return true
    end,
    __get_text = function(self)
        local d = io.open(self.path,"r")
        if not d then return "",false end
        local t = d:read"*all"
        d:close()
        return t,true
    end,
}


--[[
    @name   Ini-Parser (alt)
    @author Mijago
    @needs  split
    @descr
-- OUTDATED --
Ein Parser für Ini-Dateien.
Besitzt eine Eigene Beschreibung der einzelnen Funktionen im Code.
--]]
do
    -- Funktionen:
    -- var = ini.new() 
    -- var = ini.open(path)
    -- var:write_str(sub,name,wert)
    -- var:write_int(sub,name,wert)
    -- var:write_bool(sub,name,boolean)
    -- var:clear()
    -- var:read_str(sub,name,norm)   -- Gibt einen String zurück. -|
    -- var:read_int(sub,name,norm)   -- Gibt eine Zahl zurück      -|  norm wird zurückgegeben, wenn sub[name] nicht existiert.
    -- var:read_bool(sub,name,norm)  -- Gibt true / False zurück  -|
    -- var:delete_key(sub,nm)
    -- var:delete_section(sub)
    local ini_f = {}
    ini = {}
    function ini_f:append(sub,nm,wert)
        if nm == '' or nm == nil then
            return
        end
        self:parse()
        if self.sub[sub] == nil then self.sub[sub] = {} end
        self.sub[sub][nm] = wert
        self:writeit()
    end
    function ini_f:write_str(sub,nm,wert)
        self:append(sub,nm,wert)
    end
    function ini_f:write_int(sub,nm,wert)
        self:append(sub,nm,wert)
    end
    function ini_f:write_bool(sub,nm,bool)
        if not type(bool) == "boolean" then
            return
        end
        local bin = 0
        if bool == true then bin = 1 end
        self:append(sub,nm,bin)
        return bin
    end
    function ini_f:clear()
        self.sub = {}
        self.path = ''
    end
    function ini_f:writeit()
        local out = ''
        table.foreach(self.sub,
            function(i,l)
                out = out..'['..i..']\n'
                table.foreach(l,
                    function(i2,l2)
                        out=out..i2..'='..l2..'\n'
                    end
                )
            end
        )
        local d = io.open(self.path,'w')
        d:write(out)
        d:close()
    end
    function ini_f:delete_key(sub,nm)
        if sub == '' or nm == '' or sub == nil or nm == nil then return end
        self:parse()
        self.sub[sub][nm] = nil
        self:writeit()
    end
    function ini_f:delete_section(sub)
        if sub == '' or sub == nil then return end
        self:parse()
        self.sub[sub]= nil
        self:writeit()
    end
    function ini_f:parse()
        self.sub = {}
        if self.path == '' or self.path == nil then return end
        local d,i = io.open(self.path,"r"),'non'
        if d == nil then d = io.open(self.path,"w") end
        for line in d:lines() do
            if string.sub(line,1,1) == "[" then
                i = string.sub(line,2,string.len(line)-1)
                self.sub[i] = {}
            else
                local inp = split(line,'=')
                self.sub[i][inp[1]] = inp[2]
            end
        end
        d:close()
    end
    function ini_f:read_str(sub,nm,norm)
        if sub == '' or nm == '' or sub == nil or nm == nil then return end
        self:parse()
        if self.sub[sub] == nil then return norm end
        if self.sub[sub][nm] == nil then return norm else return self.sub[sub][nm] end
    end
    function ini_f:read_int(sub,nm,norm)
        if sub == '' or nm == '' or sub == nil or nm == nil then return end
        self:parse()
        if self.sub[sub] == nil then return norm end
        if self.sub[sub][nm] == nil then return norm else return tonumber(self.sub[sub][nm]) end
    end
    function ini_f:read_bool(sub,nm,norm)   -- Norm wird zurückgegeben, wenn der Key nm nicht existiert
        if sub == '' or nm == '' or sub == nil or nm == nil then return end
        self:parse()
        if self.sub[sub] == nil then return norm end
        if self.sub[sub][nm] == nil then return norm end
        if self.sub[sub][nm] == "1" then return true else return false end
    end
    function ini_f:open(path)
        self.path = path
        self:parse()
    end
    function ini.new()
        local out = {}
        out.path = ''
        out.sub = {}
        setmetatable(out, { __index = ini_f })
        return out
    end
    function ini.open(path)
        local dat = ini.new()
        dat:clear()
        dat.path=path
        dat:open(path)
        return dat
    end
end


--[[
    @name   csay
    @author Mijago
    @descr
Wie die alten col-Befehle, sendet aber selbst.
Also kein say(col.red('bla'))
sondern
csay.red('bla') reicht völlig aus.
--]]
csay = setmetatable({__d = {
        ["aliceblue"] = {240, 248, 255},     ["antiquewhite"] = {250, 235, 215},    ["aqua"] = {0, 255, 255},                   ["aquamarine"] = {127, 255, 212},
        ["azure"] = {240, 255, 255},         ["beige"] = {245, 245, 220},           ["bisque"] = {255, 228, 196},               ["black"] = {0, 0, 0},
        ["blanchedalmond"] = {255, 235, 205},["blue"] = {0, 0, 255},                ["blueviolet"] = {138, 43, 226},            ["brown"] = {165, 42, 42},
        ["burlywood"] = {222, 184, 135},     ["cadetblue"] = {95, 158, 160},        ["chartreuse"] = {127, 255, 0},             ["chocolate"] = {210, 105, 30},
        ["coral"] = {255, 127, 80},          ["cornflowerblue"] = {100, 149, 237},  ["cornsilk"] = {255, 248, 220},             ["crimson"] = {220, 20, 60},
        ["cyan"] = {0, 255, 255},            ["darkblue"] = {0, 0, 139},            ["darkcyan"] = {0, 139, 139},               ["darkgoldenrod"] = {184, 134, 11},
        ["darkgray"] = {169, 169, 169},      ["darkgreen"] = {0, 100, 0},           ["darkkhaki"] = {189, 183, 107},            ["darkmagenta"] = {139, 0, 139},
        ["darkolivegreen"] = {85, 107, 47},  ["darkorange"] = {255, 140, 0},        ["darkorchid"] = {153, 50, 204},            ["darkred"] = {139, 0, 0},
        ["darksalmon"] = {233, 150, 122},    ["darkseagreen"] = {143, 188, 139},    ["darkslateblue"] = {72, 61, 139},          ["darkslategray"] = {47, 79, 79},
        ["darkturquoise"] = {0, 206, 209},   ["darkviolet"] = {148, 0, 211},        ["deeppink"] = {255, 20, 147},              ["deepskyblue"] = {0, 191, 255},
        ["dimgray"] = {105, 105, 105},       ["dodgerblue"] = {30, 144, 255},       ["firebrick"] = {178, 34, 34},              ["floralwhite"] = {255, 250, 240},
        ["forestgreen"] = {34, 139, 34},     ["fuchsia"] = {255, 0, 255},           ["gainsboro"] = {220, 220, 220},            ["ghostwhite"] = {248, 248, 255},
        ["gold"] = {255, 215, 0},            ["goldenrod"] = {218, 165, 32},        ["gray"] = {128, 128, 128},                 ["green"] = {0, 128, 0},
        ["greenyellow"] = {173, 255, 47},    ["honeydew"] = {240, 255, 240},        ["hotpink"] = {255, 105, 180},              ["indianred"] = {205, 92, 92},
        ["indigo"] = {75, 0, 130},           ["ivory"] = {255, 255, 240},           ["khaki"] = {240, 230, 140},                ["lavender"] = {230, 230, 250},
        ["lavenderblush"] = {255, 240, 245}, ["lawngreen"] = {124, 252, 0},         ["lemonchiffon"] = {255, 250, 205},         ["lightblue"] = {173, 216, 230},
        ["lightcoral"] = {240, 128, 128},    ["lightcyan"] = {224, 255, 255},       ["lightgoldenrodyellow"] = {250, 250, 210}, ["lightgray"] = {211, 211, 211},
        ["lightgreen"] = {144, 238, 144},    ["lightpink"] = {255, 182, 193},       ["lightsalmon"] = {255, 160, 122},          ["lightseagreen"] = {32, 178, 170},
        ["lightskyblue"] = {135, 206, 250},  ["lightslategray"] = {119, 136, 153},  ["lightsteelblue"] = {176, 196, 222},       ["lightyellow"] = {255, 255, 224},
        ["lime"] = {0, 255, 0},              ["limegreen"] = {50, 205, 50},         ["linen"] = {250, 240, 230},                ["magenta"] = {255, 0, 255},
        ["maroon"] = {128, 0, 0},            ["mediumaquamarine"] = {102, 205, 170},["mediumblue"] = {0, 0, 205},               ["mediumorchid"] = {186, 85, 211},
        ["mediumpurple"] = {147, 112, 219},  ["mediumseagreen"] = {60, 179, 113},   ["mediumslateblue"] = {123, 104, 238},      ["mediumspringgreen"] = {0, 250, 154},
        ["mediumturquoise"] = {72, 209, 204},["mediumvioletred"] = {199, 21, 133},  ["midnightblue"] = {25, 25, 112},           ["mintcream"] = {245, 255, 250},
        ["mistyrose"] = {255, 228, 225},     ["moccasin"] = {255, 228, 181},        ["navajowhite"] = {255, 222, 173},          ["navy"] = {0, 0, 128},
        ["oldlace"] = {253, 245, 230},       ["olive"] = {128, 128, 0},             ["olivedrab"] = {107, 142, 35},             ["orange"] = {255, 165, 0},
        ["orangered"] = {255, 69, 0},        ["orchid"] = {218, 112, 214},          ["palegoldenrod"] = {238, 232, 170},        ["palegreen"] = {152, 251, 152},
        ["paleturquoise"] = {175, 238, 238}, ["palevioletred"] = {219, 112, 147},   ["papayawhip"] = {255, 239, 213},           ["peachpuff"] = {255, 218, 185},
        ["peru"] = {205, 133, 63},           ["pink"] = {255, 192, 203},            ["plum"] = {221, 160, 221},                 ["powderblue"] = {176, 224, 230},
        ["purple"] = {128, 0, 128},          ["red"] = {255, 0, 0},                 ["rosybrown"] = {188, 143, 143},            ["royalblue"] = {65, 105, 225},
        ["saddlebrown"] = {139, 69, 19},     ["salmon"] = {250, 128, 114},          ["sandybrown"] = {244, 164, 96},            ["seagreen"] = {46, 139, 87},
        ["seashell"] = {255, 245, 238},      ["sienna"] = {160, 82, 45},            ["silver"] = {192, 192, 192},               ["skyblue"] = {135, 206, 235},
        ["slateblue"] = {106, 90, 205},      ["slategray"] = {112, 128, 144},       ["snow"] = {255, 250, 250},                 ["springgreen"] = {0, 255, 127},
        ["steelblue"] = {70, 130, 180},      ["tan"] = {210, 180, 140},             ["teal"] = {0, 128, 128},                   ["thistle"] = {216, 191, 216},
        ["tomato"] = {255, 99, 71},          ["turquoise"] = {64, 224, 208},        ["violet"] = {238, 130, 238},               ["wheat"] = {245, 222, 179},
        ["white"] = {255, 255, 255},         ["whitesmoke"] = {245, 245, 245},      ["yellow"] = {255, 255, 0},                 ["yellowgreen"] = {154, 205, 50}
    }},{
        __index = function(tab,idx)
            local color = tab.__d[idx] or {0,0,0}
            return function(x) say('[COLOR r;'..(color[1]/255)..'|g;'..(color[2]/255)..'|b;'..(color[3]/255)..']'..x..'[/COLOR]') end
        end
})


--[[
    @name   Farbcodes
    @author Mijago
    @descr
Farbcodes für Say
--]]
col = col or {}
col.list= {
{ 'lightcoral', 240,128,128 },{ 'rosybrown', 188,143,143 },
{ 'indianred', 205,92,92 },{ 'red', 255,0,0 },{ 'firebrick', 178,34,34 },{ 'brown', 165,42,42 },
{ 'darkred', 139,0,0 },{ 'maroon', 128,0,0 },{ 'mistyrose', 255,228,225 },{ 'salmon', 250,128,114 },
{ 'tomato', 255,99,71 },{ 'darksalmon', 233,150,122 },{ 'coral', 255,127,80 },{ 'orangered', 255,69,0 },
{ 'lightsalmon', 255,160,122 },{ 'sienna', 160,82,45 },{ 'seashell', 255,245,238 },{ 'chocolate', 210,105,30 },
{ 'saddlebrown', 139,69,19 },{ 'sandybrown', 244,164,96 },{ 'peachpuff', 255,218,185 },{ 'peru', 205,133,63 },
{ 'linen', 250,240,230 },{ 'bisque', 255,228,196 },{ 'darkorange', 255,140,0 },{ 'burlywood', 222,184,135 },
{ 'antiquewhite', 250,235,215 },{ 'tan', 210,180,140 },{ 'navajowhite', 255,222,173 },{ 'blanchedalmond', 255,235,205 },
{ 'papayawhip', 255,239,213 },{ 'moccasin', 255,228,181 },{ 'orange', 255,165,0 },{ 'wheat', 245,222,179 },
{ 'oldlace', 253,245,230 },{ 'floralwhite', 255,250,240 },{ 'darkgoldenrod', 184,134,11 },{ 'goldenrod', 218,165,32 },
{ 'cornsilk', 255,248,220 },{ 'gold', 255,215,0 },{ 'lemonchiffon', 255,250,205 },{ 'khaki', 240,230,140 },
{ 'palegoldenrod', 238,232,170 },{ 'darkkhaki', 189,183,107 },{ 'ivory', 255,255,240 },{ 'lightyellow', 255,255,224 },
{ 'beige', 245,245,220 },{ 'lightgoldenrodyellow', 250,250,210 },{ 'yellow', 255,255,0 },{ 'olive', 128,128,0 },
{ 'olivedrab', 107,142,35 },{ 'yellowgreen', 154,205,50 },{ 'darkolivegreen', 85,107,47 },{ 'greenyellow', 173,255,47 },
{ 'chartreuse', 127,255,0 },{ 'lawngreen', 124,252,0 },{ 'darkseagreen', 143,188,139 },{ 'honeydew', 240,255,240 },
{ 'palegreen', 152,251,152 },{ 'lightgreen', 144,238,144 },{ 'lime', 0,255,0 },{ 'limegreen', 50,205,50 },
{ 'forestgreen', 34,139,34 },{ 'green', 0,128,0 },{ 'darkgreen', 0,100,0 },{ 'seagreen', 46,139,87 },
{ 'mediumseagreen', 60,179,113 },{ 'springgreen', 0,255,127 },{ 'mintcream', 245,255,250 },{ 'mediumspringgreen', 0,250,154 },
{ 'mediumaquamarine', 102,205,170 },{ 'aquamarine', 127,255,212 },{ 'turquoise', 64,224,208 },{ 'lightseagreen', 32,178,170 },
{ 'mediumturquoise', 72,209,204 },{ 'azure', 240,255,255 },{ 'lightcyan', 224,255,255 },{ 'paleturquoise', 175,238,238 },
{ 'aqua', 0,255,255 },{ 'cyan', 0,255,255 },{ 'darkcyan', 0,139,139 },{ 'teal', 0,128,128 },
{ 'darkslategray', 47,79,79 },{ 'darkturquoise', 0,206,209 },{ 'cadetblue', 95,158,160 },{ 'powderblue', 176,224,230 },
{ 'lightblue', 173,216,230 },{ 'deepskyblue', 0,191,255 },{ 'skyblue', 135,206,235 },{ 'lightskyblue', 135,206,250 },
{ 'steelblue', 70,130,180 },{ 'aliceblue', 240,248,255 },{ 'dodgerblue', 30,144,255 },{ 'lightslategray', 119,136,153 },
{ 'slategray', 112,128,144 },{ 'lightsteelblue', 176,196,222 },{ 'cornflowerblue', 100,149,237 },{ 'royalblue', 65,105,225 },
{ 'ghostwhite', 248,248,255 },{ 'lavender', 230,230,250 },{ 'blue', 0,0,255 },{ 'mediumblue', 0,0,205 },
{ 'darkblue', 0,0,139 },{ 'midnightblue', 25,25,112 },{ 'navy', 0,0,128 },{ 'slateblue', 106,90,205 },
{ 'darkslateblue', 72,61,139 },{ 'mediumslateblue', 123,104,238 },{ 'mediumpurple', 147,112,219 },{ 'blueviolet', 138,43,226 },
{ 'indigo', 75,0,130 },{ 'darkorchid', 153,50,204 },{ 'darkviolet', 148,0,211 },{ 'mediumorchid', 186,85,211 },
{ 'thistle', 216,191,216 },{ 'plum', 221,160,221 },{ 'violet', 238,130,238 },{ 'fuchsia', 255,0,255 },
{ 'magenta', 255,0,255 },{ 'darkmagenta', 139,0,139 },{ 'purple', 128,0,128 },{ 'orchid', 218,112,214 },
{ 'mediumvioletred', 199,21,133 },{ 'deeppink', 255,20,147 },{ 'hotpink', 255,105,180 },{ 'lavenderblush', 255,240,245 },
{ 'palevioletred', 219,112,147 },{ 'crimson', 220,20,60 },{ 'pink', 255,192,203 },{ 'lightpink', 255,182,193 },
{ 'white', 255,255,255 },{ 'snow', 255,250,250 },{ 'whitesmoke', 245,245,245 },{ 'gainsboro', 220,220,220 },
{ 'lightgray', 211,211,211 },{ 'silver', 192,192,192 },{ 'darkgray', 169,169,169 },{ 'gray', 128,128,128 },
{ 'dimgray', 105,105,105 },{ 'black', 0,0,0 },{ 'aliceblue', 240,248,255 },{ 'antiquewhite', 250,235,215 },
{ 'aqua', 0,255,255 },{ 'aquamarine', 127,255,212 },{ 'azure', 240,255,255 },{ 'beige', 245,245,220 },
{ 'bisque', 255,228,196 },{ 'black', 0,0,0 },{ 'blanchedalmond', 255,235,205 },{ 'blue', 0,0,255 },
{ 'blueviolet', 138,43,226 },{ 'brown', 165,42,42 },{ 'burlywood', 222,184,135 },{ 'cadetblue', 95,158,160 },
{ 'chartreuse', 127,255,0 },{ 'chocolate', 210,105,30 },{ 'coral', 255,127,80 },{ 'cornflowerblue', 100,149,237 },
{ 'cornsilk', 255,248,220 },{ 'crimson', 220,20,60 },{ 'cyan', 0,255,255 },{ 'darkblue', 0,0,139 },
{ 'darkcyan', 0,139,139 },{ 'darkgoldenrod', 184,134,11 },{ 'darkgray', 169,169,169 },{ 'darkgreen', 0,100,0 },
{ 'darkkhaki', 189,183,107 },{ 'darkmagenta', 139,0,139 },{ 'darkolivegreen', 85,107,47 },{ 'darkorange', 255,140,0 },
{ 'darkorchid', 153,50,204 },{ 'darkred', 139,0,0 },{ 'darksalmon', 233,150,122 },{ 'darkseagreen', 143,188,139 },
{ 'darkslateblue', 72,61,139 },{ 'darkslategray', 47,79,79 },{ 'darkturquoise', 0,206,209 },{ 'darkviolet', 148,0,211 },
{ 'deeppink', 255,20,147 },{ 'deepskyblue', 0,191,255 },{ 'dimgray', 105,105,105 },{ 'dodgerblue', 30,144,255 },
{ 'firebrick', 178,34,34 },{ 'floralwhite', 255,250,240 },{ 'forestgreen', 34,139,34 },{ 'fuchsia', 255,0,255 },
{ 'gainsboro', 220,220,220 },{ 'ghostwhite', 248,248,255 },{ 'gold', 255,215,0 },{ 'goldenrod', 218,165,32 },
{ 'gray', 128,128,128 },{ 'green', 0,128,0 },{ 'greenyellow', 173,255,47 },{ 'honeydew', 240,255,240 },
{ 'hotpink', 255,105,180 },{ 'indianred', 205,92,92 },{ 'indigo', 75,0,130 },{ 'ivory', 255,255,240 },
{ 'khaki', 240,230,140 },{ 'lavender', 230,230,250 },{ 'lavenderblush', 255,240,245 },{ 'lawngreen', 124,252,0 },
{ 'lemonchiffon', 255,250,205 },{ 'lightblue', 173,216,230 },{ 'lightcoral', 240,128,128 },{ 'lightcyan', 224,255,255 },
{ 'lightgoldenrodyellow', 250,250,210 },{ 'lightgray', 211,211,211 },{ 'lightgreen', 144,238,144 },{ 'lightpink', 255,182,193 },
{ 'lightsalmon', 255,160,122 },{ 'lightseagreen', 32,178,170 },{ 'lightskyblue', 135,206,250 },{ 'lightslategray', 119,136,153 },
{ 'lightsteelblue', 176,196,222 },{ 'lightyellow', 255,255,224 },{ 'lime', 0,255,0 },{ 'limegreen', 50,205,50 },
{ 'linen', 250,240,230 },{ 'magenta', 255,0,255 },{ 'maroon', 128,0,0 },{ 'mediumaquamarine', 102,205,170 },
{ 'mediumblue', 0,0,205 },{ 'mediumorchid', 186,85,211 },{ 'mediumpurple', 147,112,219 },{ 'mediumseagreen', 60,179,113 },
{ 'mediumslateblue', 123,104,238 },{ 'mediumspringgreen', 0,250,154 },{ 'mediumturquoise', 72,209,204 },{ 'mediumvioletred', 199,21,133 },
{ 'midnightblue', 25,25,112 },{ 'mintcream', 245,255,250 },{ 'mistyrose', 255,228,225 },{ 'moccasin', 255,228,181 },
{ 'navajowhite', 255,222,173 },{ 'navy', 0,0,128 },{ 'oldlace', 253,245,230 },{ 'olive', 128,128,0 },
{ 'olivedrab', 107,142,35 },{ 'orange', 255,165,0 },{ 'orangered', 255,69,0 },{ 'orchid', 218,112,214 },
{ 'palegoldenrod', 238,232,170 },{ 'palegreen', 152,251,152 },{ 'paleturquoise', 175,238,238 },{ 'palevioletred', 219,112,147 },
{ 'papayawhip', 255,239,213 },{ 'peachpuff', 255,218,185 },{ 'peru', 205,133,63 },{ 'pink', 255,192,203 },
{ 'plum', 221,160,221 },{ 'powderblue', 176,224,230 },{ 'purple', 128,0,128 },{ 'red', 255,0,0 },
{ 'rosybrown', 188,143,143 },{ 'royalblue', 65,105,225 },{ 'saddlebrown', 139,69,19 },{ 'salmon', 250,128,114 },
{ 'sandybrown', 244,164,96 },{ 'seagreen', 46,139,87 },{ 'seashell', 255,245,238 },{ 'sienna', 160,82,45 },
{ 'silver', 192,192,192 },{ 'skyblue', 135,206,235 },{ 'slateblue', 106,90,205 },{ 'slategray', 112,128,144 },
{ 'snow', 255,250,250 },{ 'springgreen', 0,255,127 },{ 'steelblue', 70,130,180 },{ 'tan', 210,180,140 },
{ 'teal', 0,128,128 },{ 'thistle', 216,191,216 },{ 'tomato', 255,99,71 },{ 'turquoise', 64,224,208 },
{ 'violet', 238,130,238 },{ 'wheat', 245,222,179 },{ 'white', 255,255,255 },{ 'whitesmoke', 245,245,245 },
{ 'yellow', 255,255,0 },{ 'yellowgreen', 154,205,50 }}
table.foreachi(col.list,function(a,b)
    col[b[1]] = 	function(text) return "[COLOR r;"..(b[2]/255.0).."|g;"..(b[3]/255.0).."|b;"..(b[4]/255.0).."]"..text..'[/COLOR]' end
end)


--[[
    @name   Apache-Funktionen
    @author Mijago
    @descr
Funktionen, um Apache neu zu starten.
--]]
proc=proc or {}
proc.apache_start = function()
                os.execute('apachectl start')
            end
proc.apache_stop = function()
                os.execute('apachectl stop')
            end
proc.apache_restart = function()
                os.execute('apachectl restart')
            end
proc.apache_graceful = function()
                os.execute('apachectl graceful')
            end


--[[
    @name   TS3-Funktionen
    @author Mijago
    @descr
Funktionen zum Starten, Stoppen und Neustarten eines TS3 Servers.
--]]
proc=proc or {}
proc.ts3_start = function(path)
                os.execute('cd '..path..' && sh ts3server_startscript.sh start')
                end
proc.ts3_stop = function(path)
                os.execute('cd '..path..' && sh ts3server_startscript.sh stop')
                end
proc.ts3_restart = function(path)
                os.execute('cd '..path..' && sh ts3server_startscript.sh restart')
                end
