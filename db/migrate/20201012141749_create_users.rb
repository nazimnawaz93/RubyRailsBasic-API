class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :FirstName
      t.string :LastName
      t.string :userName
      t.string :Password
    end
  end
end
