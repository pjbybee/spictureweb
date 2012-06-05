Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '	306777852741609', '36c4d8b5f8b7ca09ae127f4514b4dc4f'
  provider :identity, on_failed_registration: lambda { |env|
    IdentitiesController.action(:new).call(env)
  }
end
