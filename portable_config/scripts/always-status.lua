-- always-status.lua
-- Always-visible bottom status:
-- 00:12:34 / 00:42:10        Speed: 1.0x

local mp = require "mp"

local overlay = mp.create_osd_overlay("ass-events")
local timer

local function format_time(sec)
    sec = math.max(0, math.floor((sec or 0) + 0.5))
    local h = math.floor(sec / 3600)
    local m = math.floor((sec % 3600) / 60)
    local s = sec % 60
    return string.format("%02d:%02d:%02d", h, m, s)
end

local function render()
    local w, h = mp.get_osd_size()
    if not w or not h or w <= 0 or h <= 0 then return end

    local pos = mp.get_property_number("time-pos", 0)
    local duration = mp.get_property_number("duration", 0)
    local speed = mp.get_property_number("speed", 1.0)

    local text = string.format(
        "%s / %s        Speed: %.1fx",
        format_time(pos),
        format_time(duration),
        speed
    )

    overlay.res_x = w
    overlay.res_y = h
    overlay.data = string.format(
        "{\\an2\\pos(%d,%d)\\fs22\\b0\\c&HFFFFFF&\\bord1.2\\shad0}%s",
        math.floor(w / 2),
        h - 18,
        text
    )
    overlay:update()
end

mp.register_event("file-loaded", function()
    if timer then timer:kill() end
    timer = mp.add_periodic_timer(0.25, render)
    render()
end)

mp.observe_property("speed", "number", render)
mp.observe_property("osd-width", "number", render)
mp.observe_property("osd-height", "number", render)

mp.register_event("end-file", function()
    overlay.data = ""
    overlay:update()
end)
