class CreateAddresses < ActiveRecord::Migration[7.0]
  def change
    create_table :addresses do |t|
      t.integer :cep
      t.string :logadouro
      t.string :district
      t.string :city
      t.string :uf
      t.string :ibge_code

      t.timestamps
    end
  end
end
