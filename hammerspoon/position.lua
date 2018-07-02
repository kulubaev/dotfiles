
local bottomMargin = 60
-----------------------------
-- left half
-----------------------------

hs.hotkey.bind(hyper, "s", function()
  local window = hs.window.focusedWindow()
  if window then 
    local frame = window:frame()
    local screen = window:screen()
    local maximum = screen:frame() 

    frame.x = maximum.x
    frame.y = maximum.y
    frame.w = maximum.w / 2
    frame.h = maximum.h - bottomMargin

    window:setFrame(frame)
  else
    alert.show('no active window')
  end

end)

-----------------------------
-- top left half
-----------------------------

hs.hotkey.bind(hyper, "w", function()
  local window = hs.window.focusedWindow()

  if window then 
    local frame = window:frame()
    local screen = window:screen()
    local maximum = screen:frame() 


    frame.x = maximum.x
    frame.y = maximum.y
    frame.w = maximum.w / 2
    frame.h = maximum.h /2

    window:setFrame(frame)
  else
    alert.show('no active window')
  end

end)

-----------------------------
-- bottom left half
-----------------------------

hs.hotkey.bind(hyper, "z", function()
  local window = hs.window.focusedWindow()

  if window then 
    local frame = window:frame()
    local screen = window:screen()
    local maximum = screen:frame() 


    frame.x = maximum.x
    frame.y = maximum.y + (maximum.h / 2)
    frame.w = maximum.w / 2
    frame.h = (maximum.h / 2) - bottomMargin

    window:setFrame(frame)
  else
    alert.show('no active window')
  end

end)

------------------------------
-- right half
-----------------------------
 
hs.hotkey.bind(hyper, "f", function()
  local window = hs.window.focusedWindow()

  if window then 
    local frame = window:frame()
    local screen = window:screen()
    local maximum = screen:frame() 


    frame.x = maximum.x + (maximum.w / 2)
    frame.y = maximum.y
    frame.w = maximum.w / 2
    frame.h = maximum.h - bottomMargin

    window:setFrame(frame)
  else
    alert.show('no active window')
  end

end)
        

 ----------------------------
-- top right half
-----------------------------
 
hs.hotkey.bind(hyper, "r", function()
  local window = hs.window.focusedWindow()

  if window then 
    local frame = window:frame()
    local screen = window:screen()
    local maximum = screen:frame() 


    frame.x = maximum.x + (maximum.w / 2)
    frame.y = maximum.y
    frame.w = maximum.w / 2
    frame.h = (maximum.h / 2) 

    window:setFrame(frame)
  else
    alert.show('no active window')
  end

end)

----------------------------
-- bottom right half
-----------------------------

hs.hotkey.bind(hyper, "v", function()
  local window = hs.window.focusedWindow()
  if window then
    local frame = window:frame()
    local screen = window:screen()
    local maximum = screen:frame() 


    frame.x = maximum.x + (maximum.w / 2)
    frame.y = maximum.y + (maximum.h / 2 )
    frame.w = maximum.w / 2
    frame.h = (maximum.h / 2 ) - bottomMargin

    window:setFrame(frame)
  else
    alert.show('no active window')
  end

end)
        
----------------------------
-- center 
-----------------------------
 
hs.hotkey.bind(hyper, "c", function()
  local window = hs.window.focusedWindow()

  if window then
    local frame = window:frame()
    local screen = window:screen()
    local maximum = screen:frame() 


    frame.x = maximum.x
    frame.y = maximum.y
    frame.w = maximum.w
    frame.h = maximum.h - bottomMargin

    window:setFrame(frame)
  else
    alert.show('no active window')
  end

end)
        
        
----------------------------
-- center bottom
-----------------------------
hs.hotkey.bind(hyper, "x", function()
  local window = hs.window.focusedWindow()

  if window then
    local frame = window:frame()
    local screen = window:screen()
    local maximum = screen:frame() 


    frame.x = maximum.x
    frame.y = maximum.h
    frame.w = maximum.w
    frame.h = bottomMargin

    window:setFrame(frame)
  else
    alert.show('no active window')
  end

end)

               
