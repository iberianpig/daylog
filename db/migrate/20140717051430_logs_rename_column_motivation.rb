class LogsRenameColumnMotivation < ActiveRecord::Migration
  def change
    rename_column :logs, :motibation, :motivation
  end
end
