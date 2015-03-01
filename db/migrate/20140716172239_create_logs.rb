class CreateLogs < ActiveRecord::Migration
  def change
    create_table :logs do |t|
      t.date :log_day
      t.text :positive_thing
      t.text :idea
      t.text :thought_again
      t.text :remember
      t.integer :motivation

      t.timestamps
    end
  end
end
