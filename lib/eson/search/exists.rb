module Eson
  module Search
    class Exists < FieldBased
      include Filter

      # @macro eson.filter
      filter :exists

      def to_query_hash
        if field
          {name => field.to_query_hash}
        else
          {name => options}
        end
      end
    end
  end
end