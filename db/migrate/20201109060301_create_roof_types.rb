class CreateRoofTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :roof_types do |t|
      t.string :name
      t.string :model_part
      t.boolean :status

      t.timestamps
    end
  end
end
