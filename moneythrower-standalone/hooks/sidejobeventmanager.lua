if not _G.MTS then
        dofile(ModPath .. 'scripts/setup.lua')
end

function SideJobEventManager:is_event_active_money()
        return true
end
