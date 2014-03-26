class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.references :user
      t.string :image

      t.timestamps
    end
    add_index :photos, :user_id
  end
end
