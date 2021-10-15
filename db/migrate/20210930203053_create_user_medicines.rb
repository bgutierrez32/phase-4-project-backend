class CreateUserMedicines < ActiveRecord::Migration[6.1]
  def change
    create_table :user_medicines do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :medicine, null: false, foreign_key: true
      t.boolean :purchased

      t.timestamps
    end
  end
end
