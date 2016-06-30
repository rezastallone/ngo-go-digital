ActiveAdmin.register User do

actions :all, except: [:new, :edit, :destroy]

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if resource.something?
#   permitted
# end

index do
  selectable_column
  id_column
  column :email
  column :sign_in_count
  column :last_sign_in_at
  column :created_at
  actions
end



end
