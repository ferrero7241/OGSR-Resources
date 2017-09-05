--[[----------------------------------------------------------------------------------------------
 File       : lua_xml.lua
 Author     : Gerald Franz, www.viremo.de Copyright (C) 2007-2010 
 Editors    : Nazgool, nazgool@ukr.net
              Charsi
              OGSE Team
              KRodin
 Description: Набор функций для работы с xml-файлами. В таблицу _G добавляется пространство _G.xml
                           (edition by Nazgool)
              Из оригинальной библиотеки удалена LuaXml_lib.dll.
              Функции из неё (за иключением registerCode) переписаны на lua.
---------------------------------------------------------------------------------------------------
Подключение:
Добавить куда-нибудь в _G:
if not luaXML_loaded then
	dofile(getFS():update_path("$game_data$","scripts\\_luaxml.script"))
end
--]]----------------------------------------------------------------------------------------------

luaXML_loaded = true --глобальная переменная (флаг подключения)

xml = {}

-- symbolic name for tag index, this allows accessing the tag by var[xml.TAG]
xml.TAG = 0

local symbols = {
    ['\034'] = '&quot;', -- кавычка "
    ['\038'] = '&amp;', -- амперсанд &
    ['\060'] = '&lt;', -- левая угловая скобка <
    ['\062'] = '&gt;', -- правая угловая скобка  >

--[=[ --KRodin: эти символы после замены не работают, почему-то. Без замены работают нормально.
    ['\160'] = '&nbsp;'  , -- неразрывный пробел
    ['\161'] = '&iexcl;' , -- перевернутый восклицательный знак
    ['\162'] = '&cent;'  , -- цент
    ['\163'] = '&pound;' , -- фунт стерлингов
    ['\164'] = '&curren;', -- знак денежной единицы ¤
    ['\165'] = '&yen;'   , -- йена
    ['\166'] = '&brvbar;', -- вертикальная черта ¦
    ['\167'] = '&sect;'  , -- параграф §
    ['\168'] = '&uml;'   , -- диереза
    ['\169'] = '&copy;'  , -- знак авторского права ©
    ['\170'] = '&ordf;'  , -- показатель женского рода
    ['\171'] = '&laquo;' , -- открывающая двойная угловая кавычка «
    ['\172'] = '&not;'   , -- знак отрицания ¬
    ['\173'] = '&shy;'   , -- мягкий перенос
    ['\174'] = '&reg;'   , -- охраняемый знак ®
    ['\175'] = '&macr;'  , -- надчеркивание
    ['\176'] = '&deg;'   , -- градус °
    ['\177'] = '&plusmn;', -- плюс-минус ±
    ['\178'] = '&sup2;'  , -- вторая степень
    ['\179'] = '&sup3;'  , -- третья степень
    ['\180'] = '&acute;' , -- острое ударение
    ['\181'] = '&micro;' , -- знак микро µ
    ['\182'] = '&para;'  , -- конец абзаца ¶
    ['\183'] = '&middot;', -- средняя точка ·
    ['\184'] = '&cedil;' , -- седиль
    ['\185'] = '&sup1;'  , -- единица в верхнем индексе
    ['\186'] = '&ordm;'  , -- показатель мужского рода
    ['\187'] = '&raquo;' , -- закрывающая двойная угловая кавычка »
    ['\188'] = '&frac14;', -- одна четвертая
    ['\189'] = '&frac12;', -- одна вторая
    ['\190'] = '&frac34;', -- три четверти
    ['\191'] = '&iquest;', -- перевернутый вопросительный знак
--]=]

}

if not jit.version_num or jit.version_num < 20004 then
	function xml.encode(str) --KRodin: сталкерский lua не переваривает таблицу как аргумент в gsub. Переделал в функцию.
		return str:gsub('.', function(x)
			return symbols[x] or x
		end)
	end
else
	function xml.encode(str)
		return str:gsub('.', symbols)
	end
end

function xml.eval(str)
    if type(str)~="string" then return end
    local data = {}
    str = str:gsub('%s-<!%-%-.-%-%->', '') -- убрать комментарии
    str = str:gsub('%s-<%?xml.-%?>'  , '') -- убрать заголовок если есть
    
    local function parse_str(str, parent)
        local tag, prop, rest = str:match("<%s-([%w_]+)%s*(.-)>(.-)$")
        
        if tag then
            local child = {[0] = tag}
            table.insert(parent, child)
            
            for key, value in prop:gmatch('(%S+)="(%S+)"') do
                child[key] = value
            end
            
            if prop:match('/$') then -- самозакрывающийся тег
                parse_str(rest, parent)
            else                     -- закрывающий тег
                str, rest = rest:match('^%s*(.-)%s-</%s-'..tag..'%s->(.-)$')
                child[1] = str:match('^%s-<') and parse_str(str, child) or str
                parse_str(rest, parent)
            end
            
            return child
        end
    end
    
    parse_str(str, data)
    
    return setmetatable(data[1],{__index=xml, __tostring=xml.str}) or nil
end

function xml.xr_load(root_alias, local_path)
    local fs   = getFS()
    local path = fs:update_path(root_alias, local_path)
    local file = io.open(path)
    
    if file then -- файл в распакованном виде на диске
        local str = file:read('*a')
        file:close()
        return xml.eval(str)
    elseif fs:exist(path) then -- файл  в архиве
        file = fs:r_open(path)
        local chars = {}
        local index = 1
        local _char = string.char
        
        while not file:r_eof() do
            chars[index] = _char(file:r_u8())
            index = index + 1
        end
        
        return xml.eval(table.concat(chars))
    end
    
    return nil
end

-- sets or returns tag of a LuaXML object
function xml.tag(var,tag)
    if type(var) ~= "table" then return end
    if not tag then 
        return var[0]
    end
    var[0] = tag
end

-- creates a new LuaXML object either by setting the metatable of an existing Lua table or by setting its tag
function xml.new(arg)
    local tag = (type(arg)=="string" and arg)
    local var = (type(arg)=="table"  and arg) or {[0]=tag}

    return setmetatable(var, {__index=xml, __tostring=xml.str})
end

-- appends a new subordinate LuaXML object to an existing one, optionally sets tag
function xml.append(var,tag)
    if type(var)~="table" then return end
    local arg = xml.new(tag)
    var[#var+1] = arg
    return arg
end

-- converts any Lua var into an XML string
function xml.str(var,indent,tagValue)
    if not var then return end
    local indent = indent or 0
    local indentStr = ""
    for i = 1,indent do indentStr = indentStr.."  " end
    local tableStr = ""
    
    if type(var)=="table" then
        local tag = var[0] or tagValue or type(var)
        local s = indentStr.."<"..tag
        for k,v in pairs(var) do -- attributes 
            if type(k)=="string" then
                if type(v)=="table" and k~="_M" then --  otherwise recursiveness imminent
                    tableStr = tableStr..xml.str(v,indent+1,k)
                else
                    s = s.." "..k.."=\""..xml.encode(tostring(v)).."\""
                end
            end
        end
        if #var==0 and #tableStr==0 then
            s = s.." />\n"
        elseif #var==1 and type(var[1])~="table" and #tableStr==0 then -- single element
            s = s..">"..xml.encode(tostring(var[1])).."</"..tag..">\n"
        else
            s = s..">\n"
            for k,v in ipairs(var) do -- elements
                if type(v)=="string" then
                    s = s..indentStr.."  "..xml.encode(v).." \n"
                else
                    s = s..xml.str(v,indent+1)
                end
            end
            s=s..tableStr..indentStr.."</"..tag..">\n"
        end
        return s
    else
        local tag = type(var)
        return indentStr.."<"..tag.."> "..xml.encode(tostring(var)).." </"..tag..">\n"
    end
end

-- saves a Lua var as xml file
function xml.save(var, filename)
    if var and filename and #filename ~= 0 then
        local file = io.open(filename, 'w')
        if file then
            file:write("<?xml version=\"1.0\" encoding=\"windows-1251\"?>\n\n")
            file:write(xml.str(var))
            file:close()
            return true
        --[=[else --KRodin: выключено, т.к. lfs больше не будет. Да и вообще, мне не понятно, как эта функция работает.
            filename = filename:gsub('\\', '/')
            local dir, path, name = string.match(filename, '^([^/]+)(.-)([^/]+)$')
            local cur_dir = lfs.currentdir()
        
            for node in string.gmatch(path, "[^/]+") do
                dir = dir .. '/'.. node
                if not lfs.chdir(dir) then
                    lfs.mkdir(dir)
                end
            end
        
            lfs.chdir(cur_dir)
            xml.save(var, filename)]=]
        end
    end
    return false
end

-- Function 'xml.find' ----------------------
local function is_value(obj, value)
    for _, v in pairs(obj) do
        if v == value then
            return true
        end
    end
    return false
end

local function is_key(obj,key,value)
    if value then
        return obj[key]==value
    end
    return obj[key] ~= nil
end

local function is_tag(obj,tag,key,value)
    if obj[0]==tag then
        if key then
            return is_key(obj,key,value)
        elseif value then
            return is_value(obj,value)
        end
        return true
    end
    return false
end

local function check(obj, tag, key, value) 
    if tag then 
        return is_tag(obj,tag,key,value)
    elseif key then
        return is_key(obj,key,value)
    elseif value then
        return is_value(obj,value)
    end
    
    return true
end

local function parse(obj, tag, key, value, index, parent)
    if check(obj, tag, key, value) then
        setmetatable(obj,{__index=xml, __tostring=xml.str})
        coroutine.yield(obj, index, parent)
    end
    -- recursively parse subtags:
    for k,v in ipairs(obj) do
        if type(v)=="table" then
            parse(v, tag, key, value, k, obj)
        end
    end
end

local thread = nil

function xml.find(obj, tag, key, val)
    -- check input:
    if type(obj)~="table" then return nil end
    tag = (type(tag)=="string") and #tag>0 and tag
    key = (type(key)=="string") and #key>0 and key
    val = (type(val)=="string") and #val>0 and val
    
    if tag then
        local tag1,tag2 = tag:match("(.-):(.+)")
        if tag1 then
            local res = xml.find(obj, tag1) or {}
            setmetatable(res,{__index=xml, __tostring=xml.str})
            return xml.find(res, tag2, key, val)
        end
    end
    
    thread = coroutine.create(parse)
    return select(2,coroutine.resume(thread, obj, tag, key, val))
end

function xml.next()
    if coroutine.status(thread)=='dead' then return end
    return select(2,coroutine.resume(thread))
end

function xml.remove(obj, tag, key, val)
    if type(obj)~="table" then return nil end
    if type(tag)=="string" and #tag==0 then tag=nil end
    local _,index = obj:find(tag, key, val)
    if not index then return end
    return table.remove(obj,index)
end