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

require 'rails_helper'

RSpec.describe Api::V1::Blog, type: :model do
  it { should have_many(:blog_entries) }
  it { should belongs_to(:user) }
end
