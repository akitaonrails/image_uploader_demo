class AddImageProcessingToPhoto < ActiveRecord::Migration
  def change
    add_column :photos, :image_processing, :boolean
  end
end
