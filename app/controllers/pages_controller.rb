class PagesController < ApplicationController
  def index
    if ENV['VIMEO_TOKEN']
      @sample_responses = [
          get_and_load("https://api.vimeo.com/me?fields=uri,name&"),
          get_and_load("https://api.vimeo.com/videos/113009024?")
      ]
    end
  end

  private

  def get_and_load(url)
    Oj.load(
        RestClient.get(url, {
            params: {access_token: ENV['VIMEO_TOKEN']}
        }).body). # at this point you'll have JSON object with all the requested fields
        to_yaml # to_yaml is used for visual formatting only
  end
end