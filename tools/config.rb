#!/bin/env ruby

$path_to_self = File.expand_path(File.dirname(__FILE__))

require File.join($path_to_self,'build.rb')
require 'ostruct'
require 'yaml'
require 'erb'

class BuildConfig

	def target
		case RUBY_PLATFORM
		when /darwin/i
			"darwin"
		when /win32|cygwin/i
			"win32"
		when /linux/i
			"linux"
		else
			"unknown"
		end
	end

	def get_binding
		binding
	end

	def run
		target_config = YAML.load_file(File.join($path_to_self, "targets", "#{target}.yml" ))

		@opts = OpenStruct.new({
										:mode => 'debug',
										:brand => 'usbmonitor',
										:flags => target_config
									})
		@user_opts = {'debug' => [], 'release' => []}

		makefiles =
		Build.prepare( File.join($path_to_self,".."), Pathname.new("mk.conf"), @opts )

		# write the config/make.config
		erb = ERB.new(File.read( "#{$path_to_self}/../config/make.erb" ), 0, "<>")
		File.open("#{$path_to_self}/../config/make.config","w").write( erb.result( binding ) )

		Build.commit(makefiles)
	end
end

BuildConfig.new.run
