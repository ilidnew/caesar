require 'cypher'

class CryptoController < ApplicationController
  def input
  end

  def output
    @message = params[:query]
    cypher = Cypher.new
    @decrypted_message = cypher.decrypt(@message)
  end

end
