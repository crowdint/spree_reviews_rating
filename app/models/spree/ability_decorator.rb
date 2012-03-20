class Spree::AbilityDecorator
  include CanCan::Ability

  def initialize(user)
    can :create, Spree::Review do |review|
      user.has_role?(:user) || !Spree::Config[:require_login]
    end
    can :read, Spree::Review
  end
  Spree::Ability.register_ability(Spree::AbilityDecorator)
end
