class CreateBudgets < ActiveRecord::Migration
  def change
    create_table :budgets do |t|
      t.string :parliament_id

      t.timestamps null: false
    end
  end
end
