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
    if word == "child"
      puts "children"
    elsif word == "ox"
      puts "oxen"
    elsif word == "tooth"
      puts "teeth"
    elsif word == "foot"
      puts "feet"
    elsif word == "person"
      puts "people"
    elsif word == "index"
      puts "indices"
    elsif word == "matrix"
      puts "matrices"
    elsif word == "vertex"
      puts "vertices"
    elsif word == "radius"
      puts "radii"
    elsif word == "automaton"
      puts "automata"
    elsif word == "alumnus"
      puts "alumni"
    elsif word == "axis"
      puts "axes"
    elsif word == "mouse"
      puts "mice"
    elsif word == "goose"
      puts "geese"
    elsif word == "cactus"
      puts "cacti"
    elsif word == "focus"
      puts "foci"
    elsif word == "fungus"
      puts "fungi"
    elsif word == "nucleus"
      puts "nuclei"
    elsif word == "bacterium"
      puts "bacteria"
    elsif word == "stimulus"
      puts "stimuli"
    elsif word == "syllabus"
      puts "syllabi"
    elsif word == "phenomenon"
      puts "phenomena"
    elsif word == "criterion"
      puts "criteria"
    elsif word == "datum"
      puts "data"
    elsif word == "sheep" || word == "fish" || word == "deer" || word == "bison" || word == "buffalo" || word == "moose" || word == "salmon" || word == "squid" || word == "trout" || word == "series" || word == "species" || word == "aircraft" || word == "watercraft" || word == "spacecraft" || word == "hovercraft"
      puts word
    elsif word[-3,3] == "man"
      puts word[0, word.length - 3] + "men"
    elsif word[-3,3] == "sis"
      puts word[0, word.length - 3] + "ses"
    elsif is_vowel(word[-2,1]) && word[-1,1] == "y"
      puts word + "s"
    elsif is_vowel(word[-2,1]) == false && word[-1,1] == "y"
      puts word[0, word.length - 1] + "ies"
    elsif is_vowel(word[-2,1]) && word[-1,1] == "o"
      puts word + "s"
    elsif is_vowel(word[-2,1]) == false && word[-1,1] == "o"
      puts word + "es"
    elsif word[-1,1] == "f"
      puts word[0, word.length - 1] + "ves"
    elsif word[-2,2] == "fe"
      puts word[0, word.length - 2] + "ves"
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
