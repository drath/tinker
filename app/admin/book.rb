ActiveAdmin.register Book do


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

  permit_params :title, :author, :review, :summary, :cover

  form :html => { :enctype => "multipart/form-data" } do |f|
    f.inputs "Details" do
      f.input :title
      f.input :summary, :as => :text
      f.input :author
      f.input :cover, :as => :file, :hint => f.template.image_tag(f.object.cover.url(:medium))
    end

    f.actions

  end


end
