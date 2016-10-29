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