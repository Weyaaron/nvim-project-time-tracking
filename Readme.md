# nvim-project-time-tracking

[![License: GPL](https://img.shields.io/badge/License-GPL-brightgreen.svg)](https://opensource.org/license/gpl-3-0/)

--Currntly in its infancy, features will be added over time--

This code implements a Neovim Plugin for time spent in neovim
with a focus on projects.

Its completly offline and tries to be tool-agnostic
by using widly used formats like json and (eventually) a
lua api to extract the relevant data.

The distinct feature of this over other plugins of this
type is probably that it fokusses on tim-tracking based projects.
It provides

I am aware that other plugins of this type exist and its
probably personal preference which suits you use case.



# In Action
TODO???

# Installation

Install it using the plugin manager of your choice.
[Lazy](https://github.com/folke/lazy.nvim) is tested,
if any other fails, please open an issue. Pinning your local installation to a fixed version is encouraged.
In Lazy, a possible setup might be:

```lua
local lazy = require("lazy")
local plugin_list = {
    -- Your various other plugins ..
    {"https://github.com/Weyaaron/nvim-training", pin= true, opts = {}}
    -- Support for configuration with opts is included, see below for the options
}
lazy.setup(plugin_list)
```

# Commands
This plugin uses subcommands of `Training` to activate certain functions.
All of these commands support completion, just use `Tab` and you will be fine.
Currently, these are the available options:

| Name | Syntax | Description |
| --- | -------- | -------- |
| Start | `:Training Start [Scheduler] [Task-Collection A] [Task Collection B] ...`| Starts a session with the choosen scheduler and the choosen task collections. Both arguments are optional. |
| Stop | `:Training Stop`| Stops a session. |
| Analyze | `:Training Analyze`| Prints some statistics about your progress. |



# Configuration
A interface for configuration is provided. These are the default values.
Simply copying then but leaving the defaults in is actually discouraged. Some of these names
might change, and if you leave this in your config these changes are not propagated.
```lua
local training = require("nvim-training")
training.configure({ -- All of these options work for 'opts' of lazy as well.
})
```

# Goals

Todo: Write

- Projects
- Metadata
-

- Ease of use. Running it should be seamless. The UI should not get in the way.
- Fast and flow-inducing. There should be no waiting time/friction between tasks.
- (Eventually) Community-driven. Adding new tasks is encouraged, both by providing the interfaces and the documentation required.
- Customizable. Task should be switched on and off with ease, and the difficulty should be adjustable.

# Non-Goals
- Implement puzzles. A solution to the current task should be obvious and small, at most a few keystrokes on a vanilla setup.
- Competing with others. Your progress matters to you, not to others.
- Provide help/guides on how to solve a particular task. Basic familiarity with vim is assumed.
- Constrain the user on how to solve a particular task.
- Support for everyones personal setup. Some settings may mess up some tasks, support for these cases is limited. I try to accomodate about 80% of the users and
will decide each upcoming case on its own.

# On Contributions
Contributions are welcome! Any input is appreciated, be it a bug report, a feature request, or a pull request.
Just open a issue and we shall get cooking :)

# [License](/LICENSE)
[GPL](LICENSE)
