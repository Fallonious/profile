class ProfileController < ApplicationController
  def show
    @response = HTTParty.get("https://api.github.com/users/Fallonious",
    :headers => {
      "Authorization" => "token #{ENV['GITHUB_TOKEN']}",
      "User-Agent" => "User-Agent"})
    end

    def repos
      @response = HTTPS.get("https://api.github.com/users/Fallonious/repos")

    end
  end
