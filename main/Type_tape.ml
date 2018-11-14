type letter    = char
type state     = string
type direction = Right | Left
type tape_data = {letters: letter list; pos: int; trs: state; lread: letter}