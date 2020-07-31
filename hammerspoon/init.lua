-- Hyper keys
local hyper = { "cmd", "alt" }

-- Reload
hs.hotkey.bind(hyper, "0", function()
	 hs.reload()
 end)

-- App Shortcuts
local applicationHotkeys = {
	a = 'Slack',
	b = 'Brave Browser',
	c = 'Visual Studio Code',
	f = 'Finder',
	i = 'Discord',
	m = 'Messages',
	n = 'Notion',
	o = 'Obsidian',
	r = 'Reminders',
	s = 'Spotify',
	t = 'Terminal'
}

for key, app in pairs(applicationHotkeys) do
  hs.hotkey.bind(hyper, key, function()
    hs.application.launchOrFocus(app)
  end)
end

-- Fullscreen and Window Management 
hs.hotkey.bind(hyper, "return", function()
  local win = hs.window.frontmostWindow()
	win:setFullscreen(not win:isFullscreen())
end)

hs.hotkey.bind(hyper, "'", function()
	local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()
	
	f.x = max.x + (max.w / 16) 
  f.y = max.y
  f.w = max.w * (7 / 8) 
  f.h = max.h
  win:setFrame(f)
end)

-- Lock Screen
hs.hotkey.bind(hyper, "l", function()
  hs.caffeinate.lockScreen()
end)

