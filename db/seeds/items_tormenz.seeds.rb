after :sub_categories, :brands, :status_items, :tormenz do

  Item.create(code:"CH10000", name: "SILLA GERENTE" , description: "  	SILLA TIPO GERENTE CON RUEDAS	 , Ubicación: 	TITULACION (DAVI)	, Color: 	NEGRO", sub_category_id: SubCategory.where(name: "Silla").first.id, brand_id:  Brand.where(name: "N/A").first.id, model: "N/A", serial_number: "N/A" , status_item_id: StatusItem.where(name: "Seminuevo").first.id , branch_id: Branch.where(city_id: City.where("name = ?", "Chihuahua").first.id).first.id , in_service_date: Date.strptime("10/01/17", "%d/%m/%y"), purchased_date: Date.strptime("10/01/17", "%d/%m/%y"), price:	2200.00	)
  Item.create(code:"CH10000", name: "SILLA GERENTE" , description: "  	SILLA TIPO GERENTE CON RUEDAS	 , Ubicación: 	TITULACION (DAVI)	, Color: 	NEGRO", sub_category_id: SubCategory.where(name: "Silla").first.id, brand_id:  Brand.where(name: "N/A").first.id, model: "N/A", serial_number: "N/A" , status_item_id: StatusItem.where(name: "Seminuevo").first.id , branch_id: Branch.where(city_id: City.where("name = ?", "Chihuahua").first.id).first.id , in_service_date: Date.strptime("10/01/17", "%d/%m/%y"), purchased_date: Date.strptime("10/01/17", "%d/%m/%y"), price:	2200.00	)
  Item.create(code:"CH10001", name: "ESCRITORIO GCM EJECUTIVO" , description: "  	ESCRITORIOS GCM EJECUTIVO	 , Ubicación: 	TITULACION (DAVI)	, Color: 	MAPLE", sub_category_id: SubCategory.where(name: "Escritorio").first.id, brand_id:  Brand.where(name: "N/A").first.id, model: "N/A", serial_number: "N/A" , status_item_id: StatusItem.where(name: "Seminuevo").first.id , branch_id: Branch.where(city_id: City.where("name = ?", "Chihuahua").first.id).first.id , in_service_date: Date.strptime("10/01/17", "%d/%m/%y"), purchased_date: Date.strptime("10/01/17", "%d/%m/%y"), price:	1800.00	)
  Item.create(code:"CH10001", name: "ESCRITORIO GCM EJECUTIVO" , description: "  	ESCRITORIOS GCM EJECUTIVO	 , Ubicación: 	TITULACION (DAVI)	, Color: 	MAPLE", sub_category_id: SubCategory.where(name: "Escritorio").first.id, brand_id:  Brand.where(name: "N/A").first.id, model: "N/A", serial_number: "N/A" , status_item_id: StatusItem.where(name: "Seminuevo").first.id , branch_id: Branch.where(city_id: City.where("name = ?", "Chihuahua").first.id).first.id , in_service_date: Date.strptime("10/01/17", "%d/%m/%y"), purchased_date: Date.strptime("10/01/17", "%d/%m/%y"), price:	1800.00	)
  Item.create(code:"CH10002", name: "ESTANTES " , description: "  	ESTANTES DE CUATRO PELDAÑOS	 , Ubicación: 	TITULACION (DAVI)	, Color: 	BLANCOS", sub_category_id: SubCategory.where(name: "Otros").first.id, brand_id:  Brand.where(name: "N/A").first.id, model: "N/A", serial_number: "N/A" , status_item_id: StatusItem.where(name: "Seminuevo").first.id , branch_id: Branch.where(city_id: City.where("name = ?", "Chihuahua").first.id).first.id , in_service_date: Date.strptime("10/01/17", "%d/%m/%y"), purchased_date: Date.strptime("10/01/17", "%d/%m/%y"), price:	3500.00	)
  puts '==> 1....Filling the \'Categories\' table...'
  Item.create(code:"CH10002", name: "ESTANTES " , description: "  	ESTANTES DE CUATRO PELDAÑOS	 , Ubicación: 	TITULACION (DAVI)	, Color: 	BLANCOS", sub_category_id: SubCategory.where(name: "Otros").first.id, brand_id:  Brand.where(name: "N/A").first.id, model: "N/A", serial_number: "N/A" , status_item_id: StatusItem.where(name: "Seminuevo").first.id , branch_id: Branch.where(city_id: City.where("name = ?", "Chihuahua").first.id).first.id , in_service_date: Date.strptime("10/01/17", "%d/%m/%y"), purchased_date: Date.strptime("10/01/17", "%d/%m/%y"), price:	3500.00	)
  Item.create(code:"CH10002", name: "ESTANTES " , description: "  	ESTANTES DE CUATRO PELDAÑOS	 , Ubicación: 	TITULACION (DAVI)	, Color: 	BLANCOS", sub_category_id: SubCategory.where(name: "Otros").first.id, brand_id:  Brand.where(name: "N/A").first.id, model: "N/A", serial_number: "N/A" , status_item_id: StatusItem.where(name: "Seminuevo").first.id , branch_id: Branch.where(city_id: City.where("name = ?", "Chihuahua").first.id).first.id , in_service_date: Date.strptime("10/01/17", "%d/%m/%y"), purchased_date: Date.strptime("10/01/17", "%d/%m/%y"), price:	3500.00	)
  Item.create(code:"CH10002", name: "ESTANTES " , description: "  	ESTANTES DE CUATRO PELDAÑOS	 , Ubicación: 	TITULACION (DAVI)	, Color: 	BLANCOS", sub_category_id: SubCategory.where(name: "Otros").first.id, brand_id:  Brand.where(name: "N/A").first.id, model: "N/A", serial_number: "N/A" , status_item_id: StatusItem.where(name: "Seminuevo").first.id , branch_id: Branch.where(city_id: City.where("name = ?", "Chihuahua").first.id).first.id , in_service_date: Date.strptime("10/01/17", "%d/%m/%y"), purchased_date: Date.strptime("10/01/17", "%d/%m/%y"), price:	3500.00	)
  Item.create(code:"CH10002", name: "ESTANTES " , description: "  	ESTANTES DE CUATRO PELDAÑOS	 , Ubicación: 	TITULACION (DAVI)	, Color: 	BLANCOS", sub_category_id: SubCategory.where(name: "Otros").first.id, brand_id:  Brand.where(name: "N/A").first.id, model: "N/A", serial_number: "N/A" , status_item_id: StatusItem.where(name: "Seminuevo").first.id , branch_id: Branch.where(city_id: City.where("name = ?", "Chihuahua").first.id).first.id , in_service_date: Date.strptime("10/01/17", "%d/%m/%y"), purchased_date: Date.strptime("10/01/17", "%d/%m/%y"), price:	3500.00	)
  Item.create(code:"CH10003", name: "BOTE DE BASURA" , description: "  	BOTES DE BASURA CHICOS DE COLOR ALUMINIO	 , Ubicación: 	TITULACION (DAVI)	, Color: 	ALUMINO", sub_category_id: SubCategory.where(name: "Otros").first.id, brand_id:  Brand.where(name: "N/A").first.id, model: "N/A", serial_number: "N/A" , status_item_id: StatusItem.where(name: "Seminuevo").first.id , branch_id: Branch.where(city_id: City.where("name = ?", "Chihuahua").first.id).first.id , in_service_date: Date.strptime("10/01/17", "%d/%m/%y"), purchased_date: Date.strptime("10/01/17", "%d/%m/%y"), price:	200.00	)
  puts '==> 2 Filling the \'Categories\' table...'
  Item.create(code:"CH10003", name: "BOTE DE BASURA" , description: "  	BOTES DE BASURA CHICOS DE COLOR ALUMINIO	 , Ubicación: 	TITULACION (DAVI)	, Color: 	ALUMINO", sub_category_id: SubCategory.where(name: "Otros").first.id, brand_id:  Brand.where(name: "N/A").first.id, model: "N/A", serial_number: "N/A" , status_item_id: StatusItem.where(name: "Seminuevo").first.id , branch_id: Branch.where(city_id: City.where("name = ?", "Chihuahua").first.id).first.id , in_service_date: Date.strptime("10/01/17", "%d/%m/%y"), purchased_date: Date.strptime("10/01/17", "%d/%m/%y"), price:	200.00	)
  Item.create(code:"CH10004", name: "ESCRITORIO EN L" , description: "  	ESCRITORIO EN L DE VIDRIO	 , Ubicación: 	OFICINA JEFE ITULACION	, Color: 	CRISTAL", sub_category_id: SubCategory.where(name: "Escritorio").first.id, brand_id:  Brand.where(name: "N/A").first.id, model: "N/A", serial_number: "N/A" , status_item_id: StatusItem.where(name: "Seminuevo").first.id , branch_id: Branch.where(city_id: City.where("name = ?", "Chihuahua").first.id).first.id , in_service_date: Date.strptime("10/01/17", "%d/%m/%y"), purchased_date: Date.strptime("10/01/17", "%d/%m/%y"), price:	2500.00	)
  Item.create(code:"CH10005", name: "SILLA GERENTE" , description: "  	SILLA TIPO GERENTE CON RUEDAS	 , Ubicación: 	OFICINA JEFE ITULACION	, Color: 	NEGRA", sub_category_id: SubCategory.where(name: "Silla").first.id, brand_id:  Brand.where(name: "N/A").first.id, model: "N/A", serial_number: "N/A" , status_item_id: StatusItem.where(name: "Seminuevo").first.id , branch_id: Branch.where(city_id: City.where("name = ?", "Chihuahua").first.id).first.id , in_service_date: Date.strptime("10/01/17", "%d/%m/%y"), purchased_date: Date.strptime("10/01/17", "%d/%m/%y"), price:	2200.00	)
  Item.create(code:"CH10006", name: "Archivero" , description: "  	ARCHIVERO 2 ESTANTES	 , Ubicación: 	OFICINA JEFE ITULACION	, Color: 	CAFÉ", sub_category_id: SubCategory.where(name: "Archivero").first.id, brand_id:  Brand.where(name: "N/A").first.id, model: "N/A", serial_number: "N/A" , status_item_id: StatusItem.where(name: "Seminuevo").first.id , branch_id: Branch.where(city_id: City.where("name = ?", "Chihuahua").first.id).first.id , in_service_date: Date.strptime("10/01/17", "%d/%m/%y"), purchased_date: Date.strptime("10/01/17", "%d/%m/%y"), price:	2940.00	)
  Item.create(code:"CH10007", name: "SILLA SECRETARIA" , description: "  	SILLA SECRETARIA CON RUEDAS	 , Ubicación: 	OFICINA JEFE ITULACION	, Color: 	NEGRA", sub_category_id: SubCategory.where(name: "Silla").first.id, brand_id:  Brand.where(name: "N/A").first.id, model: "N/A", serial_number: "N/A" , status_item_id: StatusItem.where(name: "Seminuevo").first.id , branch_id: Branch.where(city_id: City.where("name = ?", "Chihuahua").first.id).first.id , in_service_date: Date.strptime("10/01/17", "%d/%m/%y"), purchased_date: Date.strptime("10/01/17", "%d/%m/%y"), price:	1399.00	)
  Item.create(code:"CH10008", name: "BOTE DE BASURA" , description: "  	BOTE CHICO DE BASURA COLOR ALUMINIO	 , Ubicación: 	OFICINA JEFE ITULACION	, Color: 	ALUMINIO", sub_category_id: SubCategory.where(name: "Otros").first.id, brand_id:  Brand.where(name: "N/A").first.id, model: "N/A", serial_number: "N/A" , status_item_id: StatusItem.where(name: "Seminuevo").first.id , branch_id: Branch.where(city_id: City.where("name = ?", "Chihuahua").first.id).first.id , in_service_date: Date.strptime("10/01/17", "%d/%m/%y"), purchased_date: Date.strptime("10/01/17", "%d/%m/%y"), price:	200.00	)
  Item.create(code:"CH10009", name: "PIZZARON CHICO" , description: "  	PIZZARON CHICO 	 , Ubicación: 	OFICINA JEFE ITULACION	, Color: 	BLANCOS", sub_category_id: SubCategory.where(name: "Pizarrón").first.id, brand_id:  Brand.where(name: "N/A").first.id, model: "N/A", serial_number: "N/A" , status_item_id: StatusItem.where(name: "Seminuevo").first.id , branch_id: Branch.where(city_id: City.where("name = ?", "Chihuahua").first.id).first.id , in_service_date: Date.strptime("10/01/17", "%d/%m/%y"), purchased_date: Date.strptime("10/01/17", "%d/%m/%y"), price:	500.00	)
  Item.create(code:"CH10010", name: "ESCRITORIO EN L " , description: "  	ESCRITORIO DE CRISTAL	 , Ubicación: 	EXTRAJUDICIAL	, Color: 	CRISTAL", sub_category_id: SubCategory.where(name: "Escritorio").first.id, brand_id:  Brand.where(name: "N/A").first.id, model: "N/A", serial_number: "N/A" , status_item_id: StatusItem.where(name: "Seminuevo").first.id , branch_id: Branch.where(city_id: City.where("name = ?", "Chihuahua").first.id).first.id , in_service_date: Date.strptime("10/01/17", "%d/%m/%y"), purchased_date: Date.strptime("10/01/17", "%d/%m/%y"), price:	2500.00	)
  puts '3 ==> Filling the \'Categories\' table...'
end
