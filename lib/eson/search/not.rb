module Eson
  module Search
    class Not
      include Filters
      include FilterMethods
      include Filter

      # @macro eson.filter
      filter 'not' # yard chokes on :not

      attr_accessor :options

      def initialize(options = {})
        self.options = options
      end

      def to_query_hash
        { name => { :filter => filters.to_query_hash } }
      end

    end
  end
end