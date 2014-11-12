class CreateCheerps < ActiveRecord::Migration
  def change
    create_table :cheerps do |t|
      t.string :image
      t.text :tweet

      t.timestamps
    end
  end
end
