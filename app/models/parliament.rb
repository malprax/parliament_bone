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
require 'roo'
class Parliament < ActiveRecord::Base

  # if Rails.env.development?
      has_attached_file :avatar, styles: { medium: "300x300>", thumb: "50x50>" }, default_url: "unknown_person.png"
  # end
  # def self.import(file)
  #   #code
  #   Roo::Excelx.create!
  # end

  # def self.import(file)
  #   #code
  #   spreadsheet = open_spreadsheet(file)
  #   header = spreadsheet.row(1)
  #   (2..spreadsheet.last_row).each do |i|
  #   row = Hash[[header, spreadsheet.row(i)].transpose]
  #   parliament = find_by_id(row["id"]) || new
  #   parliament.attributes = row.to_hash.slice(*accessible_attributes)
  #   parliament.save!
  # end

  # def self.open_spreadsheet(file)
    #code
    # case File.extname(file.original_filename)
    # when '.csv' then Csv.new(file.path, nil, :ignore)
    # when '.xls' then Excel.new(file.path, nil, :ignore)
    # if '.xlsx' then Excelx.new(file.path, nil, :ignore)
    # else raise "Unknown file type: #{file.original_filename}"
    # end
  # end

  def self.import(file)
    #code
    ex  = Roo::Excel.new("#{Rails.root}/public/Wakil_Rakyat_DPRD_Bone.xls")
    # ex.default_sheet = ex.sheets[1]
    3.upto(1000) do |line|
      name = ex.cell(line,'A')
      dapil = ex.cell(line, 'B')
      fraksi = ex.cell(line,'B')
      @allparliaments = Parliament.create(:name => name, :dapil => dapil, :fraksi => fraksi)
    end
  end
 # validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/
 # validates_attachment_file_name :avatar, matches: [/png\Z/, /jpe?g\Z/]
end
