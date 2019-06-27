# require "administrate/field/base"
# require "rails"

# class CarrierwaveField < Administrate::Field::Base
#   def to_s
#     data
#   end
# end


# frozen_string_literal: true

require 'administrate/field/base'
require 'rails'

module Administrate
  module Field
    class Carrierwave < Administrate::Field::Base
      class Engine < ::Rails::Engine; end

      def image
        options.fetch(:image, nil)
      end

      def multiple?
        options.fetch(:multiple, false)
      end

      def remove?
        options.fetch(:remove, false)
      end

      def remote_url?
        options.fetch(:remote_url, false)
      end

      def files
        Array[*data]
      end

      def file
        files.first
      end

      def model
        data.try(:model)
      end

      def show_file?
        file.present? && (file.filename || file.path)
      end
    end
  end
end