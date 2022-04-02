class CreatePages < ActiveRecord::Migration[5.2]
  def up
    create_table :pages do |t|
      t.integer "subject_id"
      t.string "name"
      t.string "perma_link"
      t.integer "position"
      t.boolean "visible", :default => false

      t.timestamps
    end
      add_index("pages", "subject_id")
      add_index("pages", "perma_link")
    
  end

  def down
    drop_table :pages
  end
end
