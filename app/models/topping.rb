class Topping < ApplicationRecord
    validates :name, uniqueness: { case_sensitive: false, message: "already exists" }, presence: true, format: { with: /\A[a-zA-Z]+\z/, message: "must contain letters only" }
end
