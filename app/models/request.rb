class Request < ApplicationRecord
   belongs_to :customer
   has_one :inform
  enum status: {"しない":0,"する":1}#配送のステータス

   validates :date, presence: true
   validates :time, presence: true
   validates :status, presence: true
   validates :name, presence: true

   validate :date_befor_start
    def date_befor_start
        return if date.blank?
    errors.add(:date, "は今日以降のものを選択してください") if date < Date.today
    end

    validate :start_time_not_thursday
    def start_time_not_thursday
        errors.add(:date, "は木曜日を選択できません") if date.thursday?
    end
end
