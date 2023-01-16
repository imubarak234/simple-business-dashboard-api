class CreateInvoices < ActiveRecord::Migration[7.0]
  def change
    create_table :invoices do |t|
      t.decimal :cost
      t.string :date
      t.references :user, foreign_key: true
      t.references :staff, foreign_key: true
      t.timestamps
    end
  end
end
