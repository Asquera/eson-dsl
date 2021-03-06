module Eson
  module Search
    class NumericRange
      include Filter

      # @macro eson.filter
      filter :numeric_range

      attr_accessor :field

      def initialize(field, options = {})
        self.field = QueryField.new(field, options)
      end

      def to_query_hash
        {name => field.to_query_hash}
      end
    end
  end
end