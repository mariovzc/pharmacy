# == Schema Information
#
# Table name: users
#
#  id               :integer          not null, primary key
#  email            :string           not null
#  crypted_password :string
#  salt             :string
#  role_id          :integer
#  first_name       :string
#  last_name        :string
#  document         :string
#  status           :boolean          default(TRUE)
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  role_name        :string
#

class Admin < User
end
