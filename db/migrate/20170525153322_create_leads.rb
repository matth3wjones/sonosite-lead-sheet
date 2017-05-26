class CreateLeads < ActiveRecord::Migration
  def change
    create_table :leads do |t|
      t.string :salutation
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :company
      t.string :title
      t.string :department
      t.string :contact_specialty, null: false
      t.string :location, null: false
      t.string :street
      t.string :city, null: false
      t.string :state, null: false
      t.string :zip_code
      t.string :country, null: false
      t.string :phone
      t.string :fax
      t.string :email, null: false
      t.boolean :new_to_ultrasound
      t.string :previous_ultrasound
      t.boolean :current_sonosite
      t.string :buying_timeframe, null: false
      t.string :product
      t.string :rating
      t.text :marketing_comments

      t.timestamps(null:false)
    end
  end
end
