class CreateVotes < ActiveRecord::Migration[5.1]
  def change
    create_table :votes do |t|
      t.integer :selection
      t.references :poll, foreign_key: true
      t.string :userName

      t.timestamps
    end
  end
end
