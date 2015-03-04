#!/usr/bin/lua

--
-- print files older than timestamp
--

local timetst = tonumber(arg[1])

local fd = assert(io.popen("stat --format '%Z=%n' *"))
local files = fd:read("*a")

local tabule = {}

for k, v in files:gmatch("(%S+)=(%S+)") do table.insert(tabule,tonumber(k),v) end

for k, v in pairs(tabule) do if k > timetst then print (v) end end
