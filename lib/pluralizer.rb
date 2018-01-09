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

  PLURALIZE_EXCEPTIONS = {
    'child' => 'children',
    'ox' => 'oxen',
    'tooth' => 'teeth',
    'foot' => 'feet',
    'person' => 'people',
    'index' => 'indices',
    'matrix' => 'matrices',
    'vertex' => 'vertices',
    'radius' => 'radii',
    'automaton' => 'automata',
    'alumnus' => 'alumni',
    'axis' => 'axes',
    'mouse' => 'mice',
    'goose' => 'geese',
    'cactus' => 'cacti',
    'focus' => 'foci',
    'fungus' => 'fungi',
    'nucleus' => 'nuclei',
    'bacterium' => 'bacteria',
    'stimulus' => 'stimuli',
    'syllabus' => 'syllabi',
    'phenomenon' => 'phenomena',
    'criterion' => 'criteria',
    'datum' => 'data',
    'kilo' => 'kilos'
  }.freeze

  UNCOUNTABLE_WORDS = %w[sheep fish deer bison buffalo moose salmon squid trout
                         series species aircraft watercraft spacecraft hovercraft].freeze
  VOWELS = %w[a e i o u].freeze

  def self.pluralize(word)
    if PLURALIZE_EXCEPTIONS.keys.include?(word)
      PLURALIZE_EXCEPTIONS[word]
    elsif UNCOUNTABLE_WORDS.include?(word)
      word
    elsif word[-3, 3] == 'man'
      word[0, word.length - 3] + 'men'
    elsif word[-3, 3] == 'sis'
      word[0, word.length - 3] + 'ses'
    elsif VOWELS.include?(word[-2, 1]) && %w[y o].include?(word[-1, 1])
      word + 's'
    elsif !VOWELS.include?(word[-2, 1]) && word[-1, 1] == 'y'
      word[0, word.length - 1] + 'ies'
    elsif !VOWELS.include?(word[-2, 1]) && word[-1, 1] == 'o'
      word + 'es'
    elsif word[-1, 1] == 'f'
      word[0, word.length - 1] + 'ves'
    elsif word[-2, 2] == 'fe'
      word[0, word.length - 2] + 'ves'
    elsif %w[s x z].include?(word[-1, 1]) || %w[ss sh ch].include?(word[-2, 2])
      word + 'es'
    else
      word + 's'
    end
  end
end
