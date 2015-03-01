class ChangeColumnProperty < ActiveRecord::Migration
  def change
    change_column(:logs, :positive_thing, :text)
    change_column(:logs, :positive_thing, :text)
    change_column(:logs, :idea, :text)
    change_column(:logs, :thought_again, :text)
    change_column(:logs, :remember, :text)
  end
end
