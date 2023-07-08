class AddPostUrlAndRatingForMovie < ActiveRecord::Migration[7.0]
  def change
    add_column :movies, :post_url, :string
    add_column :movies, :rating, :integer
  end
end
