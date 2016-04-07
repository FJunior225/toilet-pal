class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.belongs_to :reviewer, null:false, index: true
      t.belongs_to :toilet, null: false, index: true
      t.string :review_text, null: false
      t.integer :rating

      t.timestamps null: false
    end
  end
end
