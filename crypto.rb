class EncryptionEngine
	ALPHABET = ('a'..'z').to_a
	def encrypt(message)
		message = message.split('')
		message.map do |letter|
			if letter != " "
				if letter.capitalize == letter
					index_letter = ALPHABET.index(letter.downcase)
					index_letter >= ALPHABET.count/2 ? index_letter -= 13 : index_letter += 13
					new_letter = ALPHABET[index_letter].capitalize
				else
					index_letter = ALPHABET.index(letter)
					index_letter >= ALPHABET.count/2 ? index_letter -= 13 : index_letter += 13
					new_letter = ALPHABET[index_letter]
				end
			else
				" "
			end
		end.join
	end

	def decrypt(message)
	end
end

engine = EncryptionEngine.new
output = engine.encrypt("My Message")
output2 = engine.decrypt("Zl Zrffntr")
