#!/usr/bin/env ruby
require 'mkmf'
extension_name = 'mcrypt'
dir_config(extension_name)

if RUBY_VERSION =~ /\A1.9/
  $CPPFLAGS += " -DRUBY_19"
elsif RUBY_VERSION =~ /\A1.8/
  $CPPFLAGS += " -DRUBY_18"
end


if ENV["MAINTAINER_MODE"]
  $CFLAGS += " -Werror"
end

create_makefile(extension_name)
