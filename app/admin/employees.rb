ActiveAdmin.register Employee do
  permit_params :e_name, :e_title, multi_files: []

  filter :e_name

  show do |employee|
    attributes_table do
      row :e_name
      row :e_title
    end

    panel "Files" do
      ul do
        employee.multi_files.each do |file|
          li do
            if file.content_type.start_with?('image/')
              image_tag file, size: "200x150"

            elsif file.content_type.start_with?('video/')
              video_tag file, controls: true, autobuffer: true, size: "200x150"
              
            elsif file.content_type == 'application/pdf'
              link_to "Download PDF", rails_blob_path(file, disposition: "attachment")
            end
          end
        end
      end
    end
  end

  form do |f|
    f.inputs do
      f.input :e_name
      f.input :e_title
      f.input :multi_files, as: :file, input_html: { multiple: true }
    end
    f.actions
  end
end
