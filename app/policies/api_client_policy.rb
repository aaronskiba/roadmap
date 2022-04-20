# frozen_string_literal: true

<<<<<<< HEAD
class ApiClientPolicy < ApplicationPolicy

  def initialize(user, *_args)
    raise Pundit::NotAuthorizedError, _("must be logged in") unless user

    @user = user
  end
=======
# Security rules for API Clients
# Note the method names here correspond with controller actions
class ApiClientPolicy < ApplicationPolicy
  # NOTE: @user is the signed_in_user
>>>>>>> upstream/master

  def index?
    @user.can_super_admin?
  end

  def new?
    @user.can_super_admin?
  end

  def create?
    @user.can_super_admin?
  end

  def edit?
    @user.can_super_admin?
  end

  def update?
    @user.can_super_admin?
  end

  def destroy?
    @user.can_super_admin?
  end

  def refresh_credentials?
    @user.can_super_admin?
  end

  def email_credentials?
    @user.can_super_admin?
  end
<<<<<<< HEAD

=======
>>>>>>> upstream/master
end
