class CreateOrderLists < ActiveRecord::Migration[7.0]
  def change
    create_table :order_lists do |t|
      t.belongs_to :boba, null: false, foreign_key: true
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :order, null: false, foreign_key: true

      t.timestamps
    end
  end
end
