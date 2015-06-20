# Please pardon the spaghetti code

data_file = ARGV.first

def confirm_or_abort
  print(" (y/n?) ")
  resp = STDIN.gets.strip
  abort "Aborting..." unless resp == 'y'
end


abort "
Error: this script needs a data file
Execute this script with the data file path like:

   ruby /path/to/copy_files.rb /data/file/location/data_file_name.txt

" if data_file.nil? 


abort "Error: the data file \"#{data_file}\" cannot be located  " unless File.exist?(data_file)

data = File.readlines(data_file).collect{|x| x.chomp}

abort "Error: the data file \"#{data_file}\" appears to be empty " if data.empty?

from = data.shift
abort "Error: the FROM location \"#{from}\" cannot be located" unless Dir.exist?(from)
print "Is \"#{from}\" (#{Dir.glob(from+'/*').count} files) the correct FROM location? "
confirm_or_abort


to = data.shift
abort "Error: the TO location \"#{to}\" cannot be located" unless Dir.exist?(to)
print "Is \"#{to}\" (#{Dir.glob(to+"/*").count} files) the correct TO location? "
confirm_or_abort

print "\n#{data.count} files (starting with \"#{data.first}\") will be copied\nfrom: \"#{from}\"\nto:   \"#{to}\"\n"
print "Does this seem right?"
confirm_or_abort

print "\n"

data.each do |file| 
  from_file = File.expand_path(file, from)
  to_file   = File.expand_path(file, to)

  if File.exist?(from_file)
    `cp "#{from_file}" "#{to_file}"`
    print "copied \"#{file}\"\n"
  else 
    abort "\nError: the FROM file \"#{from_file}\" cannot be located. Aborting..." 
  end
end

print "Done.\n\n"
