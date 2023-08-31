class CreateEventsPerformers < ActiveRecord::Migration[7.0]
  def change
      create_join_table :events, :performers
  end
end

