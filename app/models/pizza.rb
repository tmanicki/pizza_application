# == Schema Information
#
# Table name: pizzas
#
#  id         :integer          not null, primary key
#  pName      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Pizza < ApplicationRecord
    has_and_belongs_to_many :toppings
    validates :pName, uniqueness: { case_sensitive: false, message: "Topping already exists" }, presence: {message: "Name field must be filled"}, format: { with: /\A[a-zA-Z\s]+\z/, message: "Topping must contain letters only" }
end
