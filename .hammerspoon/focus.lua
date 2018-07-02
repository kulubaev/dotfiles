
local window = hs.window
local alert = hs.alert
-----------------------------
-- move north
-----------------------------

hs.hotkey.bind(hyper, "k", function()
  if window.focusedWindow() then
    alert.show('north')
    window.focusedWindow():focusWindowNorth()
  else
    alert.show('no active window')
  end
end)

-----------------------------
-- move suth
-----------------------------

hs.hotkey.bind(hyper, "j", function()
  if window.focusedWindow() then
    alert.show('south')
    window.focusedWindow():focusWindowSouth()
  else
    alert.show('no active window')
  end
end)

-----------------------------
-- move east
-----------------------------

hs.hotkey.bind(hyper, "l", function()
  if window.focusedWindow() then
    alert.show('east')
    window.focusedWindow():focusWindowEast()
  else
    alert.show('no active window')
  end
end)

-----------------------------
-- move west
-----------------------------

hs.hotkey.bind(hyper, "h", function()
  if window.focusedWindow() then
    alert.show('west')
    window.focusedWindow():focusWindowWest()
  else
    alert.show('no active window')
  end
end)

-----------------------------
-- info 
-----------------------------

hs.hotkey.bind(hyper, "i", function()
  hs.hints.windowHints()
end)



-----------------------------
-- apps focus and launch 
-----------------------------

hs.hotkey.bind(hyper, 't', function()
  hs.application.launchOrFocus('Terminal')
end)


hs.hotkey.bind(hyper, 'g', function()
  hs.application.launchOrFocus('Google Chrome')
end)

hs.hotkey.bind(hyper, 'b', function()
  hs.application.launchOrFocus('ibooks')
end)

hs.hotkey.bind(hyper, 'q', function()
  hs.application.launchOrFocus('vlc')
end)

