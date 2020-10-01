Permission.create!([
  {name: "Mostrar Detalles De Un Permiso", description: "Permite mostrar los detalles de un permiso.", action: "show", controller: "Permissions"},
  {name: "Actualizar Permiso", description: "Permite actualizar un permiso. ", action: "update", controller: "Permissions"},
  {name: "Editar Permiso", description: "Permite visualizar la vista editar permiso.", action: "edit", controller: "Permissions"},
  {name: "Generar Semillas", description: "Permite generar las semillas de los permisos y sus relaciones.", action: "generate_seeds", controller: "Permissions"},
  {name: "Obtener Controladores Y Acciones", description: "Permite obtener los controladores y acciones para generar los permisos.", action: "get_controller_actions", controller: "Permissions"},
  {name: "Mostrar Listado De Permisos", description: "Permite mostrar un listado de los permisos.", action: "index", controller: "Permissions"},
  {name: "Nuevo Permiso", description: "Permite visualizar la vista nuevo permiso.", action: "new", controller: "Permissions"},
  {name: "Crear Rol", description: "Permite crear roles.", action: "create", controller: "Roles"},
  {name: "Asignar Permisos A Roles", description: "Permite asignar permisos a un rol existente. ", action: "assign_permissions", controller: "Roles"},
  {name: "Destruir Rol", description: "Permite destruir un rol.", action: "destroy", controller: "Roles"},
  {name: "Editar Rol", description: "Permite visualizar la vista editar rol.", action: "edit", controller: "Roles"},
  {name: "Mostrar Listado De Roles", description: "Permite mostrar un listado de los roles.", action: "index", controller: "Roles"},
  {name: "Nuevo Rol", description: "Permite visualizar la vista nuevo rol.", action: "new", controller: "Roles"},
  {name: "Mostrar Permisos Asignados A Un Rol", description: "Permite mostrar los permisos asignados de un rol.", action: "role_permissions", controller: "Roles"},
  {name: "Mostrar Detalles De Un Rol", description: "Permite mostrar los detalles de un rol.", action: "show", controller: "Roles"},
  {name: "Actualizar Rol", description: "Permite actualizar un rol.", action: "update", controller: "Roles"},
  {name: "Crear Usuario", description: "Permite crear un usuario. ", action: "create_user", controller: "Users::Registrations"},
  {name: "Editar Un Usuario", description: "Permite visualizar la vista editar de un usuario.", action: "edit_user", controller: "Users::Registrations"},
  {name: "Mostrar Listado De Usuarios", description: "Permite mostrar un listado de los usuarios.", action: "index", controller: "Users::Registrations"},
  {name: "Nuevo Usuario", description: "Permite visualizar la vista nuevo usuario.", action: "new_user", controller: "Users::Registrations"},
  {name: "Cambiar Contraseña De Un Usuario", description: "Permite visualizar la vista cambiar contraseña de un usuario.", action: "change_password", controller: "Users::Registrations"},
  {name: "Guardar Contraseña De Un Usuario", description: "Permite guardar la contraseña de un usuario. ", action: "save_password", controller: "Users::Registrations"},
  {name: "Actualizar Usuario", description: "Permite actualizar un usuario.", action: "update_user", controller: "Users::Registrations"},
  {name: "Mostrar Detalles De Un Usuario", description: "Permite mostrar los detalles de un usuario.", action: "show", controller: "Users::Registrations"},
  {name: "Destruir Permiso", description: "Permite destruir un permiso.", action: "destroy", controller: "Permissions"},
  {name: "Eliminar Usuario", description: "Permite destruir un usuario.", action: "destroy", controller: "Users::Registrations"},
  {name: "Cambiar Contraseña Propia", description: "Permite cambiar contraseña en la edición de perfil.", action: "update_password", controller: "Users::Registrations"},
  {name: "Cambiar Datos De Perfil", description: "Permite cambiar datos en la edición de perfil.", action: "update_profile", controller: "Users::Registrations"},
  {name: "Cambiar Imágen De Perfil", description: "Permite cambiar imágen de perfil.", action: "get_user_image", controller: "Users::Registrations"},
  {name: "Mostrar Lista De Compañías", description: "Permite mostrar lista de Compañías", action: "index", controller: "Companies"},
  {name: "Mostrar Vista Para Crear Una Empresa", description: "Permite mostrar vista para crear una empresa", action: "new", controller: "Companies"},
  {name: "Crear Empresas", description: "Permite crear empresas", action: "create", controller: "Companies"},
  {name: "Mostrar Vista Para Actualizar Una Empresa", description: "Permite mostrar vista para actualizar una empresa", action: "edit", controller: "Companies"},
  {name: "Actualizar Una Empresa", description: "Permite actualizar una empresa", action: "update", controller: "Companies"},
  {name: "Eliminar Empresa", description: "Permite eliminar empresa", action: "destroy", controller: "Companies"},
  {name: "Mostrar Lista De Sucursales", description: "Permite mostrar lista de Sucursales", action: "index", controller: "Branches"},
  {name: "Mostrar Vista Para Crear Sucursales", description: "Permite mostrar vista para crear sucursales", action: "new", controller: "Branches"},
  {name: "Crear Sucursales", description: "Permite crear sucursales", action: "create", controller: "Branches"},
  {name: "Mostrar Vista Para Actualizar Sucursales", description: "Permite mostrar vista para actualizar sucursales", action: "edit", controller: "Branches"},
  {name: "Actualizar Sucursales", description: "Permite actualizar sucursales", action: "update", controller: "Branches"},
  {name: "Eliminar Sucursales", description: "Permite eliminar sucursales", action: "destroy", controller: "Branches"},
  {name: "Mostrar Detalles De Una Compañía", description: "Permite mostrar detalles de una compañía", action: "show", controller: "Companies"},
  {name: "Mostrar Detalles De Una Sucursal", description: "Permite mostrar detalles de una sucursal", action: "show", controller: "Branches"},
  {name: "Mostrar Lista De Departamentos", description: "Permite mostrar lista de Departamentos", action: "index", controller: "Departments"},
  {name: "Mostrar Detalles De Un Departamento", description: "Permite mostrar detalles de un departamento", action: "show", controller: "Departments"},
  {name: "Mostrar Vista Para Crear Un Departamento", description: "Permite mostrar vista para crear un departamento", action: "new", controller: "Departments"},
  {name: "Crear Departamentos", description: "Permite crear departamentos", action: "create", controller: "Departments"},
  {name: "Mostrar Vista Para Actualizar Un Departamento", description: "Permite mostrar vista para actualizar un departamento", action: "edit", controller: "Departments"},
  {name: "Actualizar Departamentos", description: "Permite actualizar departamentos", action: "update", controller: "Departments"},
  {name: "Eliminar Departamentos", description: "Permite eliminar departamentos", action: "destroy", controller: "Departments"},
  {name: "Mostrar Lista De Empleados", description: "Permite mostrar lista de empleados", action: "employees_index", controller: "Users::Registrations"},
  {name: "Mostrar Lista De Artículos De Trabajo", description: "Permite mostrar lista de Artículos de Trabajo", action: "index", controller: "WorkArticles"},
  {name: "Mostrar Vista Para Crear Un Artículo De Trabajo", description: "Permite mostrar vista para crear un artículo de trabajo", action: "new", controller: "WorkArticles"},
  {name: "Crear Artículo De Trabajo", description: "Permite crear Artículo de Trabajo", action: "create", controller: "WorkArticles"},
  {name: "Mostrar Vista Para Actualizar Un Artículo De Trabajo", description: "Permite mostrar vista para actualizar un artículo de trabajo", action: "edit", controller: "WorkArticles"},
  {name: "Actualizar Artículos De Trabajo", description: "Permite actualizar Artículos de Trabajo", action: "update", controller: "WorkArticles"},
  {name: "Mostrar Detalles De Un Artículo De Trabajo", description: "Permite mostrar detalles de un Artículo de Trabajo", action: "show", controller: "WorkArticles"},
  {name: "Eliminar Artículos De Trabajo", description: "Permite eliminar Artículos de Trabajo", action: "destroy", controller: "WorkArticles"},
  {name: "Asignar Artículo De Trabajo A Empleado", description: "Permite asignar artículo de trabajo a empleado", action: "add_work_article", controller: "Users::Registrations"},
  {name: "Desasignar Artículo De Trabajo A Empleado", description: "Permite desasignar artículo de trabajo a empleado", action: "remove_work_article", controller: "Users::Registrations"},
  {name: "Actualizar Artículos", description: "Permite actualizar artículos", action: "update", controller: "Items"},
  {name: "Mostrar Lista De Artículos De Trabajo Asignados A Un Empleado", description: "Permite mostrar lista de Artículos de Trabajo asignados a un empleado", action: "assign_work_articles", controller: "Users::Registrations"},
  {name: "Obtener Artículos De Trabajo De Un Empleado", description: "Permite obtener Artículos de Trabajo de un empleado", action: "search_work_articles", controller: "Users::Registrations"},
  {name: "Mostrar Lista De Artículos", description: "Permite mostrar lista de Artículos", action: "index", controller: "Items"},
  {name: "Mostrar Vista Para Crear Un Artículo", description: "Permite mostrar vista para crear un artículo", action: "new", controller: "Items"},
  {name: "Crear Artículos", description: "Permite crear artículos", action: "create", controller: "Items"},
  {name: "Mostrar Vista Para Actualizar Artículos", description: "Permite mostrar vista para actualizar artículos", action: "edit", controller: "Items"},
  {name: "Mostrar Artículos De Empleado", description: "Permite mostrar artículos de empleado", action: "employee_items", controller: "Departments"},
  {name: "Mostrar Detalles De Un Artículo", description: "Permite mostrar detalles de un artículo", action: "show", controller: "Items"},
  {name: "Eliminar Artículos", description: "Permite eliminar artículos", action: "destroy", controller: "Items"},
  {name: "Asignar Artículo A Empleado", description: "Permite asignar artículo a empleado", action: "assign_item", controller: "Users::Registrations"},
  {name: "Desasignar Artículo A Empleado", description: "Permite desasignar artículo a empleado", action: "unassign_item", controller: "Users::Registrations"},
  {name: "Realizar Búsquedas Para Reporteador", description: "Permite realizar búsquedas para reporteador", action: "reporter", controller: "Items"},
  {name: "Ver Los Mantenimientos Próximos", description: "Permite ver los mantenimientos próximos", action: "next_maintenances", controller: "Items"},
  {name: "Exportador De Excel", description: "Permite exportar los items a un excel", action: "items_excel", controller: "Items"},
  {name: "Obtener Departamentos Para Select En Reporteador", description: "Permite obtener departamentos para select en reporteador", action: "departments", controller: "Branches"},
  {name: "Obtener Subcategorias Para Select En Reporteador", description: "Permite obtener subcategorias para select en reporteador", action: "sub_categories", controller: "Categories"},
  {name: "Obtener Departamentos Para Select En Form De Item", description: "Permite obtener departamentos para select en form de item", action: "departments_for_select", controller: "Branches"},
  {name: "Permite Generar El Reporte Del Checklist Del Empleado", description: "Permite Generar el reporte del Checklist del empleado", action: "report_check_items_user", controller: "Reports"},
  {name: "Actualizar Fecha De Mantenimiento De Un Artículo", description: "Permite actualizar fecha de mantenimiento de un artículo", action: "change_maintenance_done", controller: "Items"},
  {name: "Obtener el ultimo codigo de un departamento para cuando no se tiene sucursal", description: "Permite obtener el ultimo codigo del departamento", action: "next_code", controller: "Branches"},
  {name: "Obtener departmante por id de sucursal", description: "Permite Obtener departmante por id de sucursal", action: "get_departments_by_branch", controller: "Departments"},
  {name: "Obtener SubCategorias por id de categoria", description: "Permite obtener SubCategorias por id de categoria", action: "get_subcategory_by_category", controller: "SubCategories"},
  {name: "Vista para crear pedidos", description: "Permite entrar a la vista para crear los pedidos", action: "new_order", controller: "Items"}

                   ])
