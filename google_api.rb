require 'json'

# path1 = File.join(__dir__, "doc.json")
# doc1 = File.read(path1)
# doc1 = JSON.parse(doc1)

# # puts doc.class
# puts doc1["textAnnotations"].first["description"]

path1 = File.join(__dir__, "unaju.json")
doc1 = File.read(path1)
doc1 = JSON.parse(doc1)

text1 = doc1["textAnnotations"].first["description"]
p text1.gsub(/\(.*\)/, "")

path2 = File.join(__dir__, "menu2.json")
doc2 = File.read(path2)
doc2 = JSON.parse(doc2)

puts doc2["textAnnotations"].first["description"]


url = "https://www.google.co.jp/search?q=#{word}&source=lnms&tbm=isch"
