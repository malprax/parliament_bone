# == Schema Information
#
# Table name: parliaments
#
#  id            :integer          not null, primary key
#  name          :string
#  tempat_lahir  :string
#  tanggal_lahir :string
#  dapil_id      :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Parliament < ActiveRecord::Base
has_many :member_fractions
has_many :member_commisions
belongs_to :dapil
belongs_to :legislation


require 'roo'
  # if Rails.env.development?
      # has_attached_file :avatar, styles: { medium: "300x300>", thumb: "50x50>" }, default_url: "unknown_person.png"
      has_attached_file :image, :styles => { :medium => "200x", :thumb => "100x100>" }, :default_url => "default.jpg",
                        :storage => :dropbox,
                        :dropbox_credentials => Rails.root.join("config/dropbox.yml"),
                        :path => "parliaments/:style/:id_filename"
  # end
  # def self.import(file)
  #   #code
  #   Roo::Excelx.create!
  # end

  def self.import(file)
    #code
    allowed_attributes = ["Name","Dapil","Fraksi","Jabatan fraksi"]
    spreadsheet = open_spreadsheet(file)
    header = spreadsheet.row(1)
    (2..spreadsheet.last_row).each do |i|
        row = Hash[[header, spreadsheet.row(i)].transpose]
        parliament = where(name: row["Name"]) || new
        parliament.attributes = row.to_hash.select { |k,v| allowed_attributes.include? k }
        parliament.save!
    end
  end

  def self.open_spreadsheet(file)
    # code
    case File.extname(file.original_filename)
    when '.csv' then Roo::Csv.new(file.path, nil, packed: nil, file_warning: :ignore)
    when '.xls' then Roo::Excel.new("#{Rails.root}/public/Wakil_Rakyat_DPRD_Bone.xls")
    when '.xlsx' then Roo::Excelx.new(file.path, nil, packed: nil, file_warning: :ignore)
    else raise "Unknown file type: #{file.original_filename}"
    end
  end

  # def self.import(file)
    #code
    # ex = open_spreadsheet(file)
    # excel_file  = Roo::Excel.new("#{Rails.root}/public/Wakil_Rakyat_DPRD_Bone.xls")
    #  header = excel_file.row(1)

    # ex.default_sheet = ex.sheets[1]

    # header = Hash.new
    # excel_file.row(1).each_with_index{
    #   |header, i| header[header] = 1
    #
    # }

    # ((excel_file.first_row + 2)..excel_file.last_row).each do |row|
        # Get the column data using the column heading.
        # name = excel_file.row(row)[header['Nama']]
        # dapil = excel_file.row(row)[header['Dapil']]
        # fraksi = excel_file.row(row)[header['Fraksi']]
        # @parliaments = Parliament.create(:name => name, :dapil => dapil, :fraksi => fraksi)

        # print "Row: #{name}, #{dapil}, #{fraksi}\n\n"
    # end

    # 2.upto(46) do |line|
    #   name = excel_file.cell(line,'A') if excel_file.cell(line,'A')
    #   dapil = excel_file.cell(line, 'B') if excel_file.cell(line, 'B')
    #   fraksi = excel_file.cell(line,'C') if excel_file.cell(line, 'C')
    #   @parliaments = Parliament.create(:name => name, :dapil => dapil, :fraksi => fraksi)
    # end


    # (2..excel_file.last_row).each do |i|
    #   row = Hash[[header, excel_file.row(i)].transpose]
    #   parliament = find_by_id(row["id"]) || new
    #   parliament.attributes = parliament.hash.slice() #to_hash change to Hash[*a]
    #   parliament.save!
    # end

    # Parliament.each(id: 'ID', name: 'NAME', dapil: 'DAPIL') do |hash|
      # puts hash.inspect
        # => { id: 1, name: 'John Smith' }
    #   end
    # end

  # def open_spreadsheet
  #   #code
  #   case File.extname(file.original_filename)
  #   when ".csv" then Roo::Csv.new(file.path, nil, :ignore)
  #   when ".xls" then Roo::Excel.new(file.path, nil, :ignore)
  #   when ".xlsx" then Roo::Excelx.new(file.path, nil, :ignore)
  #   else raise "unknwon file type: #{(file.original_filename)}"
  # end
 # validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/
 # validates_attachment_file_name :avatar, matches: [/png\Z/, /jpe?g\Z/]


 # attr_accessible  :name, :dapil, :fraksi
# def self.import(file)
    # spreadsheet = open_spreadsheet(file)
    # spreadsheet = Roo::Excel.new("#{Rails.root}/public/Wakil_Rakyat_DPRD_Bone.xls")
  #   spreadsheet = Roo::Spreadsheet.open('./rails_temp_upload', extension: :xls)
  #   header = spreadsheet.row(1)
  #   (2..spreadsheet.last_row).each do |i|
  #     row = Hash[[header, spreadsheet.row(i)].transpose]
  #     parliament = Parliament.find_by(name: row["Name"].to_s) || Parliament.new
  #     parliament.attributes = row.to_hash.slice("name", "dapil", "fraksi", "id" )
  #     parliament.save!
  #   end
  # end

  # def self.open_spreadsheet(file)
    # case File.extname(file.original_filename)
    # when ".csv" then Roo::Csv.new(file.path, csv_options: {col_sep: ";"})
    # when ".xls" then Roo::Excel.new("#{Rails.root}/public/Wakil_Rakyat_DPRD_Bone.xls")
    # when ".xlsx" then Roo::Excelx.new(file.path)
    # else raise "Unknown file type: #{file.original_filename}"
    # end
  # end
# def self.import(file)
  #code
# end

end
