class LogPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    # def resolve
    #   scope.all
    # end
  end

  def show?
    true
  end

  def create?
    record.user == user
  end

  # def update?
  #   record.goal.project.user == user
  # end

  def destroy?
    record.goal.project.user == user
  end
end
