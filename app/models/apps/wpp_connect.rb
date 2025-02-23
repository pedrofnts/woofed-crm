# == Schema Information
#
# Table name: apps_wpp_connects
#
#  id           :bigint           not null, primary key
#  active       :boolean          default(FALSE), not null
#  endpoint_url :string           default(""), not null
#  name         :string
#  secretkey    :string           default(""), not null
#  session      :string           default(""), not null
#  status       :string           default("inactive"), not null
#  token        :string           default(""), not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
class Apps::WppConnect < ApplicationRecord
  scope :actives, -> { where(active: true) }

  enum status: {
    'inactive': 'inactive',
    'active': 'active',
    'sync': 'sync',
    'pair': 'pair',
  }

end
