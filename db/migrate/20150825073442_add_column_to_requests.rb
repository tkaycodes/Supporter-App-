class AddColumnToRequests < ActiveRecord::Migration
  def change
    add_column :requests, :status, :boolean
  end
end
