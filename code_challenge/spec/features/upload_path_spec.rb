require 'rails_helper'

describe 'the process for uploading a file' do
  it 'uploads a file' do
    visit '/'
    attach_file('Import CSV', Rails.root + "../example_data.csv")
    expect(page).to have_content 'Purchaser Name'
  end
end