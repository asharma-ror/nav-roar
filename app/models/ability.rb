class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new
    
    if user.roles.include?('Admin')
      can :manage, :all
    end 
    
    can :read, user do |user|
      user.roles.include?('Premium')
    end
    
    can :read, user do |user|
      user.roles.include?('Standard')
    end
  end
end
