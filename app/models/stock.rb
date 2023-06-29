class Stock < ApplicationRecord
	def self.new_lookup(ticker_symbol)
	  client = IEX::Api::Client.new(
                                   publishable_token: Rails.application.credentials.iex_client[:cloud_access_key],
                                   secret_token: 'sk_32cf091fd2f1435cbd855eaccfb03672',
                                   endpoint: 'https://cloud.iexapis.com/v1'
                                  )
	  client.price(ticker_symbol)
	end
end
