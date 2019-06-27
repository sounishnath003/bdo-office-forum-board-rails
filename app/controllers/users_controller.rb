class UsersController < ApplicationController
     before_filter :authorize_admin, only: :create

  def create
    # admins only
  end

  private

  # This should probably be abstracted to ApplicationController
  # as shown by diego.greyrobot
  def authorize_admin
    return unless !current_user.admin?
    redirect_to root_path, alert: 'Admins only!'
  end
end
