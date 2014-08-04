module JG
  module HashUtil
    def self.symbolize_keys(hash)
      new_hash = {}

      hash.each { |k,v|
        new_hash[k.to_sym] = v
      }

      return new_hash
    end
  end
end
