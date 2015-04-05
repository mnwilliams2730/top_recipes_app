class CreateFavorites < ActiveRecord::Migration
  def change
    create_table :favorites do |t|
      t.string :recipe_id
      t.string :title
    end
  end
end
