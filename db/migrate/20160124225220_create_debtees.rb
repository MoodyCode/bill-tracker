class CreateDebtees < ActiveRecord::Migration[5.0]
  def change
    create_table :debtees do |t|
      t.string :debtee
      t.string :website
      t.string :username
      t.string :password
      t.timestamps
    end
  end
end
