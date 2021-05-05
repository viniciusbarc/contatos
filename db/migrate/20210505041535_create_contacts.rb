class CreateContacts < ActiveRecord::Migration[6.1]
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :primary_email
      t.string :secondary_email
      t.string :primary_phone
      t.string :secondary_phone
      t.date :birth_date
      t.string :linkedin
      t.string :address
      t.string :notes

      t.timestamps
    end
  end
end
