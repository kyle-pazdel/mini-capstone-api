class AddSupplierIdToProducts < ActiveRecord::Migration[7.0]
  def change
    add_column :products, :supplier_id, :integer, default: 0
  end
end
