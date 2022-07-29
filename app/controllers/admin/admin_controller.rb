class Admin::AdminController < ApplicationController
    def index
      @admin = User.all
    end

    def show
      @admin
    end

    def comments
    end

    def users
    end