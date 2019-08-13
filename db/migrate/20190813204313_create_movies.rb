class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
      t.string    :title
      t.string    :genre
      t.integer   :release_year
      t.string    :synopsis
      t.integer   :score
    end

    add_reference :movies, :user, foreign_key: true

  end
end
