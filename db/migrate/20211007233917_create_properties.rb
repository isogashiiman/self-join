class CreateProperties < ActiveRecord::Migration[5.2]
  def change
    create_table :properties do |t|

      t.timestamps
    end
    add_reference(:properties, :owner, foreign_key: { to_table: :companies })
	add_reference(:properties, :owned, foreign_key: { to_table: :companies })
  end
end
