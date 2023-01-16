class CreateStaff < ActiveRecord::Migration[7.0]
  def change
    create_table :staffs do |t|
      t.string :access_level

      t.timestamps
    end
  end
end
