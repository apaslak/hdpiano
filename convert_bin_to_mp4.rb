files = Dir["/Users/Meeko/src/hdpiano/**/*.bin"]
base_path = "/Users/Meeko/src/hdpiano"

files.each do |file|
    deconstructed_path = file.split('/')
    folder_name = deconstructed_path[5]
    original_file_name = deconstructed_path[6]
    new_file_name = original_file_name[0...-3] + "mp4"

    system("ffmpeg -i #{file.inspect} -c:v libx264 #{base_path}/#{folder_name}/#{new_file_name.inspect}")
end
