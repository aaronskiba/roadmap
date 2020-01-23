# frozen_string_literal: true

class ResearchProjectsController < ApplicationController

  def index
    render json: research_projects
  end

  def search
    @results = research_projects.select { |r| r.description.match(params[:description]) }
    render json: @results
  end

  private

  def research_projects
    return @research_projects unless @research_projects.nil? ||
                                     @research_projects.empty?

    # If the cache is empty for some reason, delete the key
    Rails.cache.delete(["research_projects", funder_type])

    @research_projects = begin
      Rails.cache.fetch(["research_projects", funder_type], expires_in: 1.day) do
        Thread.new { ExternalApis::OpenAireService.search(funder: funder_type) }.value
      end
    end
  end

  def funder_type
    params.fetch(:type, ExternalApis::OpenAireService.default_funder)
  end

end
