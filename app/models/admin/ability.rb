module Admin
  class Ability
    include CanCan::Ability

    def initialize(user)
      return unless user.admin?

      can :read, Order
      can :read, Trade
      can :read, Proof
      can :update, Proof
      can :manage, Member

      # 6/7/2018 10:31 PM topdev
      can :menu, Account
      Account.descendants.each { |a| can :manage, a }
      # 6/7/2018 10:32 PM topdev



      can :menu, Deposit
      Deposit.descendants.each { |d| can :manage, d }

      can :menu, Withdraw
      Withdraw.descendants.each { |w| can :manage, w }

      can :manage, Market
      can :manage, Currency
    end
  end
end
