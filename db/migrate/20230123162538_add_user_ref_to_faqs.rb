class AddUserRefToFaqs < ActiveRecord::Migration[7.0]
  def change
    add_reference :faqs, :user, null: false, foreign_key: true
  end
end
