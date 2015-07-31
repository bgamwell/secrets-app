class CreateSecrets < ActiveRecord::Migration
  def change
    create_table :secrets do |t|
      t.string :nickname
      t.string :country
      t.text :secret

      t.timestamps null: false
    end
  end
end
