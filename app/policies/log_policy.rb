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
    true
  end

  def update?
    record.project.user == user
  end

  def destroy?
    record.project.user == user
  end
end
