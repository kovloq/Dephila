class AdministratorController < ApplicationController
	protect_from_forgery with: :exception
	layout 'dashboard'
end
