class CreateBibleStudies < ActiveRecord::Migration
  def change
    create_table :bible_studies do |t|
      t.string :date
      t.text :lesson
      t.string :takeaways

      t.timestamps null: false
    end
  end
end
