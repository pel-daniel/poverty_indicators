class HighchartMap < Hash
  @@state_keys = {
    Aguascalientes: 'mx-ag',
    :'Baja California' => 'mx-bc',
    :'Baja California Sur' => 'mx-bs',
    Campeche: 'mx-cm',
    Chiapas: 'mx-cs',
    Chihuahua: 'mx-ch',
    :'Coahuila de Zaragoza' => 'mx-co',
    Colima: 'mx-cl',
    :'Distrito Federal' => 'mx-df',
    Durango: 'mx-dg',
    Guanajuato: 'mx-gj',
    Guerrero: 'mx-gr',
    Hidalgo: 'mx-hg',
    Jalisco: 'mx-ja',
    :'Michoacán de Ocampo' => 'mx-mi',
    Morelos: 'mx-mo',
    México: 'mx-mx',
    Nayarit: 'mx-na',
    :'Nuevo León' => 'mx-nl',
    Oaxaca: 'mx-oa',
    Puebla: 'mx-pu',
    Querétaro: 'mx-qt',
    :'Quintana Roo' => 'mx-qr',
    :'San Luis Potosí' => 'mx-sl',
    Sinaloa: 'mx-si',
    Sonora: 'mx-so',
    Tabasco: 'mx-tb',
    Tamaulipas: 'mx-tm',
    Tlaxcala: 'mx-tl',
    :'Veracruz de Ignacio de la Llave' => 'mx-ve',
    Yucatán: 'mx-yu',
    Zacatecas: 'mx-za'
  }

  def self.prepare_data records
    records.map { |key, value| { 'hc-key' => @@state_keys[key], value: value } }
  end
end
