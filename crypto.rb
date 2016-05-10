class EncryptionEngine
	ALPHABET = ('a'..'z').to_a
	def encrypt(message)
		message.downcase!
		message = message.split('')
		message.map do |letter|
			if letter != " "
				index_letter = ALPHABET.index(letter)
				index_letter > ALPHABET.count/2 ? index_letter-=13 : index_letter+=13
				new_letter = ALPHABET[index_letter]
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
p output
output2 = engine.decrypt("Zl Zrffntr")
p output2