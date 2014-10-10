class IndicatorByState
  extend ActiveModel::Naming
  include ActiveModel::Conversion

  attr_accessor :formula, :indicator

  def initialize attributes = {}
    attributes.each do |name, value|
      send "#{name}=", value
    end
  end

  def records
    @records ||= PovertyIndicator.
      select([PovertyIndicator.arel_table[@indicator].send(@formula).as(@indicator), :nom_ent]).
      group(:nom_ent)
  end

  def values_for_map
    name_dictionary = {
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

    records.map { |r| { 'hc-key' => name_dictionary[r.nom_ent.to_sym], value: r.send(@indicator) } }
  end

  def empty?
    !@indicator && !@formula
  end
end
