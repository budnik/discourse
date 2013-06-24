class VkontakteUserInfo < ActiveRecord::Base
  belongs_to :user
end

# == Schema Information
#
# Table name: facebook_user_infos
#
#  id               :integer          not null, primary key
#  user_id          :integer          not null
#  uid              :integer          not null
#  username         :string(255)      not null
#  first_name       :string(255)
#  last_name        :string(255)
#  sex              :integer
#  link             :string(255)
#  photo_url        :string(255)
#  created_at       :datetime         not null
#  dob_day          :integer
#  dob_month        :integer
#  dob_year         :integer
#  updated_at       :datetime         not null
#
# Indexes
#
#  index_vkontakte_user_infos_on_uid       (uid) UNIQUE
#  index_vkontakte_user_infos_on_user_id   (user_id) UNIQUE
#