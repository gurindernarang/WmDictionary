class Translation < ApplicationRecord
  validates :string_key, presence: true
  validates :key, presence: true, uniqueness: true
end
