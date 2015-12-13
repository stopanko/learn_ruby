class Temperature

  def self.ftoc(d)
    (d - 32) * (5.0/9)
  end

  def self.ctof(d)
    (d / (5.0/9)) + 32
  end

  def self.from_celsius(celsius)
    self.new(c: celsius)
  end

  def self.from_fahrenheit(fahrenheit)
    self.new(f: fahrenheit)
  end

  def initialize(**hash)
    @f = hash[:f] || nil
    @c = hash[:c] || nil
  end

  def in_fahrenheit
    @f ? @f : Temperature.ctof(@c)
  end

  def in_celsius
    @c ? @c : Temperature.ftoc(@f)
  end

end


class Celsius < Temperature

  def initialize(n)
    @c = n
  end

end


class Fahrenheit < Temperature

  def initialize(n)
    @f = n
  end

end