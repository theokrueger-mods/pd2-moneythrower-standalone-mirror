_G.MTS = _G.MTS or {}
MTS.path = ModPath
MTS.scriptpath = ModPath .. "scripts/"
MTS.assetspath = ModPath .. "assets/"

dofile(MTS.scriptpath .. "addfiles.lua")
MTS.addfiles(MTS.assetspath)
