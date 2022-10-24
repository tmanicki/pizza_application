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
    accepts_nested_attributes_for :toppings

    validates :pName, uniqueness: { case_sensitive: false, message: "Pizza already exists" }, presence: {message: "Name field must be filled"}, format: { with: /\A[a-zA-Z\s]+\z/, message: "Pizza name must contain letters only" }
end
