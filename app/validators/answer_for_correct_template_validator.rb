# frozen_string_literal: true

<<<<<<< HEAD
=======
# Validation to ensure that the question for the plan exists in the template
>>>>>>> upstream/master
class AnswerForCorrectTemplateValidator < ActiveModel::Validator

  def validate(record)
    return if record.plan.nil? || record.question.nil?
    # Make sure that the question and plan belong to the same template!
    return unless record.plan.template == record.question.section.phase.template

<<<<<<< HEAD
    record.errors[:question] << I18n.t("helpers.answer.question_must_belong_to_correct_template")
  end

=======
    record.errors[:question] << I18n.t('helpers.answer.question_must_belong_to_correct_template')
  end
>>>>>>> upstream/master
end
