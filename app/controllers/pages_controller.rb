class PagesController < ApplicationController
    def home
      @events = @current_user.events 
      # @event = @current_user.event
    end
  end