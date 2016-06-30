ActiveAdmin.register Order do

permit_params :user_id, :name, :email, :phone, :organization_name, :organization_desc, :web_url, :status

index do
  selectable_column
  column :name
  column :email
  column :phone
  column :organization_name
  column :organization_desc
  column :web_url
  actions
end

form do |f|
  f.semantic_errors

  f.inputs except: [:requirement_file_path, :school_name, :school_phone, :school_address, :province, :city, :school_domain_name]

  f.inputs "Attachment", multipart: true do
    f.input :requirement_file_path, as: :file, hint: f.order.requirement_file_path? ? link_to(f.order.requirement_file_path, f.order.requirement_file_path.url) : content_tag(:span, "Upload requirement file")
  end

  f.actions
end

show do
  attributes_table do
    default_attribute_table_rows.each do |field|
      if field != :requirement_file_path &&
        field != :school_name &&
        field != :school_phone &&
        field != :school_address &&
        field != :province &&
        field != :city &&
        field != :school_domain_name
          row field
      end
    end

    row :requirement_file do
      link_to(order.requirement_file_path, order.requirement_file_path.url)
    end
  end

  attributes_table do
    row :content_file do
      link_to(order.content.file_path, order.content.file_path.url)
    end

    row :content_note do
      order.content.note
    end
  end

  attributes_table do
    row :product_detail do
      order.product
    end
  end

end

end
