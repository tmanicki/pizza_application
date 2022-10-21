class Topping < ApplicationRecord
    has_and_belongs_to_many :pizzas
    validates :name, uniqueness: { case_sensitive: false, message: "Topping already exists" }, presence: {message: "Name field must be filled"}, format: { with: /\A[a-zA-Z\s]+\z/, message: "Topping must contain letters only" }
end
