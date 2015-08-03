Rails.application.config.middleware.use OmniAuth::Builder do
 provider :auth0,
 '3mDOOjegvdMOF0hYHNxj5Ry3Xi2ATK58',
 'YBkNkNnQ3JN9VeRG28Rd32tGVX08ln7Q9rTMVdr0oY_hWYdM-lgFogmLSK6QGF4Q',
 'order-management1.auth0.com'
end