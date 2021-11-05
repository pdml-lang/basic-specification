[ch [title Whitespace]

    There are no whitespace handling rules defined in basic PDML.

    Whitespace is preserved when a PDML document is parsed.

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