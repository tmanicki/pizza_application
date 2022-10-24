class CreateToppingPizzaJoin < ActiveRecord::Migration[7.0]
  def change
      create_join_table :toppings, :pizzas
  end
end
