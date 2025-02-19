# frozen_string_literal: true

# Generic methods used throughout the site
class ApplicationService
  class << self
    # Returns either the name specified in dmproadmap.rb initializer or
    # the Rails application name
    def application_name
      default = Rails.application.class.name.split('::').first
      _(Rails.configuration.x.application.fetch(:name, default))
    end
  end
end
