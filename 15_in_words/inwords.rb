module Inwords
  TWENTIES = ['zero', 'one','two', 'three', 'four','five','six','seven','eight','nine',
           'ten','eleven','twelve','thirteen','fourteen','fifteen',
           'sixteen','seventeen','eighteen','nineteen','twenty']
  TWENTIES[30] = 'thirty'
  TWENTIES[40] = 'forty'
  TWENTIES[50] = 'fifty'
  TWENTIES[60] = 'sixty'
  TWENTIES[70] = 'seventy'
  TWENTIES[80] = 'eighty'
  TWENTIES[90] = 'ninety'
  def in_words
    self.trans
  end

  def trans
    if self <= 20
      TWENTIES[self]
    elsif self > 20 && self < 100 && self % 10 == 0
      TWENTIES[self]
    elsif self > 20 && self < 100 && self % 10 != 0
      [(self / 10 * 10).trans, (self % 10).trans].join(" ")
    elsif self >= 100 && self < 1000
      [(self/100).trans, "hundred", (self % 100).zero? ? nil : (self % 100).trans].compact.join(" ")
    elsif self >= 1000 && self < 1000000
      [(self/1000).trans, "thousand", (self % 1000).zero? ? nil : (self % 1000).trans].compact.join(" ")
    elsif self >= 1000000 && self < 1_000_000_000
      [(self/1000000).trans, "million", (self % 1000000).zero? ? nil : (self % 1000000).trans].compact.join(" ")
    elsif self >= 1_000_000_000 && self < 1_000_000_000_000
      [(self/1_000_000_000).trans, "billion", (self % 1_000_000_000).zero? ? nil : (self % 1_000_000_000).trans].compact.join(' ')
    elsif self >= 1_000_000_000_000
      [(self/1_000_000_000_000).trans, "trillion", (self % 1_000_000_000_000).zero? ? nil : (self % 1_000_000_000_000).trans].compact.join(" ")
    end
  end
end