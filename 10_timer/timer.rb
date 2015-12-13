class Timer
  NOW = now = Time.now
  YEAR = NOW.year
  DAY = NOW.day
  MONTH = NOW.month
  def initialize(t = 0)
    @time = Time.local(YEAR, MONTH, DAY) + t
  end

  def seconds
    @time.strftime("%S").to_i
  end

  def seconds=(s)
    @time = Time.local(YEAR, MONTH, DAY) + s
  end

  def time_string
    @time.strftime("%H:%M:%S")
  end
end