require 'spec_helper'

RSpec.describe Pluralizer do
  describe 'exceptions' do
    it { expect(described_class.pluralize('child')).to eq 'children' }
    it { expect(described_class.pluralize('mouse')).to eq 'mice' }
    it { expect(described_class.pluralize('kilo')).to eq 'kilos' }
  end

  describe 'uncountable words' do
    it { expect(described_class.pluralize('salmon')).to eq 'salmon' }
    it { expect(described_class.pluralize('trout')).to eq 'trout' }
  end

  it { expect(described_class.pluralize('woman')).to eq 'women' }
  it { expect(described_class.pluralize('genesis')).to eq 'geneses' }

  it { expect(described_class.pluralize('employ')).to eq 'employs' }
  it { expect(described_class.pluralize('fly')).to eq 'flies' }
  it { expect(described_class.pluralize('echo')).to eq 'echoes' }
  it { expect(described_class.pluralize('wolf')).to eq 'wolves' }
  it { expect(described_class.pluralize('knife')).to eq 'knives' }
  it { expect(described_class.pluralize('lens')).to eq 'lenses' }
  it { expect(described_class.pluralize('pluralizer')).to eq 'pluralizers' }

  context 'when word capitalized' do
    it { expect(described_class.pluralize('Child')).to eq 'Children' }
    it { expect(described_class.pluralize('Woman')).to eq 'Women' }
    it { expect(described_class.pluralize('Bison')).to eq 'Bison' }
    it { expect(described_class.pluralize('Man')).to eq 'Men' }
  end
end
