def write_header(titles, padding = 10)
  n_cols = titles.length
  puts "| #{ titles.map { |t| t.center(padding) }.join(' | ') } |"
end

def write_divider(titles, padding)
  puts "+-#{ titles.map { |t| "-"*padding }.join("-+-") }-+"
end

def write_code(code, padding)
  inner_padding = padding - 10
  n_items = code.length
  puts "| #{ code.map { |peg| peg.center(inner_padding/n_items) }.join(' | ') }  |"
end

def code_ui(code=Array.new(4, '-'))
  title = ["Code"]
  padding = 30
  write_divider(title, padding)
  write_header(title, padding)
  write_divider(title, padding)
  write_code(code, padding)
  write_divider(title, padding)
end