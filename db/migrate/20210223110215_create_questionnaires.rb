class CreateQuestionnaires < ActiveRecord::Migration[6.1]
  def change
    create_table :questionnaires do |t|
      t.integer :q1, null: false, default: 0
      t.integer :q2, null: false, default: 0
      t.text :q2_other, null: true
      t.integer :q3, null: false, default: 0
      t.integer :q4, null: false, default: 0
      t.integer :q5, null: false, default: 0
      t.integer :q6, null: false, default: 0
      t.integer :q7, null: false, default: 0
      t.text :q7_other, null: true
      t.integer :q8, null: false, default: 0
      t.text :q9, null: true

      t.timestamps
    end
  end
end
