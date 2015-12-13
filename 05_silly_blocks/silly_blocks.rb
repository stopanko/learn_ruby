def reverser
  yield.split.each.map{|w| w.reverse}.join(" ")
end

def adder(number = 1)
  yield.to_i + number
end

def repeater(number = 1, &block)
  number.times {block.call}
end