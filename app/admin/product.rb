ActiveAdmin.register Product do

permit_params :order_id, :status, :domain, :cpanel_username, :cpanel_password, :wordpress_username, :wordpress_password, :g4np_email, :g4np_password, :note

end
