#!/usr/bin/env lua

package.cpath = './lua_modules/lib/lua/5.3/?.so;./?.so'
package.path = './lua_modules/share/lua/5.3/?.lua;./lua_modules/share/lua/5.3/?/init.lua;./lua_modules/share/lua/5.3/?.lua;./lua_modules/share/lua/5.3/?/init.lua;./?.lua;./?/init.lua'
package.cpath = './lua_modules/lib/lua/5.3/?.so;./?.so'

s = require 'serpent'
req = require 'http.request'
cq = require 'cqueues'

crc = require 'crc32'

local c = crc.newcrc32()
c:update('this is a test')
print('number is ' .. c:tonumber())
local bstr = string.char(0x23, 0x4d ,0x53 ,0x47)
-- Create a string from hex values
binstr = string.char(0x41, 0x42, 0x43, 0x00, 0x02, 0x33, 0x48)

print(bstr)
-- print out the bytes in decimal
print(string.byte(bstr, 1, string.len(bstr)))

-- print out the hex values
for i = 1, string.len(bstr), 1 do 
   io.write(string.format("%x ", string.byte(binstr, i)))
end
io.write("\n")

--print out the length
print("len = ", string.len(bstr))
