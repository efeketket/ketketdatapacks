execute if data storage unfinite_freecam settings.dialog run return fail

# Set default settings if unset or updating from previous datapack version
data merge storage unfinite_freecam {settings:{dialog:{buttons:[{"label":[{"text": "🧾","color":"#C4C4C4"},{"text":" Trigger Freecam:","color": "aqua"},{"text":" ✔","color": "green"}],"action": {"type": "run_command","command": "trigger unfinite-freecam.settings set 102"}},{"label":[{"text": "🧾","color":"#C4C4C4"},{"text":" Freecam Radius:","color": "aqua"},{"text":" 32","color": "green"}],"action": {"type": "run_command","command": "trigger unfinite-freecam.settings set 203"}},{"label":[{"text": "🧾","color":"#C4C4C4"},{"text":" Spectating in Blocks:","color": "aqua"},{"text":" ✔","color": "green"}],"action": {"type": "run_command","command": "trigger unfinite-freecam.settings set 302"}},{"label":[{"text": "🧾","color":"#C4C4C4"},{"text":" Darkness in Blocks:","color": "aqua"},{"text":" ✔","color": "green"}],"action": {"type": "run_command","command": "trigger unfinite-freecam.settings set 402"}},{"label":[{"text": "🧾","color":"#C4C4C4"},{"text":" Show Nametag:","color": "aqua"},{"text":" ✔","color": "green"}],"action": {"type": "run_command","command": "trigger unfinite-freecam.settings set 502"}},{"label":[{"text": "🧾","color":"#C4C4C4"},{"text":" Apears in Locatorbar:","color": "aqua"},{"text":" ✔","color": "green"}],"action": {"type": "run_command","command": "trigger unfinite-freecam.settings set 602"}},{"label":[{"text": "🧾","color":"#C4C4C4"},{"text":" Vehicle Movement:","color": "aqua"},{"text":" ❌","color": "green"}],"action": {"type": "run_command","command": "trigger unfinite-freecam.settings set 701"}},{"label":[{"text": "💾","color":"#C4C4C4"},{"text":" Export Settings","color": "yellow"}],tooltip:[{"color":"aqua","italic":false,"text":"➡ "},{"color":"gray","text":"Sends a chat message with a click event to copy the current settings to your clipboard"}],"action": {"type": "run_command","command": "trigger unfinite-freecam.settings set 2"}}]}}}

data merge storage unfinite_freecam {settings:{enable_freecam:1b}}
data merge storage unfinite_freecam {settings:{distance:32}}
data merge storage unfinite_freecam {settings:{block_spectating:1b}}
data merge storage unfinite_freecam {settings:{block_darkness:1b}}
data merge storage unfinite_freecam {settings:{nametag:1b}}
data merge storage unfinite_freecam {settings:{waypoints:1b}}
data merge storage unfinite_freecam {settings:{vehicle_move:0b}}

data remove storage unfinite_freecam player