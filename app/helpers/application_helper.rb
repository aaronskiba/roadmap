module ApplicationHelper

  def resource_name
    :user
  end

  # ---------------------------------------------------------------------------
  def resource
    @resource ||= User.new
  end

  # ---------------------------------------------------------------------------
  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end

  # Determines whether or not the URL path passed matches with the full path (including params) of the last URL requested.
  # see http://api.rubyonrails.org/classes/ActionDispatch/Request.html#method-i-fullpath for details
  # ---------------------------------------------------------------------------
  def isActivePage(path, exact_match = false)
    if exact_match
      return request.fullpath == path
    else
      return request.fullpath.include?(path)
    end
  end

  def fingerprinted_asset(name)
    Rails.env.production? ? "#{name}-#{ASSET_FINGERPRINT}" : name
  end

  def title(page_title)
    content_for(:title) { page_title }
  end
end
