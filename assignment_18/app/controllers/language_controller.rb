class LanguageController < ApplicationController
    def index
    @name = params[:name]
    @users_count = 4
  end
end
