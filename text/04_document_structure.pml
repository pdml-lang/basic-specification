[ch (id=structure) [title Document Structure]

    A [i PDML document] is a tree of nodes.

    The syntax for a node is defined as follows (in EBNF):

    [code
        "[" name ( separator ? child_node + ) ? "]"
    code]

    [ch (id=node) [title Node]

        A [i node] is enclosed by a pair of square brackets: [c \[...\]]. A node starts with [c \[] and ends with [c \]].

        Each document has one root node.
    ]

    [ch (id=node_name) [title Name]

        Each node has a [i name].
        
        A node name must match the regex [c \[a-zA-Z_\]\[a-zA-Z1-9_\\.-\]*]. This means that a name starts with a letter or an underscore ([c _]), optionally followed by any number of letters, digits, underscores ([c _]), hyphens ([c -]), or dots ([c .]).

        Here are some examples of valid node names:
        [code
            color
            Index_12
            _ID_12.5-a
        code]

        A node name does not need to be unique. Different nodes in a tree can have the same name.
    ]

    [ch (id=node_separator) [title Separator]

        The [i separator] separates the node's name from its content.
        
        The separator is a single whitespace character. The following whitespace characters are allowed:
        [table_data
            Name, C-style syntax, Unicode
            -
            Space, " ", U+0020
            Tab, "\t", U+0009
            Unix new line, "\n", U+000A
            Windows new line, "\r\n", U+000D U+000A
        table_data]

        The separator is required if the first child node is text. Example:
        [code
            [color green]
        code]
        
        The separator is optional if the first child node is a node. Hence this code:
        [code
            [b [i huge]]
        code]
        ... can also be written as:
        [code
            [b[i huge]]
        code]
    ]

    [ch (id=child_node) [title Child Node]

        A node can optionally have any number of child nodes.

        A [i child node] can be text (a sequence of Unicode characters) or another node (with optional child nodes too).

        Examples:
        [list
            [el
                Node with one text child:
                [code
                    [color light green]
                code]
                The node's name is [c color]. The node's single child node is the text [c light green].
            ]

            [el
                Node with child node:
                [code
                    [config [color light green]]
                code]
                The node [c config] has one child node. The child node's name is [c color], its text is [c light green].
            ]

            [el
                Tree of nodes:
                [code
                    [config
                        [color light green]
                        [size
                            [width 200]
                            [height 100]
                        ]
                    ]
                code]
            ]

            [el
                Node containing a mixture of text and nodes (markup code):
                [code
                    [p We can write words in [i italic], [b bold], or [b[i bold and italic]].]
                code]
            ]
        ]
    ]

    [ch (id=empty_node) [title Empty Node]

        If a node has no child nodes, it is called an [i empty node].

        Example:
        [code
            [new_line]
        code]
    ]
]
