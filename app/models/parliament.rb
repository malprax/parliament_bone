class Parliament < ActiveRecord::Base
  # if Rails.env.development?
      has_attached_file :avatar, styles: { medium: "300x300>", thumb: "50x50>" }, default_url: "unknown_person.png"
  # end

 # validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/
 # validates_attachment_file_name :avatar, matches: [/png\Z/, /jpe?g\Z/]
end
