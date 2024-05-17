class AddPhotoToList < ActiveRecord::Migration[7.1]
  def change
    has_one_attached :lists, :photo
  end
end
