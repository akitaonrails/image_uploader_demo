ActiveAdmin.register User do
  index do
    column :email
    column :name
    column :created_at
    default_actions
  end

  form do |f|
    f.inputs do
      f.input :email
      f.input :name
      f.input :password
      f.input :password_confirmation
    end

    f.actions
  end

  show do |resource|
    attributes_table do
      row :email
      row :name
      row :created_at
      row :updated_at
    end
  end
end
