class CreateMembers < ActiveRecord::Migration[5.2]
  def change
    create_table :members do |t|
      t.string :user_id, null: false
      # t.string :string
      t.string :group_number, null: false
      # t.string :integer
      t.string :payer_name, null: false
      # t.string :string

      t.timestamps
    end
  end
end

#adding null: false ensurs columns have value before changing the database