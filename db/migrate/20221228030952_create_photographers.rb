class CreatePhotographers < ActiveRecord::Migration[7.0]
  def change
    create_table :photographers do |t|
      t.string :name

      t.timestamps
    end
  end
end
