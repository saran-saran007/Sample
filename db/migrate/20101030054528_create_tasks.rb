class CreateTasks < ActiveRecord::Migration
  def self.up
    create_table :tasks do |t|
      t.integer :post_id
      t.integer :user_id
      t.integer :task_state
      t.string :page_visits
      t.string :geo_location
      t.string :alexa_rank
      t.string :g_index
      t.string :y_index
      t.string :b_index
      t.integer :gpr
      t.integer :bid_count

      t.timestamps
    end
  end

  def self.down
    drop_table :tasks
  end
end
