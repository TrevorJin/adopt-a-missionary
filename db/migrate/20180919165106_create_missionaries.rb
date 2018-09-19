class CreateMissionaries < ActiveRecord::Migration[5.2]
  def change
    create_table :missionaries do |t|
      t.string :name
      t.string :campus
      t.string :image_url

      t.timestamps
    end
  end
end
