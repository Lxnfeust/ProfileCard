class CreateProfileCards < ActiveRecord::Migration[6.1]
  def change
    create_table :profile_cards do |t|
      t.text :background
      t.text :picture
      t.string :first_name
      t.string :last_name
      t.integer :birth_year
      t.text :hobbies

      t.timestamps
    end
  end
end
