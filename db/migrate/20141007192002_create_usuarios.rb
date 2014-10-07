class CreateUsuarios < ActiveRecord::Migration
  def change
    create_table :usuarios do |t|
      t.string :nome
      t.string :endereco
      t.string :telefone
      t.string :estado
      t.string :tipo

      t.timestamps
    end
  end
end
