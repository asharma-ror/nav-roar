ActiveAdmin.register User do
  
  index do
    column :first_name, :label => 'First Name'
    column :last_name, :label => 'Last Name'
    column :email, :label => 'Email'
    column :roles, :label => 'Role' do |user|
      user.roles.join(", ")
    end
    default_actions
  end
  
  
  
  show do
    attributes_table do
      row('First Name') do
        resource.first_name
      end
      row ('Last Name') do
        resource.last_name
      end
      row ('Email') do
        resource.email
      end   
      row ('Role') do
        resource.roles.join(", ")
      end 
    end

  end
  
  
  
  form do |f|
    f.inputs "User Details" do
      f.input :first_name
      f.input :last_name
      f.input :email,
              label: "Email",
              required: true
      f.input :password,
              required: true
      f.input :password_confirmation,
              required: true
      f.input :roles, :as => :check_boxes, :collection => User::ROLES, :multiple => true

      f.input :address
    end
    f.buttons :submit
  end
  
end
