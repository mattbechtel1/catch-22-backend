class ApplicationController < ActionController::API

    def encode(payload)
        JWT.encode(payload, 'h3ll3r22', 'HS256')
    end

    def decode(token)
        JWT.decode(token, 'h3ll3r22', true, {algorithm: 'HS256'})
    end
end
