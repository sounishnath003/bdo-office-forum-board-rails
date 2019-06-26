class Notice < ApplicationRecord
  belongs_to :user

  has_attached_file :attachment  #styles: { large: "600x600>", medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  #validates_attachment_content_type 
 validates_attachment :attachment, :content_type => {:content_type => %w(image/jpeg image/jpg image/png application/pdf application/msword application/vnd.openxmlformats-officedocument.wordprocessingml.document)}
  
  # do_not_validate_attachment_file_type :attachment

end
