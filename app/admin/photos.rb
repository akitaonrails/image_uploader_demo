ActiveAdmin.register Photo do
  index do
    column :comment
    column :url do |photo|
      photo.image.url unless photo.image_processing
    end
    column :user do |photo|
      link_to photo.user.name, admin_user_path(photo.user)
    end
    column :created_at
    default_actions
  end

  form :partial => "form"

  show do |resource|
    attributes_table do
      row :comment
      row :image do |photo|
        if photo.image_processing
          image_tag "animation_processing.gif"
        else
          image_tag photo.image.url(:normal)
        end
      end
      row :user do |photo|
        link_to photo.user.name, admin_user_path(photo.user)
      end
      row :created_at
    end
  end
end
