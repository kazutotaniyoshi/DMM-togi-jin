class Request < ApplicationRecord
   has_many :requests, dependent: :destroy
  enum status: {"しない":0,"する":1}
end
