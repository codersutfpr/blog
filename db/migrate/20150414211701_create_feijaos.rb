class CreateFeijaos < ActiveRecord::Migration
  def change
    create_table :feijaos do |t|
      t.string :tipo
      t.string :preco

      t.timestamps
    end
  end
end
