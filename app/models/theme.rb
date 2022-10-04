# frozen_string_literal: true

# == Schema Information
#
# Table name: themes
#
#  id          :integer          not null, primary key
#  description :text
#  locale      :string
#  title       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

# Object that represents a question/guidance theme
class Theme < ApplicationRecord
  # ================
  # = Associations =
  # ================

  has_and_belongs_to_many :questions, join_table: 'questions_themes'
  has_and_belongs_to_many :guidances, join_table: 'themes_in_guidance'

  # ===============
  # = Validations =
  # ===============

  validates :title, presence: { message: PRESENCE_MESSAGE }

  # ==========
  # = Scopes =
  # ==========

  scope :search, lambda { |term|
    search_pattern = "%#{term}%"
    where('lower(title) LIKE lower(?) OR description LIKE lower(?)',
          search_pattern, search_pattern)
  }

  # ===========================
  # = Public instance methods =
  # ===========================

  # title and description are translated through the translation gem
  def title
    _(read_attribute(:title))
  end

  def description
    _(read_attribute(:description))
  end

  # The title of the Theme
  #
  # Returns String
  def to_s
    title
  end
end
