class CreateVkontakteUserInfos < ActiveRecord::Migration
  def change
    create_table :vkontakte_user_infos do |t|
      t.belongs_to :user, null: false
      t.integer :uid, null: false
      t.string :username, null: false
      t.string :nickname
      t.string :first_name
      t.string :last_name
      t.integer :sex
      t.string :link
      t.string :photo_url
      t.integer :dob_day
      t.integer :dob_month
      t.integer :dob_year

      t.timestamps
    end
    add_index :vkontakte_user_infos, :user_id, unique: true
    add_index :vkontakte_user_infos, :uid, unique: true
  end
end
