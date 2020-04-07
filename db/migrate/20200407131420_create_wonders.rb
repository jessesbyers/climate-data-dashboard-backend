class CreateWonders < ActiveRecord::Migration[6.0]
  def change
    create_table :wonders do |t|
      t.string :content
      t.integer :votes
      t.integer :chart_id

      t.timestamps
    end
  end
end
