# == Schema Information
#
# Table name: blog_entries
#
#  id         :integer          not null, primary key
#  blog_id    :integer
#  title      :string(255)
#  content    :text(65535)
#  is_visible :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe Api::V1::BlogEntry, type: :model do
  it { should belongs_to(:blog) }
end
