class CreateState < ActiveRecord::Migration[5.2]
  def change
    create_table :states do |t|
	t.string :name
	t.integer :current_score, :limit => 8
	t.integer :highest_score, :limit => 8
	t.integer :budget, :limit => 8
	t.integer :stage, :limit => 8
	t.integer :rank, :limit => 8
	t.integer :point, :limit => 8
    end
  end
end
