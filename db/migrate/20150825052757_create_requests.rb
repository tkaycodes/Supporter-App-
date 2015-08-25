class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.string :name
      t.string :email
      t.text :department
      t.text :message

      t.timestamps null: false
    end
  end
end
