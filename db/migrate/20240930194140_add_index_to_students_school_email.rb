class AddIndexToStudentsSchoolEmail < ActiveRecord::Migration[7.1]
  def change
    add_index :students, :school_email, unique: true
  end
end
