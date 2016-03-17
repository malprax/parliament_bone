# == Schema Information
#
# Table name: parliaments
#
#  id                       :integer          not null, primary key
#  name                     :string
#  dapil                    :string
#  fraksi                   :string
#  jabatan_fraksi           :string
#  komisi                   :string
#  jabatan_komisi           :string
#  jabatan_badan_anggaran   :string
#  jabatan_badan_musyawarah :string
#  jabatan_badan_kehormatan :string
#  jabatan_badan_legislatif :string
#  created_at               :datetime         not null
#  updated_at               :datetime         not null
#

class Parliament < ActiveRecord::Base
  # if Rails.env.development?
      has_attached_file :avatar, styles: { medium: "300x300>", thumb: "50x50>" }, default_url: "unknown_person.png"
  # end

 # validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/
 # validates_attachment_file_name :avatar, matches: [/png\Z/, /jpe?g\Z/]
end
