def to_hex(r, g, b)
  [r, g, b].inject('#') do |hex, n|
      hex + n.to_s(16).rjust(2, '0')
  end
end

# 初学者的記述
# def to_ints2(hex)
#   r, g, b = hex[1..2], hex[3..4], hex[5..6]
#   [r, g, b].map(&:hex)
# end

# 上級者的記述
def to_ints(hex)
  hex.scan(/\w\w/).map(&:hex)
end
