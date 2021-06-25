class CreateAuthorizations < ActiveRecord::Migration[6.1]
  def change
    create_table :authorizations do |t|
      t.integer :user_id
      t.integer :reservation_id

      t.timestamps
    end
  end
end
