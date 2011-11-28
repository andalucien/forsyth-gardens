task :thumbnails do
  images_dir = File.join RAILS_ROOT, 'public', 'images' 
  Dir.foreach images_dir do |filename|
    next unless filename =~ /.jpg$/
    meat = filename.split('.').first
    system "convert -size 200x200 #{images_dir}/#{filename} #{images_dir}/#{meat}_thumb.png"
  end
end

