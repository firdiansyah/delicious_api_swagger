class CreateSnacks < ActiveRecord::Migration[5.0]
  def change
    create_table :snacks do |t|
      t.string :name
      t.string :description
      t.string :pict_url
      t.string :string
      t.string :origin
      t.integer :price

      t.timestamps
    end
  end
end
