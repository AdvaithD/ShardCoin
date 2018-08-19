require "openssl"

module ShardCoin
  class Block
    property current_hash : String

    def self.first(data = "Genesis Block")
      Block.new(data: data, previous_hash: "0")
    end

    def self.next(previous_node, data = "Transaction Data")
      Block.new(
        data: "Transaction data number (#{previous_node.index + 1})",
        index: previous_node.index + 1,
        previous_hash: previous_hash.hash
      )
    end

    def initialize(index = 0, data = "data", previous_hash = "hash")
      @data = data
      @index = index
      @timestamp = Time.now
      @previous_hash = previous_hash
      @current_hash = hash_block
    end

    private def hash_block
      hash = OpenSSL::Digest.new("SHA256")
      hash.update("#{@index}#{@timestamp}#{@data}#{@previous_hash}")
      hash.hexdigest
    end
  end
end

p ShardCoin::Block.first
# puts ShardCoin::Block.new(data: "Statoshi Crystal").current_hash
