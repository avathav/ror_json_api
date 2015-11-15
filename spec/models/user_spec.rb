# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  email                  :string(255)      default(""), not null
#  encrypted_password     :string(255)      default(""), not null
#  reset_password_token   :string(255)
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string(255)
#  last_sign_in_ip        :string(255)
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  role                   :integer
#

require 'rails_helper'
require 'cancan/matchers'

RSpec.describe User, type: :model do
  it { should have_many(:blogs) }

  describe "abilities" do
    subject(:ability){ Ability.new(user) }
    let(:user){ nil }

    context "when is an admin" do
      xit{ should be_able_to(:manage, Blog.new) }
    end
    context "when is an guest" do
      xit{ should be_able_to(:read, Blog.new) }
    end
    context "when is an user" do
      xit{ should be_able_to(:create, Blog.new) }
    end
  end
end
