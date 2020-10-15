class CreateStudentClasses < ActiveRecord::Migration[6.0]
  def change
    create_table :student_classes do |t|
      t.integer :capacity
      t.string :class_gender

      t.timestamps
    end
  end
end
