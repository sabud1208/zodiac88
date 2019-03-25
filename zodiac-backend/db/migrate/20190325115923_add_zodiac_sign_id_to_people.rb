class AddZodiacSignIdToPeople < ActiveRecord::Migration[5.2]
  def change
    add_column :people, :zodiac_sign_id, :integer
    add_index  :people, :zodiac_sign_id

    Person.find_each do |person|
      person.send(:update_sign_id)
      person.save
    end
  end
end
