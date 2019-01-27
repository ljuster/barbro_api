require 'rails_helper'

# spec/models/todo_list_spec.rb

RSpec.describe Drinks, type: :model do
  it 'has a valid factory' do
    # Check that the factory we created is valid
    expect(build(:drinks)).to be_valid
  end

  let(:attributes) do
    {
      title: 'A test title'
    }
  end

  let(:drinks) { create(:drinks, **attributes) }

  describe 'model validations' do
    # check that the title field received the right values
    it { expect(drinks).to allow_value(attributes[:title]).for(:title) }
    # ensure that the title field is never empty
    it { expect(drinks).to validate_presence_of(:title) }
    # ensure that the title is unique for each todo list
    it { expect(drinks).to validate_uniqueness_of(:title)}
  end

end
