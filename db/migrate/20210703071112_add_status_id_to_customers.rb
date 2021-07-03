class AddStatusIdToCustomers < ActiveRecord::Migration[6.0]
  def change
    add_column :customers, :status_id, :integer, null: false
  end
end
