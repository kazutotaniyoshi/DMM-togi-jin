class Request < ApplicationRecord
   belongs_to :customer
   has_one :inform
  enum status: {
        "配送の希望なし":0,
        "配送の希望あり":1
  }#配送のステータス
  enum making_status: {
    "確認中": 0,
    "0~30分": 1,
    "30~60分": 2,
    "60~90分": 3,
    "90分以上": 4
  }#仕上げ時間ステータス
  enum shop_name:{
      "木崎グルメランド": 0,
      "スーパーバリュー（前川店）": 1,
      "スーパーバリュー(伊刈店)": 2,
      "JA安行直売所": 3
  }#予約する場所

   validates :date, presence: true
   validates :time, presence: true
   validates :status, presence: true
   validates :name, presence: true
   validates :shop_name, presence: true

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
