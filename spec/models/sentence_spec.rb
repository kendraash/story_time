require 'rails_helper'

describe Sentence do
  it { should validate_presence_of :user }
  it { should validate_presence_of :body }
  it { should belong_to :story }
end
