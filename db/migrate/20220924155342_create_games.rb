class CreateGames < ActiveRecord::Migration[6.1]
  def change
    create_table :games do |t|
    t.integer "user_id"
    t.integer "score"
    t.integer "time"
      t.timestamps
    end
  end
end
