#write your code here
def translate(text)
  words = text.split(' ')
  words.map! do |word|
    while !(word.start_with?('a', 'e', 'i', 'o', 'u'))
      if word.start_with?('qu')
        word += 'qu'
        word[0, 2] = ''
      else    
        first_letter = word[0]
        word += first_letter
        word[0] = ''
      end
    end

    if word.match?(/[A-Z]/)
      word.downcase!.capitalize!
    end

    word += 'ay'

    if word.match?(/\W/)
      puctuation = word.match(/\W/).to_s
      word.sub!(/\W/, '')
      word += puctuation
    end
    word
  end

  translated_text = words.join(' ')

  return translated_text
end

# Rule 1: If a word begins with a vowel sound, add an "ay" sound to the end of the word.

# Rule 2: If a word begins with a consonant sound, move it to the end of the word, and then add 
# an "ay" sound to the end of the word.


=begin 
def translate(text)
  letter = text[0]
  finished = false
  string = text
  ending = text[-1]

#more than one word
  if (text.split(' ').length > 1)
  	return more_than_one(text)
  end

  #determine if puctuation
  if ending=='!'||ending=='.'||ending=='?'
    puctuation = true
    string = text[0..-2]
  else
    puctuation = false
  end

  #determine if uppercase
  if letter.upcase == letter
    capitals = true
    letter.downcase!
  else
    capitals = false
  end

  #rearange letters depending on placement of vowels, constants, or phoneme
  while !finished
	if (letter=='a'||letter=='e'||letter=='i'||letter=='o'||letter=='u')
	  finished = true
	elsif letter == 'q' && string[1] == 'u' #if ther is a qu
	  phoneme = string[0..1]
	  string = string[2..-1]
	  string<<phoneme
	  letter = string[0]
	else
	  string = string[1..-1]
	  string<<letter
	  letter = string[0]
	end
  end
#then add the 'ay'
  if finished == true
    finalWord = string<<'ay'
    if capitals
      finalWord.capitalize!
    end
    if puctuation
      finalWord<<ending
    end
  end
  return finalWord
end

def more_than_one(original)
  words = original.split(' ')
  words.each_index do |index|  #An error when I use each but not each_index
    words[index] = translate(words[index])
  end
  return words.join(' ')
end

=end