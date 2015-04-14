class CreateFeijos < ActiveRecord::Migration
  def change
    create_table :feijos do |t|
      t.string :tipo
      t.string :preco

      t.timestamps
    end
  end
end
