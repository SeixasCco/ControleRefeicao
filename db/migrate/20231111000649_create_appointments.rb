class CreateAppointments < ActiveRecord::Migration[7.0]
  def change
    create_table :appointments do |t|
      t.date :date
      t.time :hour
      t.string :doctor

      t.timestamps
    end
  end
end
