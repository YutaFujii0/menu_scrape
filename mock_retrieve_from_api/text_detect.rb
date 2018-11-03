require 'json'

project_id = "miru-lw187"
base_path = '/Users/yutafujii/Downloads/'
file_name = 'japanese_menu.jpg'
image_path = base_path + file_name

require "google/cloud/vision"

vision = Google::Cloud::Vision.new project: project_id
image  = vision.image image_path


JSON.open('./#{file_name}')
