#!/usr/bin/env ruby

require "yaml"

$stdout.sync = true
$stderr.sync = true

work_dir='/var/vcap'
source=ENV['APP_SOURCE']

#if !ENV['APP_SOURCE'].is_set?
#   abort	
#end	
puts `export PORT=8080`
puts `mkdir -p #{work_dir}/tmp`
puts `rm -Rf #{work_dir}/java-buildpack`
puts `git clone https://github.com/cloudfoundry/java-buildpack.git #{work_dir}/java-buildpack`
puts `wget  #{source} -O #{work_dir}/app.zip`
puts `unzip  #{work_dir}/app.zip -d #{work_dir}/app`
puts `rm -f #{work_dir}/app.zip`
puts `#{work_dir}/java-buildpack/bin/compile #{work_dir}/app #{work_dir}/tmp`
out = `#{work_dir}/java-buildpack/bin/release #{work_dir}/app`
yml = YAML.load out
command = yml["default_process_types"]["web"]
#puts command
Dir.chdir "#{work_dir}/app"
puts `#{command}`
