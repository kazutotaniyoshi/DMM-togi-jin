class Request < ApplicationRecord
   belongs_to :customer
   has_one :inform
  enum status: {"しない":0,"する":1}#配送のステータス

   validates :date, presence: true
    def date
      return if date.blank?
      errors.add(:date, "過去の日付です。") if date < Date.today

      errors.add(:date, "は定休日です。") if date.thursday?
    end
   validates :time, presence: true
   validates :status, presence: true
   validates :name, presence: true
end
