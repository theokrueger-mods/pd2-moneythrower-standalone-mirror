-- setup global vars
_G.MTS = _G.MTS or {}

MTS.dir = {
        path = ModPath,
        scriptpath = ModPath .. 'scripts/',
        assetpath = ModPath .. 'assets/'
}

-- addfiles
dofile(MTS.dir.scriptpath .. 'addfiles.lua')
MTS.addfiles(MTS.dir.assetpath)
