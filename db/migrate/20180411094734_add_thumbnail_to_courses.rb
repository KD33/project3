class AddThumbnailToCourses < ActiveRecord::Migration[5.0]
  def change
    add_column :courses, :thumbnail, :string
  end
end
