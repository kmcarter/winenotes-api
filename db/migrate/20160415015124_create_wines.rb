class CreateWines < ActiveRecord::Migration[5.0]
  def change
    create_table :wines do |t|
      t.string :name
      t.string :varietal
      t.integer :year
      t.string :vinyard

      t.timestamps
    end
  end
end
