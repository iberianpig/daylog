class CreateLogs < ActiveRecord::Migration
  def change
    create_table :logs do |t|
      t.string :goodthing
      t.string :idea
      t.string :rethink
      t.string :remember
      t.integer :motibation

      t.timestamps
    end
  end
end
