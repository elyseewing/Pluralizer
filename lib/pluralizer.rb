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
    'child' => 'hildren',
    'ox' => 'xen',
    'tooth' => 'eeth',
    'foot' => 'eet',
    'person' => 'eople',
    'index' => 'ndices',
    'matrix' => 'atrices',
    'vertex' => 'ertices',
    'radius' => 'adii',
    'automaton' => 'utomata',
    'alumnus' => 'lumni',
    'axis' => 'xes',
    'mouse' => 'ice',
    'goose' => 'eese',
    'cactus' => 'acti',
    'focus' => 'oci',
    'fungus' => 'ungi',
    'nucleus' => 'uclei',
    'bacterium' => 'acteria',
    'stimulus' => 'timuli',
    'syllabus' => 'yllabi',
    'phenomenon' => 'henomena',
    'criterion' => 'riteria',
    'datum' => 'ata',
    'kilo' => 'ilos'
  }.freeze

  UNCOUNTABLE_WORDS = %w[sheep fish deer bison buffalo moose salmon squid trout
                         series species aircraft watercraft spacecraft hovercraft].freeze
  VOWELS = %w[a e i o u].freeze

  def self.pluralize(word)
    downcased_word = word.downcase
    if PLURALIZE_EXCEPTIONS.keys.include?(downcased_word)
      word[0] + PLURALIZE_EXCEPTIONS[downcased_word]
    elsif UNCOUNTABLE_WORDS.include?(downcased_word)
      word
    elsif downcased_word[-3, 3] == 'man'
      word[0, word.length - 2] + 'en'
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
