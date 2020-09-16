class TranslationRequest < ApplicationRecord
  belongs_to :requestor_id
  belongs_to :approver_id
  belongs_to :translator_id
end
