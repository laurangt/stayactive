class HeartPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    # def resolve
    #   scope.all
    # end
  end

  def create?
    record.membership.user == user
  end

  def destroy?
    record.membership.user == user
  end
end
