class XmlDocument

  def initialize(indents=false)
    @indents = indents
  end

  def method_missing(m, *args, &block)
    hash = args[0] || {}
    if @indents
      @level = 0 if @level.nil?
      new_row = "\n"
      current_indents = "  " * @level
      @level += 1
    else
      new_row = ""
      current_indents = ""
    end

    if block
      "#{current_indents}<#{m}#{hash.keys.each.map{|k| " #{k}='#{hash[k]}'"}.join('')}>#{new_row}#{block.call}#{current_indents}</#{m}>#{new_row}"
    else
      "#{current_indents}<#{m}#{hash.keys.each.map{|k| " #{k}='#{hash[k]}'"}.join('')}/>#{new_row}"
    end
  end

end