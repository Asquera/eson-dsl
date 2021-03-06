module Eson
  module Search
    class SpanNear
      include Query

      # @macro eson.query
      query :span_near

      attr_accessor :options

      def initialize(options = {})
        self.options = options
      end

      def clauses(&block)
        @clauses ||= SubQuery.new
        @clauses.send(context, &block)
      end

      def to_query_hash
        result = {}

        result[:clauses] = @clauses.to_query_hash

        {name => result.merge(options)}
      end
    end
  end
end
