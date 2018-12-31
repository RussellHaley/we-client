#!/usr/bin/env lua

package.cpath = './lua_modules/lib/lua/5.3/?.so;./?.so'
package.path = './lua_modules/share/lua/5.3/?.lua;./lua_modules/share/lua/5.3/?/init.lua;./lua_modules/share/lua/5.3/?.lua;./lua_modules/share/lua/5.3/?/init.lua;./?.lua;./?/init.lua'
package.cpath = './lua_modules/lib/lua/5.3/?.so;./?.so'

s = require 'serpent'
req = require 'http.request'
cq = require 'cqueues' 
