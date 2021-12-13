class Request < ApplicationRecord
   belongs_to :customer
   has_one :inform
  enum status: {"しない":0,"する":1}#配送のステータス
end
