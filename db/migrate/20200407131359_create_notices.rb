class CreateNotices < ActiveRecord::Migration[6.0]
  def change
    create_table :notices do |t|
      t.string :content
      t.integer :votes
      t.integer :chart_id

      t.timestamps
    end
  end
end
