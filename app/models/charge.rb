class Charge < ApplicationRecord
  belongs_to :customer

  scope :paid, -> { where(paid: true) }
  scope :failed, -> { where(paid: false, disputed: false) }
  scope :disputed, -> { where(paid: false, disputed: true) }
end