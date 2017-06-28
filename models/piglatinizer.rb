class PigLatinizer


  def piglatinize(word)
      loc =  /[aeiouAEIOU]/ =~ word
      if loc == 0
        word + 'way'
      else
        word[loc..-1] + word[0..loc-1] + 'ay'
      end
  end

  def to_pig_latin(user_phrase)
    user_phrase.split(' ').map! do |word|
      piglatinize(word)
    end.join(' ')
  end

end
