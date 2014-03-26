require 'spec_helper'

describe Photo do
  context "validations" do
    it { should validate_presence_of(:user) }
  end
end
