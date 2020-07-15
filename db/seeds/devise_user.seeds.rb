
#Update de valores para los usuarios por sus nombre.
# User.where(email: 'admin_empresa@example.com').update_all email: 'director@example.com'
# User.where(email: 'admin_sucursal@example.com').update_all email: 'gerente@example.com'
# User.where(email: 'admin_departamento@example.com').update_all email: 'coordinador@example.com'

after :roles do
  puts '==> Creating the \'god user\'...'

# Deletes all existing records.
  User.delete_all

# Restarts ids to 1.
  ActiveRecord::Base.connection.reset_pk_sequence!('users')

# Content.
  User.create(email: 'god@example.com', username: 'divinity', first_name: 'God', last_name: 'System',
              maiden_name: 'User', role_id: Role.find_by_key('god').id, password: 'inventory2017',
              confirmed_at: Time.now, sign_in_count: 0)

  User.create(email: 'admin@example.com', username: 'admin', first_name: 'Admin', last_name: 'Admin',
              maiden_name: 'Admin', role_id: Role.find_by_key('admin').id, password: 'password',
              confirmed_at: Time.now, sign_in_count: 0)

  User.create(email: 'director@example.com', username: 'admin', first_name: 'Admin Empresa',
              last_name: 'Admin Empresa', maiden_name: 'Admin Empresa', role_id: Role.find_by_key('admin_empresa').id,
              password: 'password', confirmed_at: Time.now, sign_in_count: 0)

  User.create(email: 'gerente@example.com', username: 'admin_sucursal', first_name: 'Admin Sucursal',
              last_name: 'Admin Sucursal', maiden_name: 'Admin Sucursal', role_id: Role.find_by_key('admin_sucursal').id,
              password: 'password', confirmed_at: Time.now, sign_in_count: 0)

  User.create(email: 'coordinador@example.com', username: 'admin_departamento', first_name: 'Admin Departamento',
              last_name: 'Admin Departamento', maiden_name: 'Admin Departamento',
              role_id: Role.find_by_key('admin_departamento').id, password: 'password', confirmed_at: Time.now,
              sign_in_count: 0)

end
