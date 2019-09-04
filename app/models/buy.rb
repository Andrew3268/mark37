class Buy < ApplicationRecord
  belongs_to :user

  has_attached_file :buyimage, styles: { medium: "600x500#", small: "350x250>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :buyimage, content_type: /\Aimage\/.*\z/
end
