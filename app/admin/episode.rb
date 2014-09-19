ActiveAdmin.register Episode do


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

  permit_params :name, :description, :notes, :published_at, :position, :still, :lesson

  form :html => { :enctype => "multipart/form-data" } do |f|
    f.inputs "Details" do
      f.input :name
      f.input :description
      f.input :notes
      f.input :published_at
      f.input :position
      f.input :still, :as => :file, :hint => f.template.image_tag(f.object.still.url(:medium))
      f.input :lesson, :as => :file
    end
    f.actions
 end

end
