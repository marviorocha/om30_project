class Citizen < ActiveRecord::Migration[7.0]
  def change
    create_table :citizens do |t|
      t.string :full_name, null: false
      t.string :email, null: false
      t.string :cpf, null: false
      t.string :cns, null: false
      t.date :date_of_birth, null: false
      t.string :phone, null: false
      t.boolean :status, null: false
      t.timestamps
    end
  end
end
