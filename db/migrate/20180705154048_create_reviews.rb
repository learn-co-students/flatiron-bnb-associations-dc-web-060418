class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.text :description
      t.integer :rating
      t.belongs_to :guest, index: true, foreign_key: true
      t.belongs_to :reservation, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
