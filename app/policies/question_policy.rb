# frozen_string_literal: true
<<<<<<< HEAD

class QuestionPolicy < ApplicationPolicy

  attr_reader :user, :question

  def initialize(user, question)
    raise Pundit::NotAuthorizedError, "must be logged in" unless user

    @user = user
    @question = question
  end
=======

# Security rules for questions
# Note the method names here correspond with controller actions
class QuestionPolicy < ApplicationPolicy
  # NOTE: @user is the signed_in_user and @record is an instance of Question
>>>>>>> upstream/master

  ##
  # Users can modify questions if:
  #  - They can modify templates
  #  - The template which they are modifying belongs to their org
  ##
  def index?
    @user.present?
  end

<<<<<<< HEAD
  def index?
    user.present?
  end

  def show?
    user.present?
  end

  def open_conditions?
    user.can_modify_templates?  &&  (question.section.phase.template.org_id == user.org_id)
  end

  def edit?
    user.can_modify_templates?  &&  (question.section.phase.template.org_id == user.org_id)
  end

  def new?
    user.can_modify_templates?  &&  (question.section.phase.template.org_id == user.org_id)
  end

  def create?
    user.can_modify_templates?  &&  (question.section.phase.template.org_id == user.org_id)
  end

  def update?
    user.can_modify_templates?  &&  (question.section.phase.template.org_id == user.org_id)
  end

  def destroy?
    user.can_modify_templates?  &&  (question.section.phase.template.org_id == user.org_id)
  end

  # TODO: Remove this after annotations controller is refactored
  def admin_update?
    user.can_modify_templates?  &&  (question.section.phase.template.org_id == user.org_id)
  end

=======
  def show?
    @user.present?
  end

  def open_conditions?
    @user.can_modify_templates?  &&  (@record.section.phase.template.org_id == @user.org_id)
  end

  def edit?
    @user.can_modify_templates?  &&  (@record.section.phase.template.org_id == @user.org_id)
  end

  def new?
    @user.can_modify_templates?  &&  (@record.section.phase.template.org_id == @user.org_id)
  end

  def create?
    @user.can_modify_templates?  &&  (@record.section.phase.template.org_id == @user.org_id)
  end

  def update?
    @user.can_modify_templates?  &&  (@record.section.phase.template.org_id == @user.org_id)
  end

  def destroy?
    @user.can_modify_templates?  &&  (@record.section.phase.template.org_id == @user.org_id)
  end

  # TODO: Remove this after annotations controller is refactored
  def admin_update?
    @user.can_modify_templates?  &&  (@record.section.phase.template.org_id == @user.org_id)
  end
>>>>>>> upstream/master
end
