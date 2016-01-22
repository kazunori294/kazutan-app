class CreateHosts < ActiveRecord::Migration
  def change
    create_table :hosts do |t|
      t.string :hostname
      t.string :hostclass
      t.string :os
      t.integer :cpu_num
      t.string :cpu_model
      t.string :memory
      t.string :ipaddress
      t.string :subnet

      t.timestamps
    end
  end
end
