class CommentPolicy < ApplicationPolicy
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
    # record.membership == user.membership
    true
    # if  @comment.membership.group == current_user.membership.group
    #   true
    # end
  end

  def destroy?
    record.membership.user == user
  end
end
