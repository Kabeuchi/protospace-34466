class CreatePrototypes < ActiveRecord::Migration[6.0]
  def change
    create_table :prototypes do |t|

      t.string :titl, null: false
      t.text :catch_copy, null: false
      t.text :concept, null: false

      t.references :user, foreign_key: true
      
      t.timestamps
    end
  end
end
