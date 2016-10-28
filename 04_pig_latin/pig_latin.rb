#write your code here
def translate(text)
  letter = text[0]
  finished = false
  string = text

#more than one word
  if (text.split(' ').length > 1)
  	return more_than_one(text)
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