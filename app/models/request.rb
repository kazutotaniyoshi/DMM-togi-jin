class Request < ApplicationRecord
   belongs_to :customer
   has_one :inform
  enum status: {"しない":0,"する":1}#配送のステータス

   validates :date, presence: true
   validates :time, presence: true
   validates :status, presence: true
   validates :name, presence: true
end
