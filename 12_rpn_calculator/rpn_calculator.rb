class RPNCalculator
  SYMBOLS = ['+', '-', '*', '/']
  def initialize
    @entries = []
  end

  def push(n)
    @entries << n
  end

  def plus
    run_block do
      @entries << @entries.pop(2).inject(:+)
    end
  end

  def minus
    run_block do
      @entries << @entries.pop(2).reverse.inject(:-)
    end
  end

  def divide
    run_block do
      @entries << @entries.pop(2).reverse.map(&:to_f).inject(:/)
    end
  end

  def times
    run_block do
      @entries << @entries.pop(2).inject(:*)
    end
  end

  def value
    @entries.last
  end

  def tokens(string)
    @tokens = string.split.each.map{|t| SYMBOLS.include?(t) ? t.to_sym : t.to_i}
  end

  def evaluate(string)
    string.split.each_with_index.map{|t, index|
      case t
        when '+'
          plus
        when '-'
          minus
        when '*'
          times
        when '/'
          divide
        else
          push t.to_f
      end
    }
    value
  end

  private
  def run_block
    if @entries.count == 0
      raise "calculator is empty"
    else
      yield
    end
  end
end