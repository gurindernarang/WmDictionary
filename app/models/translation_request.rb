class TranslationRequest < ApplicationRecord
  belongs_to :user
  belongs_to :translation
end
