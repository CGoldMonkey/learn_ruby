#write your code here
def echo(text)
  text = text.to_s
  return text
end

def shout(text)
  text.upcase!
  return text
end

def repeat(text, *times) #could have also used default values here
  if times.empty?
    string = text+' '+text
  else
    string = text+(' '+text)*(times[0]-1)
  end
  return string
end

def start_of_word(text, placement)
  return text[0,placement]
end

def first_word(text)
  word = text.split(" ").first
  return word
end

def titleize(text)
  words = text.split(" ")
  words.each do |word|
    if (word != 'and' && word != 'the' && word != 'over')
  	  word.capitalize!
  	end
  end
  words[0].capitalize!
  return words.join(" ")
end