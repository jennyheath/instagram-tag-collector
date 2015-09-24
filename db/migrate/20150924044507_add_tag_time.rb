class AddTagTime < ActiveRecord::Migration
  def change
    add_column :photos, :tag_time, :datetime
  end
end
