role :app, %w{deploy@178.62.248.89}
role :web, %w{deploy@178.62.248.89}
role :db, %w{deploy@178.62.248.89}

set :stage, :production # This is necessary for production deployment

# Extended Server Syntax
# ======================
# This can be used to drop a more detailed server
# definition into the server list. The second argument
# something that quacks like a hash can be used to set
# extended properties on the server.

server '178.62.248.89', user: 'deploy', roles: %w{web app}
