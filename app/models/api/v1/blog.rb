# == Schema Information
#
# Table name: blogs
#
#  id          :integer          not null, primary key
#  title       :string(255)
#  decrtiption :text(65535)
#  is_visible  :boolean
#  user_id     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Api::V1::Blog < ActiveRecord::Base

  has_many :blog_entries, :class_name => 'Api::V1::BlogEntry', :dependent => :delete_all
  belongs_to :user
end
