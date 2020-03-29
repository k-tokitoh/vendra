# TODO: 各種制約を書く。
ActiveRecord::Migration.create_table :beverages do |t|
  t.string  :name
  t.integer :price
  t.integer :count
end
