class CreateCharts < ActiveRecord::Migration[6.0]
  def change
    create_table :charts do |t|
      t.string :name
      t.string :data_url

      t.timestamps
    end
  end
end
