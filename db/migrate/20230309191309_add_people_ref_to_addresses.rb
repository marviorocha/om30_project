class AddPeopleRefToAddresses < ActiveRecord::Migration[7.0]
  def change
    add_reference :addresses, :people, null: false, foreign_key: true
  end
end
