class DropTablePizzas < ActiveRecord::Migration[7.0]
  def change
    drop_table :pizzas
  end
end
