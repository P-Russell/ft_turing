let g_t letters pos transition read_letter =
  {
    Type_tape.letters = letters;
    Type_tape.pos     = pos;
    Type_tape.trs     = transition;
    Type_tape.lread   = read_letter
  }