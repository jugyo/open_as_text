require "open_as_text/version"
require 'launchy'
require 'pp'
require 'tempfile'

module OpenAsText
  def open_as_text(object = nil)
    object = object || self
    tempfile = Tempfile.open("#{object.class.name}-#{object.object_id}-")
    tempfile.write(object.pretty_inspect)
    tempfile.flush
    puts "opening... #{tempfile.path}"
    Launchy.open(tempfile.path)
    object
  end
  alias_method :ot, :open_as_text
end

Object.send(:include, OpenAsText)
