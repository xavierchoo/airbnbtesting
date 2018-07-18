class CreateAppointments < ActiveRecord::Migration[5.2]
  def change
    create_table :appointments do |t|
    	t.string :name
    	t.string :email
    	t.string :phone
    	t.string :product_id
    	t.datetime :appointment
      t.timestamps
    end
  end
end
