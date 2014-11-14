class CreateChirpings < ActiveRecord::Migration
  def change
    create_table :chirpings do |t|
      t.text :name

      t.timestamps
    end
  end
end
