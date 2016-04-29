class AddAvatarToWines < ActiveRecord::Migration
  def up
    add_attachment :wines, :avatar
  end

  def down
    remove_attachment :wines, :avatar
  end
end
