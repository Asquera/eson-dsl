module ElasticSearch
  module Search
    class SpanFirst
      include Query
      include Queries
      include QueryMethods
      
      short_name :span_first

      attr_accessor :options

      def initialize(options = {})
        self.options = options
      end

      def to_query_hash
        result = {}

        result[:match] = queries.to_query_hash

        {name => result.merge(options)}
      end

    end
  end
end