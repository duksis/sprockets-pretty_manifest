require 'sprockets/pretty_manifest/version'
require 'sprockets'

module Sprockets
  module PrettyManifest
    def self.included(klass)
      klass.send(:alias_method, :original_json_encode, :json_encode)
      klass.class_eval do
        private

        def json_encode(obj)
          JSON.pretty_generate(obj)
        end
      end
    end
  end

  class Manifest
    include PrettyManifest
  end
end

