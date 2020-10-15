class CreatJoinTableStudentClassesStudents < ActiveRecord::Migration[6.0]
  def change
    create_join_table :student_classes, :students do |t|
       t.index :student_class_id
       t.index :student_id
    end
  end
end
