class CreateNotesTable < ActiveRecord::Migration
  def change
    create_table :notes_tables do |t|
      t.string :title
      t.text :body
    end
  end
end
