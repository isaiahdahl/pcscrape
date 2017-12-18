ActiveAdmin.register Song do
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
# actions :index, :show, :new, :create, :update, :edit

  index do

    selectable_column
    id_column
    column :title
    column :artist
    column :notation
    column :keyword
    column :sku

    actions
  end

  permit_params :title, :artist, :keyword, :url, :sku, :notation

end
