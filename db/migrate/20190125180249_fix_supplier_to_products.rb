class FixSupplierToProducts < ActiveRecord::Migration[5.2]
  def change
    rename_column :products, :supplie_id, :supplier_id
  end
end
