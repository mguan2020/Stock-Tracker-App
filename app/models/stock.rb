class Stock < ApplicationRecord

    def self.new_lookup(ticker_symbol)
        client = IEX::Api::Client.new(publishable_token: 'pk_3747321d71134bb988e264418a0ed62f',
    endpoint: 'https://cloud.iexapis.com/v1')

        client.price(ticker_symbol)
    end
end
