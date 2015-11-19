require 'rails_helper'

describe FileUploadsController do

  it 'uploads a csv file' do
    file = fixture_file_upload("csv/test_example_data.csv", "text/csv")

    allow(Purchase).to receive(:import)
    params = {:file => file}
    post :import, params
    expect(response).to redirect_to(root_path)
  end
end