module Eson
  module Search
    class Ids
      include Filter
      include Query

      # @macro eson.filter
      filter :ids

      # @macro eson.query
      query :ids

      attr_accessor :options

      def initialize(*args)
        if args.length == 2
          self.options = {
            :type => args.first,
            :values => args.last
          }
        else
          self.options = args.first
        end
      end
    end
  end
end