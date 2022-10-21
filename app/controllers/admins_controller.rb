class AdminsController < ApplicationController
    before_action :authenticate_admins!
end
