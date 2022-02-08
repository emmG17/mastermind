def new_code
  pegs = %w[r b g y o p]
  pegs.sample(4)
end

def find_partial_matches(guess, code)
  code.each_with_index.select { |peg, i| guess.find_index(peg) && peg != guess[i] }
end

def find_exact_matches(guess, code)
  code.each_with_index.select { |peg, i| peg == guess[i] }
end

def hints(exact_matches, partial_matches)
  exact_hint = '■'
  partial_hint = '¤'

  hints = Array.new(4, '-')
  exact_matches.each { |match| hints[match[1]] = exact_hint }
  partial_matches.each { |match| hints[match[1]] = partial_hint }
  hints
end
