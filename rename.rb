puts "Renaminig files..."

folder_path = ARGV[0]

Dir.glob(folder_path + "/*.txt").sort.each do |f|
  file_name = File.basename(f, File.extname(f))
  matched_name = /_[0-9]*_/.match(file_name)
  File.rename(f, ARGV[1] + matched_name[0].gsub(/\D/, '') + ".txt")
end


