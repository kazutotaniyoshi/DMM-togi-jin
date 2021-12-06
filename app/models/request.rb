class Request < ApplicationRecord
   has_many :requests, dependent: :destroy
end
