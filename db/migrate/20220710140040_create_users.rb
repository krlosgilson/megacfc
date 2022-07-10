class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name, limit: 80
      t.string :email, limit: 80

      t.timestamps
    end
  end
end
