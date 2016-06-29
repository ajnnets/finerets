ActiveAdmin.register Villa do
  permit_params :name, :description, :guest_count, :bedroom_count, :villa_detail_heading, :love_points_heading, :villa_rates_heading, :need_to_know_heading, :feature_and_facility_heading, :similar_villas, :published

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end


end
