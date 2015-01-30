package = "Lightningmdb"
version = "0.9-1"
source = {
   url = "git@github.com:shmul/lightningdbm.git"
}
description = {
   summary = "A thin wrapper around OpenLDAP Lightning Memory-Mapped Database (LMDB).",
   detailed = [[
     LMDB is a key-value embedded store that is a part of the OpenLDAP project. This rock provides a Lua interface to to it.
   ]],
   homepage = "https://github.com/shmul/lightningdbm",
   license = "MIT/X11" -- or whatever you like
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
     lightningmdb = {
         sources = {"lightningmdb.c"},
         defines = {},
         libraries = {"lmdb"},
         incdirs = {"$(LMDBINC)"},
         libdirs = {"$(LMDBLIB)"}
      }
   }
}