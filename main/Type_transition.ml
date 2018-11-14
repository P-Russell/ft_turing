type letter     = char
type state      = string
type direction  = Right | Left
type transition = {read: letter; to_state: state; write: letter; action: direction}