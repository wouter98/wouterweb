class CreateWouters < ActiveRecord::Migration[7.0]
  def change
    create_table :wouters do |t|
      t.string :first_name
      t.string :last_name
      t.string :number

      t.timestamps
    end
  end
end
