# frozen_string_literal: true

# this class is to handle
# permissions in the app
class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new

    case user.role.name
    when 'Admin'
      can :manage, :all
    when 'Manager'
      can :crud, Seller
    when 'Seller'
      can :manage, :all
    end
  end
end
