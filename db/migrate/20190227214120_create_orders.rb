class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.belongs_to :user, foreign_key: true
      t.belongs_to :cake, foreign_key: true
      t.datetime :order_date
      t.boolean :fulfilled

      t.timestamps
    end
  end
end
