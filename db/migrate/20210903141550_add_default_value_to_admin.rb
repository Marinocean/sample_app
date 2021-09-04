# I created and conducted this migration because I had failed to add the default value (false) to
# 'admin' column on "20210902140516  Add admin to users"

class AddDefaultValueToAdmin < ActiveRecord::Migration[6.0]
  def change
    change_column_default :users, :admin, from: nil, to: false
  end
end
