# Prevent bundler errors
module Liquid; class Tag; end; end

module Jekyll
  class Newrelic < Liquid::Tag
    VERSION = '0.1.0'.freeze
  end
end
