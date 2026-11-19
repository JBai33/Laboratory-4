class AddDatabaseProtections < ActiveRecord::Migration[8.1]
  def change
    change_column_null :teachers, :email, false
    add_index :teachers, :email, unique: true

    change_column_null :students, :name, false
    add_check_constraint :students,"year_level BETWEEN 1 AND 5", 
    name: "students_year_level_between_1_and_5"


    add_index :classlists, [ :student_id, :section_id ], unique: true,
    name: "index_classlists_on_student_and_section_unique"
    
  end
end
