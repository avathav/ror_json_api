class Ability
  include CanCan::Ability

  def initialize(user)
    if user.nil?
      can :read, :all
    elsif user.admin?
      can :manage, :all
    else
      can [:read, :create], [Api::V1::Blog,Api::V1::BlogEntry]
      can [:update, :destroy], Api::V1::Blog, :user_id => user.id
      can [:update, :destroy], Api::V1::BlogEntry, :blog => {:user_id => user.id}
    end
  end
end
