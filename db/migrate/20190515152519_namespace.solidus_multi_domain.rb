# This migration comes from solidus_multi_domain (originally 20120223183401)
class Namespace < SolidusSupport::Migration[4.2]
  def up
    rename_table :products_stores, :spree_products_stores
  end

  def down
    rename_table :spree_products_stores, :products_stores
  end
end
