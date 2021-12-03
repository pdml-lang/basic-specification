[ch (id=whitespace) [title Whitespace]

    The following whitespace characters before of after the root node are ignored:
    [table_data
        Name, C-style syntax, Unicode
        -
        Space, ' ', U+0020
        Tab, '\t', U+0009
        Carriage return, '\r', U+000D
        Line feed, '\n', U+000A
    table_data]

    Other characters before or after the root node are illegal.

    Within a PDML document, there are no whitespace handling rules defined in [i Basic PDML]. Whitespace is preserved when a PDML document is parsed.

    Consider the following PDML snippet:
    [code
        [a  foo   [b]
            2 [c] [d]
        ]
    code]
    In this example, node [c a] contains 7 child nodes:
    [list
        [el text [c {space}foo{space}{space}{space}]]
        [el empty node [c b]]
        [el text [c {new line}{space}{space}{space}{space}2{space}]]
        [el empty node [c c]]
        [el text [c {space}]]
        [el empty node [c d]]
        [el text [c {new line}]]
    ]
    
    Applications reading PDML documents (or customized PDML parsers) are free to implement any appropriate whitespace handling rules, such as:
    [list
        [el skip whitespace nodes]
        [el trim leading and/or trailing whitespace in text nodes]
        [el replace whitespace sequences with a single space (similar to HTML)]
    ]
]