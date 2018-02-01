class CreateLessons < ActiveRecord::Migration[5.1]
  def change
      create_table :lessons do |t|
      t.string :title
      t.text :body
      t.integer :course_id
      t.references :course, foreign_key: true #dans le tableau lessons, on créée une colonne avec le cours associé et foreign_key permet de s'assurer que chaque leçon a un cours associé.
      t.timestamps
    end
  end
end
 
