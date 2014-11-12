class CreateChirps < ActiveRecord::Migration
  def change
    create_table :chirps do |t|
      t.string :chirp
      t.integer :pic
      t.references :user

      t.timestamps
    end
  end
end
