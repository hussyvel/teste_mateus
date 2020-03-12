class CreateTesteMateus < ActiveRecord::Migration[6.0]
  def change
    create_table :teste_mateus do |t|
      t.string :nome
      t.integer :id_seq
      t.text :descricao
      t.string :email
      t.date :data

      t.timestamps
    end
  end
end
