




-- Move Mouse to center of next Monitor
hs.urlevent.bind("ChangeMouseFocus", function(eventName, params)
    local screen = hs.mouse.getCurrentScreen()
    local nextScreen = screen:next()
    local rect = nextScreen:fullFrame()
    local center = hs.geometry.rectMidPoint(rect)
 
    hs.mouse.setAbsolutePosition(center)
end)


-- Move Mouse to left-top
hs.urlevent.bind("MouseMove", function(eventName, params)
    local screen = hs.mouse.getCurrentScreen()
    local rect = screen:fullFrame()
    --- INPUT:1/2/3/4 
    local choose = tonumber(params.choose)
    local position = {{0.25,0.25},{0.75,0.25},{0.25,0.75},{0.75,0.75}}
    local point = hs.geometry.point(rect.w * position[choose][1],rect.h * position[choose][2])

    hs.mouse.setAbsolutePosition(point)

end)