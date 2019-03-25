class CreatePeople < ActiveRecord::Migration[5.2]
  def change
    create_table :people do |t|
      t.string :name
      t.datetime :dob

      t.timestamp
    end
  end
end
