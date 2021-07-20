class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.text :fullname
      t.text :email
      t.text :body

      t.timestamps
    end
  end
end
