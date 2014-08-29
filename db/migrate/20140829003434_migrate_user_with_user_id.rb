class MigrateUserWithUserId < ActiveRecord::Migration
  def up
    #UserIdとDayLogsヒモ付を行う
    #twitterのIdを利用
    Log.all.each do |log|
      log.user_id=1
      log.save
    end
  end
  def down
    # nothing to do
  end
end
