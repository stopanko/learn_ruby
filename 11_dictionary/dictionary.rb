class Dictionary

  def initialize
    @entries = {}
  end

  def add(hash)
    if hash.is_a?(Hash)
      @entries.merge!(hash)
    elsif hash.is_a?(String)
      @entries[hash] = nil
    end
  end

  def include?(key)
    @entries.include?(key)
  end

  def find(word)
      res = {}
      keys = keywords.select{|k| k if k.match(word)}
      keys.each{|k| res[k] = @entries[k]}
      res
  end

  def printable
    res = []
    keywords.each{|k| res << %Q{[#{k}] "#{@entries[k]}"}}
    res.join("\n")
  end

  def keywords
    @entries.keys.sort
  end

  def entries
    @entries
  end
end