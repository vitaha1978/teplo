role :app, %w{deploy@95.47.114.84}
role :web, %w{deploy@95.47.114.84}
role :db, %w{deploy@95.47.114.84}

set :stage, :production # This is necessary for production deployment

# Extended Server Syntax
# ======================
# This can be used to drop a more detailed server
# definition into the server list. The second argument
# something that quacks like a hash can be used to set
# extended properties on the server.

server '95.47.114.84', user: 'deploy', roles: %w{web app}
