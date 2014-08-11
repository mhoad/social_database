class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.references :user, index: true
      t.string :name
      t.string :email
      t.string :website
      t.string :twitter_handle
      t.date :contacted
      t.boolean :industry_influencer
      t.boolean :power_user
      t.text :comments

      t.timestamps
    end
  end
end
