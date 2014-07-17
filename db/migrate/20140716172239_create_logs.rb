class CreateLogs < ActiveRecord::Migration
  def change
    create_table :logs do |t|
      t.date :log_day
      t.string :positive_thing
      t.string :idea
      t.string :thought_again
      t.string :remember
      t.integer :motibation

      t.timestamps
    end
  end
end
