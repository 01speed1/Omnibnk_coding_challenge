class Movie < ApplicationRecord
  belongs_to :user

  PERIMITED_PARAMS = [
    :title,
    :genre,
    :release_year,
    :synopsis,
    :score,
    :user,
    :poster
  ]

  validates :title,
  :genre,
  :release_year,
  :synopsis,
  :score,
  :user, presence: true
end