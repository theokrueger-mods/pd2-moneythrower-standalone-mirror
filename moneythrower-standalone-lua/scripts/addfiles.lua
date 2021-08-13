local valid = {
    ["texture"] = true,
    ["model"] = true,
    ["object"] = true,
    ["cooked_physics"] = true,
    ["unit"] = true
}

-- due to how i lazily set this up, surface level files will not work oops
local function parsedirectory(dir, quickhack)
    local tbl = {}
    for _, f in ipairs(file.GetFiles(dir)) do
        local fext = f:match("%..*"):gsub("%.", "")
        if valid[fext] then
            table.insert(tbl, {
                fext,
                quickhack:gsub("^/%w*/", "") .. "/" .. f:match(".*%."):gsub("%.", ""), dir .. "/" .. f
            })
        end
    end
    for _, d in ipairs(file.GetDirectories(dir)) do
        local temp = parsedirectory(dir .. "/" .. d, quickhack .. "/" .. d)
        if temp then
            for _, v in ipairs(temp) do
                if type(v) == "table" then table.insert(tbl, v) end
            end
        end
    end
    return tbl
end

function MTS.addfiles(dir)
    local tbl = parsedirectory(dir)
    for _, v in pairs(tbl) do
        if valid[v[1]] then
            BLTAssetManager:CreateEntry(Idstring(v[2]), Idstring(v[1]), v[3])
        end
    end
end
