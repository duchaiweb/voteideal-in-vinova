class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.integer :rate
      t.references :user, index: true
      t.references :post, index: true

      t.timestamps
    end
  end
end
