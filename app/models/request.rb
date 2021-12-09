class Request < ApplicationRecord
   belongs_to :customer
  enum status: {"しない":0,"する":1}
end
