require 'spec_helper'

describe Photo do
  context "validations" do
    it { should validate_presence_of(:user) }
    it { should validate_presence_of(:remote_image_url) }
    it { should ensure_length_of(:comment).is_at_most(140) }
  end
end
