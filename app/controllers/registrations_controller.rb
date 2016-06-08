# app/controllers/registrations_controller.rb
class RegistrationsController < Devise::RegistrationsController
  def create
    # TODO: Create an address and assign the good id to the user
    params['user']['address_id'] = 1
    super
  end

  def update
    # TODO: Edit address
    super
  end
end
