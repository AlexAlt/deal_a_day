require 'rails_helper'

describe Purchase do
  it { should belong_to :file_upload }
end