module JG
  module HashUtil

    def self.symbolize_keys(hash)
      new_hash = {}

      hash.each { |k,v|
        if k.respond_to?(:to_sym)
          new_hash[k.to_sym] = v
        else
          new_hash[k] = v
        end
      }

      return new_hash
    end

    def self.deep_compact(hash)
      hash = hash.select { |_,value| !value.nil? }
      hash.each { |k,v|
        if v.is_a?(Hash)
          hash[k] = deep_compact(v)
        end
      }
      return hash
    end

  end
end
