module Eson
  module Search
    module Filter
      module ClassMethods
        def filter(name)
          define_method :name do
            name
          end
          Filters.register name, self
        end
      end

      def self.included(base)
        base.class_eval do
          extend ClassMethods
          include Node unless base.kind_of? Node
        end
      end

      def method_missing(name, arg)
        warn("#{name} called as a filter option")
        self.options[name] = arg
      end
    end
  end
end