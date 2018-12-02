# frozen_string_literal: true

# config/initializers/warden.rb
Rails.configuration.middleware.use RailsWarden::Manager do |manager|
  manager.failure_app = proc { |_env|
    ['401', { 'Content-Type' => 'application/json' }, { error: 'Unauthorized', code: 401 }]
  }
  manager.default_strategies :password
  # manager.intercept_401 = false # Warden will intercept 401 responses, which can cause conflicts
end

Warden::Manager.serialize_into_session(&:id)

Warden::Manager.serialize_from_session do |id|
  User.find_by_id(id)
end

Warden::Strategies.add(:password) do
  def valid?
    params['email'] || params['password']
  end

  def authenticate!
    auth = Session::Login.call params: params[:session]

    if auth.success?
      success!(auth.user)
    else
      fail!(auth.error)
    end
  end
end
