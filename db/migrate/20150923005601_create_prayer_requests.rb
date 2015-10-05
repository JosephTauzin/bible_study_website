class CreatePrayerRequests < ActiveRecord::Migration
  def change
    create_table :prayer_requests do |t|
      t.text :prayer_request

      t.timestamps null: false
    end
  end
end
