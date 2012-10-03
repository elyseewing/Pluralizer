# The main Pluralizer class
class Pluralizer

  # Examples:
  #   >> Pluralizer.pluralize(book)
  #   => books
  #
  #   >> Pluralizer.pluralize(bunny)
  #   => bunnies  
  #
  # @param [String] word to be pluralized
  # @return [String] word in plural form

  def self.pluralize(word)
    if is_vowel(word[-2,1]) && word[-1,1] == "y"
      puts word + "s"
    elsif is_vowel(word[-2,1]) == false && word[-1,1] == "y"
      puts word[0, word.length - 1] + "ies"
    elsif is_vowel(word[-2,1]) && word[-1,1] == "o"
      puts word + "s"
    elsif is_vowel(word[-2,1]) == false && word[-1,1] == "o"
      puts word + "es"
    elsif word[-2,2] == "fe" || word[-1,1] == "f"
      puts word[0, word.length - 1] + "ves"
    elsif word[-1,1] == "s" || word[-2,2] == "ss" || word[-2,2] == "sh" || word[-2,2] == "ch" || word[-1,1] == "x" || word[-1,1] == "z"
      puts word + "es"
    else
      puts word + "s"
    end
  end

  def self.is_vowel(letter)
    if letter == "a" || letter == "e" || letter == "i" || letter == "o" || letter == "u"
      true
    else
      false
    end
  end

end
