class CreateUserInOuts < ActiveRecord::Migration[5.2]
  def change
    create_table :user_in_outs do |t|
      t.time :user_in
      t.time :user_out
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
