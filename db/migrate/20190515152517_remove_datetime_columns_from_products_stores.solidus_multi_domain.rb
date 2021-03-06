# This migration comes from solidus_multi_domain (originally 20110601125650)
class RemoveDatetimeColumnsFromProductsStores < SolidusSupport::Migration[4.2]
  def self.up
    change_table :products_stores do |t|
      t.remove :created_at, :updated_at
    end
  end

  def self.down
    change_table :products_stores do |t|
      t.timestamps
    end
  end
end
