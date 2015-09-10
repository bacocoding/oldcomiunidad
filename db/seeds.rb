# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
c1 = Conjunto.create(nombre_conjunto: "Quebec", empresa_admin: "Servicios & Servicios", email_admin: "admin@email.com", info: "La piscina de la unidad estará en mantenimiento durante dos semanas.", direccion_conjunto: "Carrera 33 # 1-55", tel_conjunto: "2144750", tel_admin: "3155026", direccion_admin: "Carrera 26 # 13-80", nombre_administrador: "Gustavo Tamayo", empresa_vigilancia: "Vise", empresa_servicios: "Aseo y Sostenimiento", vigilante1: "Antonio Mendez", cedula_vigilante1: "34506897", pic_vigilante1: "https://antrobjeto.files.wordpress.com/2010/11/11.jpg", vigilante2: "Carlos Fernandez", cedula_vigilante2: "34674651", pic_vigilante2:"https://antrobjeto.files.wordpress.com/2010/11/diapositiva11.jpg?w=640&h=437", vigilante3: "Maria Villegas", cedula_vigilante3: "56987253", pic_vigilante3: "https://antrobjeto.files.wordpress.com/2010/11/dsc05354.jpg?w=640&h=480", aseo1: "Vicente Pelaez", cedula_aseo1: "98653452", pic_aseo1: "http://www.kascosharptech.com/cmss_files/imagelibrary/KASCO_Tech_Outlined%20(2).jpg", aseo2: "Maria Villalba", cedula_aseo2: "34542365", pic_aseo2: "http://images.todainfo.com/EMP_219/42779433_4.jpg")
c2 = Conjunto.create(nombre_conjunto: "Atoshi", empresa_admin: "Asociados y servicios", info: "datos de Atoshi")
c3 = Conjunto.create(nombre_conjunto: "Veracruz", empresa_admin: "Asociados y servicios", info: "datos de Veracruz")

a1 = Apto.create(num_apto: "777", email1: "comiunidad@gmail.com", conjunto_id: c2.id, password: 'juan1980', password_confirmation: 'juan1980')
a2 = Apto.create(num_apto: "1301", num_residentes: "4", email_propietario: "residente@email.com", conjunto_id: c2.id, password: 'juan1980', password_confirmation: 'juan1980')
a3 = Apto.create(num_apto: "admin", email_propietario: "Administrador@email.com", conjunto_id: c1.id, password: 'juan1980', password_confirmation: 'juan1980')
a4 = Apto.create(num_apto: "2002", num_residentes: "4", email_propietario: "residente@email.com", email1: "juan@email.com", email2: "jessi@email.com", placa_carro1: "BCK875", placa_carro2: "CXP627", placa_carro3: "BIN948", nombre_empleada1: "Sandra Romero", cedula_empleada1: "43654766", nombre_empleada2: "Cristina Pinedo", cedula_empleada2: "98888765", conjunto_id: c1.id, password: 'juan1980', password_confirmation: 'juan1980')
a5 = Apto.create(num_apto: "2002", num_residentes: "2", email_propietario: "residente@email.com", conjunto_id: c2.id, password: 'juan1980', password_confirmation: 'juan1980')

b1 = Servicio.create(nombre_contratista: "Antonio Mendez", cedula_contratista: "34506897", imagen_contratista: "https://antrobjeto.files.wordpress.com/2010/11/11.jpg", categoria:"Vigilante", conjunto_id: c1.id )
b2 = Servicio.create(nombre_contratista: "Carlos Fernandez", cedula_contratista: "34674651", imagen_contratista: "https://antrobjeto.files.wordpress.com/2010/11/diapositiva11.jpg?w=640&h=437", categoria:"Vigilante", conjunto_id: c1.id )
b3 = Servicio.create(nombre_contratista: "Maria Villegas", cedula_contratista: "56987253", imagen_contratista: "https://antrobjeto.files.wordpress.com/2010/11/dsc05354.jpg?w=640&h=480", categoria:"Vigilante", conjunto_id: c1.id )
b4 = Servicio.create(nombre_contratista: "Vicente Pelaez", cedula_contratista: "98653452", imagen_contratista: "http://www.kascosharptech.com/cmss_files/imagelibrary/KASCO_Tech_Outlined%20(2).jpg", categoria:"Servicio Aseo", conjunto_id: c1.id )
b5 = Servicio.create(nombre_contratista: "Maria Villalba", cedula_contratista: "34542365", imagen_contratista: "http://images.todainfo.com/EMP_219/42779433_4.jpg", categoria:"Servicio Aseo", conjunto_id: c1.id )
b6 = Servicio.create(nombre_contratista: "Atoshi Antonio Mendez", cedula_contratista: "34506897", imagen_contratista: "https://antrobjeto.files.wordpress.com/2010/11/11.jpg", categoria:"Vigilante", conjunto_id: c2.id )
b7 = Servicio.create(nombre_contratista: "Atoshi Carlos Fernandez", cedula_contratista: "34674651", imagen_contratista: "https://antrobjeto.files.wordpress.com/2010/11/diapositiva11.jpg?w=640&h=437", categoria:"Vigilante", conjunto_id: c2.id )
b8 = Servicio.create(nombre_contratista: "Atoshi Maria Villegas", cedula_contratista: "56987253", imagen_contratista: "https://antrobjeto.files.wordpress.com/2010/11/dsc05354.jpg?w=640&h=480", categoria:"Vigilante", conjunto_id: c2.id )
b9 = Servicio.create(nombre_contratista: "Atoshi Vicente Pelaez", cedula_contratista: "98653452", imagen_contratista: "http://www.kascosharptech.com/cmss_files/imagelibrary/KASCO_Tech_Outlined%20(2).jpg", categoria:"Servicio Aseo", conjunto_id: c2.id )
b10 = Servicio.create(nombre_contratista: "Atoshi Maria Villalba", cedula_contratista: "34542365", imagen_contratista: "http://images.todainfo.com/EMP_219/42779433_4.jpg", categoria:"Servicio Aseo", conjunto_id: c2.id )
