class AddRemoteUrlFieldToPhoto < ActiveRecord::Migration
  def change
    add_column :photos, :original_image_url, :string
  end
end
