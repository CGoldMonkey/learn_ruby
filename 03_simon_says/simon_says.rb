#write your code here
def echo(word)
  return word.to_s
end

def shout(word)
  return word.upcase
end

def repeat(word, number = 2)
  words = []
  number.times { words.push(word) }
  return words.join(' ')
end

def start_of_word(word, length)
  return word.slice(0, length)
end

def first_word(text)
  return text.split(' ').first
end

def titleize(words)
  word_list = words.split.each do |word|
    if (word != 'and' && word != 'the' && word != 'over')
      word.capitalize!
    end
  end
  word_list[0].capitalize!
  word_list.join(' ')
end



































=begin

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

=end