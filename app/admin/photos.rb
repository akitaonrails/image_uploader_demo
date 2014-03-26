ActiveAdmin.register Photo do
  index do
    column :comment
    column :url do |photo|
      photo.image.url
    end
    column :user do |photo|
      link_to photo.user.name, admin_user_path(photo.user)
    end
    column :created_at
    default_actions
  end

  form do |f|
    f.inputs do
      f.input :comment
      f.input :image
      f.input :user
    end

    f.actions
  end

  show do |resource|
    attributes_table do
      row :comment
      row :image do |photo|
        image_tag photo.image.url(:normal)
      end
      row :user do |photo|
        link_to photo.user.name, admin_user_path(photo.user)
      end
      row :created_at
    end
  end
end
