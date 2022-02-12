TITLE = "
 _____            _              _____  _         _ 
|     | ___  ___ | |_  ___  ___ |     ||_| ___  _| |
| | | || .'||_ -||  _|| -_||  _|| | | || ||   || . |
|_|_|_||__,||___||_|  |___||_|  |_|_|_||_||_|_||___|"

def write_header(titles, padding = 10)
  puts "| #{titles.map { |t| t.center(padding) }.join(' | ')} |"
end

def write_divider(titles, padding)
  puts "+-#{titles.map { |_t| '-' * padding }.join('-+-')}-+"
end

def write_code(data, padding, cols = 1)
  inner_padding = padding * cols
  n_items = data.length
  puts "|#{data.map { |peg| peg.center(inner_padding / n_items) }.join('|')}|"
end

def code_ui(code)
  title = ['Code']
  ui_block(title, code)
end

def guess_ui(guess, hints)
  title = %w[Guess Hint]
  guess_with_hints = guess.concat(hints)
  ui_block(title, guess_with_hints)
end

def ui_block(titles, data, padding = 45)
  write_divider(titles, padding)
  write_header(titles, padding)
  write_divider(titles, padding)
  write_code(data, padding, titles.count)
  write_divider(titles, padding)
end

def print_board(code = Array.new(4, '-'), guess = Array.new(4, '-'), hints = Array.new(4, '-'))
  puts "\033[34m#{TITLE}\033[0m"
  code_ui(code)
  guess_ui(guess, hints)
end