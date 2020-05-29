class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.integer :ID
      t.string :label
      t.boolean :active

      t.timestamps
    end
  end
end
