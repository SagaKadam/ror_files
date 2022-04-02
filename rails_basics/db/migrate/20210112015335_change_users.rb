class ChangeUsers < ActiveRecord::Migration[5.2]
  def up
    rename_table("users", "admin_users")
    add_column("admin_users", "username", :string,:limit=>25,:after=>"last_name")
    change_column("admin_users", "email", :string, :limit=>25)
    add_index("admin_users", "username")
  end

  def down
    remove_index("admin_users", "username")
    change_column("admin_users", "email", :string, :default=> '',:null=>false)
    remove_column("admin_users", "username")
    rename_table("admin_users", "users")
  end
end
