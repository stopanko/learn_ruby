require 'benchmark'

def measure(number = 1)
  # p "ssss"
  (1..number).each.map{Benchmark.realtime{yield}.to_i}.inject(:+).to_f / number
end