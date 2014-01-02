# comments migration

class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :body
      t.preferences :post

      t.timestamps
    end
  end
end
