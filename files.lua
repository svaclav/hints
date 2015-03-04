#!/usr/bin/lua

--
-- print files older than timestamp
--

--
-- example: lua files.lua 1425502690
--

local timetst = tonumber(arg[1])

local fd = assert(io.popen("stat --format '%Z=%n' *"))
local files = fd:read("*a")

local tabule = {}

for k, v in files:gmatch("(%S+)=(%S+)") do tabule[v]=tonumber(k) end
-- for k, v in files:gmatch("(%S+)=(%S+)") do table.insert(tabule,tonumber(k),v) end

for k, v in pairs(tabule) do if v > timetst then print (k) end end
