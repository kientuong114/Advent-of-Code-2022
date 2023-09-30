# Get file handler and read input
readInput ← &rs ∞ &fo "1.input"
parseLine ← |1 parse !
removeNewline ← |1 /+ ≡parseLine ▽ +1 ¯ ⌕ □ "\n" . !
parseInput ← ≡removeNewLine ⊜□ +1¯ ⌕ □"\n\n" . ⊜□ +1 ≠ @\n . readInput

# The rest is ezpz

# Part 1
&p "Part 1:"
&s /↥ parseInput

# Part 2
&p "Part 2:"
&s /+ ↘ - 3 ⧻ . ⊏⌂. parseInput
