[ch (id=new_lines) [title New Lines]

    New lines are defined differently in Unix/Linux and Windows. Unix uses a single [i line feed] ([c "\\n"]). Windows uses a [i carriage return], followed by a [i line feed] ([c "\\r\\n"]).

    The following rules are applied in PDML:
    [list
        [el [header Reading Rule]
            When a PDML document is [i read], Unix and Windows new lines are both supported, whether the application runs on Unix or Windows, even if a single document uses a mixture of Unix/Windows new lines.

            For example, a parser reads [c "\\n"] and [c "\\r\\n"] as a single new line.
        ]

        [el [header Writing Rule]
            When a PDML document is [i written], the operating system's canonical new line is used.
            
            For example, a writer running on Unix writes [c "\\n"]. On Windows it writes [c "\\r\\n"].
        ]
    ]
]