-- thanks to this guy: https://wearedevs.net/forum/t/27970
local vim = game:GetService('VirtualInputManager')
input = {
    hold = function(key, time)
        vim:SendKeyEvent(true, key, false, nil)
        task.wait(time)
        vim:SendKeyEvent(false, key, false, nil)
    end,
    press = function(key)
        vim:SendKeyEvent(true, key, false, nil)
	task.wait(0.005)
        vim:SendKeyEvent(false, key, false, nil)
    end
}

return input
