ActiveAdmin.register Address do
  permit_params :city, :address, :zip
end
