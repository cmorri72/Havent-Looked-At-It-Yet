class AddImageToStudents < ActiveRecord::Migration[7.1]
  def change
    add_column :students, :has_image, :boolean, default: false
  end
end
