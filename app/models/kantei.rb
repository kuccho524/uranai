class Kantei < ApplicationRecord
  belongs_to :member

  enum course: {Aコース: 0, Bコース:1, Cコース: 2}

  validates :last_name, presence: true
  validates :first_name, presence: true
  validates :last_name_kana, presence: true
  validates :first_name_kana, presence: true
  validates :course, presence: true
  validates :year, presence: true
  validates :month, presence: true
  validates :day, presence: true
  validates :born_year, presence: true
  validates :born_month, presence: true
  validates :born_day, presence: true
  validates :inquiry, length: { maximum: 30 }
end
