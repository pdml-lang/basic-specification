[ch (id=escape_rules) [title Escape Characters]

    As seen already, [c \[] and [c \]] are used as node delimiters. Therefore these two characters must be escaped when they are used in text nodes.
    
    A backslash ([c \\]) is used as escape character (as in C-like programming languages). Therefore the backslash must itself be escaped too.

    The final rule is simple: Characters [c \[], [c \]], and [c \\] must be preceded by [c \\] when they are used in text nodes, as shown in the following table:
    [table_data
        Character, Escape sequence
        -
        [, \[
        ], \]
        \, \\
    table_data]

    Example:
    
    Suppose node [c foo] contains the text: [c Characters \[, \], and \\ must be escaped.]

    This would be written as:
    [code
        [foo Characters \[, \], and \\ must be escaped.]
    code]
]
