class Relation < ActiveRecord::Migration
  def change
  	add_reference :notes, :articles, polymorphic: true, index: true
    add_reference :notes, :books, polymorphic: true, index: true
  end
end
