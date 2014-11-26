class CreateEmployers < ActiveRecord::Migration
  def change
    create_table :employers do |t|
      t.string :company_name
      t.string :contact_person

      t.timestamps
    end
  end
end
