ActiveAdmin.register Artwork do
  permit_params :name, :description, :year, :price, :artist, :image

  form multipart: true do |f|
    f.inputs "General" do
      f.input :name
      f.input :description
      f.input :year
      f.input :price
      f.input :artist
      f.input :image, as: :file, hint: f.template.image_tag(f.object.image.url) 
    end
    f.actions
  end
end
