class CreateLawyers < ActiveRecord::Migration
  def change
    create_table :lawyers do |t|
      t.string :full_name
      t.string :email
      t.string :skype
      t.string :address
      t.text :bar_memberships
      t.text :areas_of_expertise
      t.text :alma_maters

      t.timestamps
    end
  end
end
