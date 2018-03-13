require 'rails_helper'

describe SampleRailsEngine::ApplicationHelper do
  describe '#title' do
    it 'should use content if provided' do
      expect(helper).to receive(:content_for).with(:title, 'lorem ipsum content')
      expect(helper.title('lorem ipsum content')).to eq('<h1>lorem ipsum content</h1>')
    end

    it 'should use block if provided' do
      expect(helper).to receive(:content_for).with(:title, 'lorem ipsum block')
      expect(helper.title { 'lorem ipsum block' }).to eq('<h1>lorem ipsum block</h1>')
    end

    it 'should use block if both provided' do
      expect(helper).to receive(:content_for).with(:title, 'lorem ipsum block')
      expect(helper.title('lorem ipsum content') { 'lorem ipsum block' }).to eq('<h1>lorem ipsum block</h1>')
    end
  end

  describe '#add_two_numbers' do
    it 'should return sum' do
      expect(helper.add_two_numbers(5, 6)).to eq(11)
    end
  end
end
