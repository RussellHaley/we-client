package = "we-client"
version = "0.0.1-1"
source = {
   url = "*** please add URL for source tarball, zip or repository here ***"
}
description = {
   summary = "Web enabled client",
   homepage = "*** please enter a project homepage ***",
   license = "FreeBSD"
}

dependencies = {
   "lua >= 5.3",
   "serpent >= 0.28",
   "cqueues",
   "http",
   "lualogging",
   "dkjson",
   "uuid",
   "luafilesystem",   
   "rs232"
}
build = {
   type = "builtin",
   modules = {}
}
