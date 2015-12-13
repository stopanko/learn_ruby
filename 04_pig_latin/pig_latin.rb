
def translate(word)
	word.split.each.map do |w|
		PigLatin.translate_word w
	end.join(" ")
end


module PigLatin
	VOWELS = %w[a e i o u]
	CONSTANTS = %w[qu sch]
	def self.translate_word(word)
		if VOWELS.include?(word[0])
			word + "ay" 
		else
			word[get_consonant_part(word).size..-1] + get_consonant_part(word) + "ay"
		end
	end

	def self.get_consonant_part(word, res= "")
		# word = text.split('')
		CONSTANTS.each{|c| if word.match(c);res << c; word = word.gsub(c,"");end}
		unless VOWELS.include?(word[0])
			#word.find_index{|i| VOWELS.include?(i)} == nil
			res << word[0]
			get_consonant_part(word[1..-1], res)
		end
		res
	end

	def self.get_phoneme_part(word, res= "")
		if VOWELS.include?(word[0])
			res << word[0]
			get_consonant_part(word[1..-1], res)
		end
		res
	end

end
