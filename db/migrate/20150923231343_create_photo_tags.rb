class CreatePhotoTags < ActiveRecord::Migration
  def change
    create_table :photo_tags do |t|
      t.belongs_to :photo
      t.belongs_to :tag

      t.timestamps null: false
    end
  end
end
