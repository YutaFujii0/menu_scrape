require 'csv'

project_id = "miru-lw187"
base_path = '/Users/yutafujii/Downloads/'
file_name = 'japanese_menu.jpg'
image_path = base_path + file_name

require "google/cloud/vision"

vision = Google::Cloud::Vision.new project: project_id
image  = vision.image image_path

puts image.class
# save data to csv
csv_file_path = "#{file_name.gsub(/\..*/, "")}.csv"

# trying to save file in csv but image is Google::Cloud::Vision::image class

# CSV.open(csv_file_path, 'wb') do |csv|
#   # image.each do |element|
#     csv << image
#   # end
# end
