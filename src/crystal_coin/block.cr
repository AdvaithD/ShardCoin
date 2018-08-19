require "openssl"

module ShardCoin
  class Block
    def initialize(data : String)
      @data = data
    end

    def hash
      hash = OpenSSL::Digest.new("SHA256")
      hash.update(@data)
      hash.hexdigest
    end
  end
end

puts ShardCoin::Block.new("Statoshi Crystal").hash
