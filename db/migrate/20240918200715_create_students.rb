class CreateStudents < ActiveRecord::Migration[7.1]
  def change
    create_table :students do |t|
      t.string :name
      t.string :school_email
      t.string :major
      t.string :minor
      t.date :graduation_date
      t.text :bio
      t.file :image

      t.timestamps
    end
  end
end
