class CreateFollowers < ActiveRecord::Migration[5.2]
  def change
    create_table :followers do |t|
      t.references :follower, references: :accounts
      t.references :following, references: :accounts
      t.timestamps
    end
  end
end
