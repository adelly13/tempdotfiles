-- Hyper keys
local hyper = { "cmd", "alt" }

-- Reload
hs.hotkey.bind(hyper, "0", function()
	 hs.reload()
 end)

-- App Shortcuts
local applicationHotkeys = {
	b = 'Brave Browser',
	c = 'Visual Studio Code',
	f = 'Finder',
	m = 'Messages',
	n = 'Notes',
	r = 'Reminders',
	s = 'Spotify',
	t = 'Terminal'
}

for key, app in pairs(applicationHotkeys) do
  hs.hotkey.bind(hyper, key, function()
    hs.application.launchOrFocus(app)
  end)
end

-- Fullscreen
hs.hotkey.bind(hyper, "return", function()
	local win = hs.window.frontmostWindow()
	win:setFullscreen(not win:isFullscreen())
end)

-- Lock Screen
hs.hotkey.bind(hyper, "l", function()
  hs.caffeinate.lockScreen()
end)

