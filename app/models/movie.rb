class Movie < ApplicationRecord
    # 必要に応じてバリデーションやアソシエーションを追加
    has_many :schedules, dependent: :destroy

    validates :name, presence: true, uniqueness: { message: "はすでに登録されています。" }
    validates :year, presence: true
    validates :description, presence: true
    validates :image_url, presence: true
    # validates :is_showing, inclusion: { in: [true, false] }
  
    # アソシエーション例
    # has_many :schedules
end