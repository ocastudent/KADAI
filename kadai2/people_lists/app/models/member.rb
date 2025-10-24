class Member < ApplicationRecord
  validates :name,
            presence: { message: "Name can't be blank" },
            length: { minimum: 1, maximum: 20, message: "Name is too long (maximu is 20 characters)" },
            uniqueness: { case_sensitive: false }

  validates :height,
            presence: { message: "Must be 1 height can't be blank" }

  validates :weight,
            presence: { message: "Must be 1 weight can't be blank" }

end
