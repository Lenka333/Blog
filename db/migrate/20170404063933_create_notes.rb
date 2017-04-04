class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.integer :noteable_id
      t.string :noteable_type
      t.text :content
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps null: false
    end
  end
end
