require 'rails_helper'

describe 'the process for uploading a file' do
  it 'uploads a file' do
    visit '/'
    attach_file('file', Rails.root + "../example_data.csv")
    click_on "Import CSV"
    expect(page).to have_content 'Marty McFly'
  end
end