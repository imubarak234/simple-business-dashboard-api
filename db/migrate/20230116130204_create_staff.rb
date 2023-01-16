class CreateStaff < ActiveRecord::Migration[7.0]
  def change
    create_table :staffs do |t|
      t.string :access_level
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
