require 'rails_helper'

RSpec.describe "resumes/show", type: :view do
  before(:each) do
    @resume = assign(:resume, Resume.create!(
      :sentence => "Sentence",
      :is_translation => false,
      :owner_id => 1,
      :translator_id => 2,
      :language => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Sentence/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(//)
  end
end
