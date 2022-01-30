class Request < ApplicationRecord
   belongs_to :customer
   has_one :inform
  enum status: {"しない":0,"する":1}#配送のステータス
  enum making_status: {
    "確認": 0,
    "0~30分": 1,
    "30~60分": 2,
    "60~90分": 3,
    "90分以上": 4
  }#仕上げ時間ステータス

   validates :date, presence: true
   validates :time, presence: true
   validates :status, presence: true
   validates :name, presence: true

   validate :date_bfore
    def date_bfore
        return if date.blank?
    errors.add(:date, "は過去の日付です") if date < Date.today
    end

    validate :start_time_not_thursday
    def start_time_not_thursday
        errors.add(:date, "は定休日です選択できません") if date.thursday?
    end
end
