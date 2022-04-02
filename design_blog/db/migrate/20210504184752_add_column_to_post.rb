class AddColumnToPost < ActiveRecord::Migration[5.2]
  def change
    add_reference :posts, :users, index: true
  end
end
