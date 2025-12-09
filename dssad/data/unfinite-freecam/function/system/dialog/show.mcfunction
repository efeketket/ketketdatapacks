$dialog show @a[tag=unfinite_freecam_settings] {\
    type:multi_action,\
    pause:false,\
    after_action:none,\
    columns:2,\
    title:[{"text":"Admin Settings","color":"#C4C4C4","bold":true}],\
    body:{\
        type:plain_message,\
        contents: [{"bold":true,"text":""},{"text":"Thanks for using:\n\n","color":"#C4C4C4","underlined":true,"bold":false},{"color":"#C4C4C4","bold":false,"text":"["},{"color":"#8F4E9A","text":"U"},{"color":"#9554A1","text":"n"},{"color":"#9A59A7","text":"f"},{"color":"#A05FAE","text":"i"},{"color":"#A565B5","text":"n"},{"color":"#AB6ABC","text":"i"},{"color":"#B170C2","text":"t"},{"color":"#B676C9","text":"e "},{"color":"#BC7BD0","text":"F"},{"color":"#C181D7","text":"r"},{"color":"#C787DD","text":"e"},{"color":"#CD8CE4","text":"e"},{"color":"#D292EB","text":"c"},{"color":"#D898F2","text":"a"},{"color":"#E3A3FF","text":"m"},{"color":"#C4C4C4","bold":false,"text":"]"},{"text":"\nv2.0.3\n","color":"#C4C4C4","bold":false}],\
        width: 300\
    },\
    actions:$(buttons),\
    exit_action: {label:"Close Settings", action: {type:run_command,command:"trigger unfinite-freecam.settings set 1"}}\
}