class CreateCustomers < ActiveRecord::Migration[6.0]
  def change
    create_table :customers do |t|
      t.string     :name, null: false
      t.string     :product
      t.integer    :count
      t.references :user,    null: false, foreign_key: true
      t.timestamps
    end
  end
end
