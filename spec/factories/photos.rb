FactoryGirl.define do
  factory :photo do
    user
    image { Rack::Test::UploadedFile.new(File.open( Rails.root.join("app/assets/images/rails.png" ) ) ) }
  end
end
