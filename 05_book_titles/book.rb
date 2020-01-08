class Book
# write your code here
  attr_accessor :title

  def title
	conjunctions = 
	words = @title.split(' ')
	p words
	words.map! do |word|
	  if (word.match?(/^and(?!.)|^in(?!.)|^the(?!.)|^of(?!.)|^a(?!.)|^an(?!.)/))
        #do nothing
	  else
		word.capitalize!
	  end
	  word	
	end
	words[0].capitalize!
	return words.join(' ')
  end
end


=begin
class Book
  attr_accessor :title

  def title
  	words = @title.split(' ')
  	words.each do |word|
  	  case word
  	  when 'and' #conjuctions
  	  when 'in', 'the', 'of' #prepositions
  	  when 'a', 'an' #articles
  	  else 
  	    word.capitalize!
  	  end
  	end
  	words.first.capitalize!
  	words.join(' ')
  end
end

=end