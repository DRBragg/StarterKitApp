class CreateStarterKitFourDigitDisplays < ActiveRecord::Migration[5.1]
  def change
    create_table :starter_kit_four_digit_displays do |t|
      
      t.boolean :clock
      t.boolean :clock_ack
      t.boolean :clock_complete
      
      
      t.string :display
      t.boolean :display_ack
      t.boolean :display_complete
      
      
      t.string :port_number
      t.boolean :port_number_ack
      t.boolean :port_number_complete
      
      
      t.integer :starter_kit_id
      t.timestamps
    end
  end
end