class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :name
      t.string :location
      t.text :notes
      t.integer :created_by

      t.timestamps
    end

    add_index :events, :created_by
  end
end
