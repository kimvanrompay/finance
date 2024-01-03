class CreateTransactions < ActiveRecord::Migration[7.1]
  def change
    create_table :transactions do |t|
      t.string :name
      t.text :description
      t.float :amount
      t.integer :category
      t.string :reference
      t.date :duedate
      t.integer :status
      t.integer :booknumber
      t.string :invoice

      t.timestamps
    end
  end
end
