class Member < ApplicationRecord

    validates :name, presence: { message: "Name can't be black" }, length: { maximum: 20, message: "Name istoo long ()maximum is 20 characters" }, uniqueness: true

    validates :height, presence: { message: "Must be 1 height can't be blank" }, numericality: { greater_than_or_equal_to: 1 }

    validates :weight, presence: { message: "Must be 1 weight can't be blank" }, numericality: { greater_than_or_equal_to: 1 }

end
