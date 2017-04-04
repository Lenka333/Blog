class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.datetime :published_at
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps null: false
    end
  end
end
