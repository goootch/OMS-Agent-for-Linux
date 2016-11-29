require "rexml/document"
require "cgi"

require_relative 'patch_management_lib'
require_relative 'oms_common'

module Fluent
  class LinuxUpdatesFilter < Filter

    Fluent::Plugin.register_filter('filter_patch_management', self)    

    def configure(conf)
      super
      @hostname = OMS::Common.get_hostname or "Unknown host"
      # do the usual configuration here
    end

    def start
      super
      # This is the first method to be called when it starts running
      # Use it to allocate resources, etc.
      # LinuxUpdates.log = @log
    end

    def shutdown
      super
      # This method is called when Fluentd is shutting down.
      # Use it to free up resources, etc.
    end

    def filter(tag, time, record)
      @log.debug '**********Shujun Debug information*****************'
      @log.debug "LinuxUpdatesRunProgressFilter: Got new data to send"
      record
    end # filter
  end # class
end # module
