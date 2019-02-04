#!/usr/bin/env lua

package.cpath = './lua_modules/lib/lua/5.3/?.so;./?.so'
package.path = './lua_modules/share/lua/5.3/?.lua;./lua_modules/share/lua/5.3/?/init.lua;./lua_modules/share/lua/5.3/?.lua;./lua_modules/share/lua/5.3/?/init.lua;./?.lua;./?/init.lua'
package.cpath = './lua_modules/lib/lua/5.3/?.so;./?.so'

--s = require 'serpent'
--req = require 'http.request'
--cq = require 'cqueues'

local crc = require 'crc32'
local c = crc.newcrc32()
local count = 1

local pl = 'This is a test of the public broadcast system'
repeat 
	local str = string.pack('>L>H>H>H', 0x234d5347, 15, count, pl:len())
	str = str .. pl
	local mycrc = c:update(str):tonumber()
	str = str .. string.pack('>L',mycrc)
	c:reset()
	count = count + 1
	print(str)
	os.execute('sleep 1')
until count == 100

--print(str)
--local bstr = string.char(0x23, 0x4d ,0x53 ,0x47)
-- Create a string from hex values
--binstr = string.char(0x41, 0x42, 0x43, 0x00, 0x02, 0x33, 0x48)

--print(bstr)
-- print out the bytes in decimal
--print(string.byte(bstr, 1, string.len(bstr)))

-- print out the hex values
--for i = 1, string.len(bstr), 1 do 
--   io.write(string.format("%x ", string.byte(binstr, i)))
--end
--io.write("\n")

--print out the length
--print("len = ", string.len(bstr))
