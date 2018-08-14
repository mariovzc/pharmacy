# frozen_string_literal: true

# this class is to handle
# permissions in the app
class Ability
  include CanCan::Ability

  def initialize(user)

    user ||= User.new
    case user.role
    when 'Admin'
      can :manage, :all
    when 'Managger'
      can :manage, :all
    when 'Seller'
      can :manage, :all
    end
  end
end
