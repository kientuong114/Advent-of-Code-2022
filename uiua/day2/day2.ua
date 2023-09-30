results ← 3_6_0_0_3_6_6_0_3
parseInput ← ⍉ ⊟ ∶ -"X" ∶ -"A" ⍘⊟ ⍉ ≡(|1 ⊜· ≠ @  . !) ⊜□ ≠ @\n . &rs ∞ &fo "2.input"

&p "Part 1:"
&s /+ ⍉ ≡(|1 + +1 ∶ ∵(⊡ ∶ results) + × 3 ∶,⍘⊟⍉) parseInput

# A = Rock, B = Paper, C = Scissors (for adv.)
# X = Lose, Y = Draw, Z = Win
# AX -> Need scissors -> 0 + 3
# AY -> Need rock -> 3 + 1
# AZ -> Need paper -> 6 + 2
# BX -> Need rock -> 0 + 1
# BY -> Need paper -> 3 + 2
# BZ -> Need scissors -> 6 + 3
# CX -> Need paper -> 0 + 2
# CY -> Need scissors -> 3 + 3
# CZ -> Need rock -> 6 + 1

resultsSecond ← 3_4_8_1_5_9_2_6_7

&p "Part 2:"
&s /+ ⍉ ≡(|1 ∵(⊡ ∶ resultsSecond) + × 3 ⍘⊟⍉) parseInput
