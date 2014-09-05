class MigrateUserWithUserId < ActiveRecord::Migration
  def up
    #twitterのId->facebookIdを利用
    Log.all.each do |log|
      log.user_id=2
      log.save
    end
  end
  def down
    # nothing to do
  end
end
