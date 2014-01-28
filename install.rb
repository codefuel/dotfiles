#!/usr/bin/env ruby

home = File.expand_path('~')

Dir['**/*symlink*'].each do |file|
  dotfile = '.' + file.match(/\/(.*)?\.symlink/)[1]
  target = File.join(home, "/#{dotfile}")
  if File.exists?(target)
    puts "*** FILE EXISTS: Creating a backup file for #{target}"
    puts "cp -r #{target} #{target}.#{Time.new.strftime("%Y%m%d")}"
    `cp -r #{target} #{target}.#{Time.new.strftime("%Y%m%d")}`
  end

  # Copy file/directory
  src = File.expand_path(file)
  if File.directory?(src)
    puts "rm -rf #{target} ... Deleteing target directory before file copy"
    `rm -rf #{target}`
    puts "cp -rf #{src} #{target}/"
    `cp -rf #{src} #{target}/`
  else
    puts "cp -rf #{src} #{target}"
    `cp -rf #{src} #{target}`
  end
end

