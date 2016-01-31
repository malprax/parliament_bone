class CreateOrganizeFractions < ActiveRecord::Migration
  def change
    create_table :organize_fractions do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
