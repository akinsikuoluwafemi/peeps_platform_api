Rails.application.config.middleware.insert_before 0, Rack::Cors do 
  allow do
    # origins 'http://localhost:3000'
    origins 'https://peeps-platform.herokuapp.com/rooms'


  
    resource '*',
      headers: :any,
      methods: [:get, :post, :put, :patch, :delete, :options, :head],
      # credentials: true
      credentials: false

  end
end