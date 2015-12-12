def echo(text)
	text
end

def shout(text)
	text.upcase
end	

def repeat(text, counter = 2)
	(text.concat(" ") * counter).chop
end

def start_of_word(text,count)
	text[0..count-1]
end

def first_word(text)
	text.split.first
end	

def titleize(text)
	text.split.each_with_index.map{|i, index| ((i.size <= 4 and index == 0) or (i.size > 4) or index == text.split.count - 1) ? i.capitalize : i}.join(" ").to_s
end