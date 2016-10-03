Comunas = {
  'MARIA ELENA' => ['MARIA ELENA', 'PEDRO DE VALDIVIA', 'QUILLAGUA'],
  'POZO ALMONTE' => ['POZO ALMONTE', 'MAMINA'],
  'HUARA' => ['HUARA', 'CHIAPA'],
  'CALAMA' => ['CALAMA', 'CHUQUICAMATA', 'CHIU CHIU'],
  #NEED TO CHECK ANTOFOGASTA, the repetition could probably cause an error
  'ANTOFAGASTA' => [ 'ANTOFAGASTA NORTE', 'ANTOFAGASTA SUR'],
  'VALLENAR' => ['VALLENAR', 'DOMEYKO'],
  'DIEGO DE ALMAGRO' => ['DIEGO DE ALMAGRO', 'EL SALVADOR', 'POTRERILLOS'],
  'ALTO DEL CARMEN' => ['ALTO DEL CARMEN', 'SAN FELIX', 'EL TRANSITO'],
  'LA SERENA' => ['LA SERENA', 'LAS COMPANIAS'],
  'COQUIMBO' => ['COQUIMBO', 'TIERRAS BLANCAS', 'TONGOY'],
  'OVALLE' => ['OVALLE', 'BARRAZA', 'CERRILLOS DE TAMAYA'],
  #'RIO HURTADO' INCLUDES 'HURTADO', MAY CAUSE ALL CIRC TO BE 'HURTADO'
  #MINI CHEAT WILL BE TO USE '(SAMO ALTO)'' INSTEAD OF 'RIO HURTADO (SAMO ALTO)'
  #SOMETHING IS REALLY FUCKED UP WITH 'RIO HURTADO'  A0411002.PDF
  'RIO HURTADO' => ['RIO HURTADO (SAMO ALTO)', 'HURTADO'],
  'MONTE PATRIA' => ['MONTE PATRIA', 'EL PALQUI', 'CHANARAL ALTO', 'CAREN', 'RAPEL'],
  'SALAMANCA' => ['SALAMANCA', 'CHELLEPIN'],
  'LOS VILOS' => ['LOS VILOS', 'QUILIMARI', 'CAIMANES'],
  #CANELA HAS THE SAME ISSUE WITH RIO HURTADO. DEFINITELY HAS SOMETHING TO DO WITH THE PARENTHESIS ()
  #A0412004 AROUND 22630/217760
  'CANELA' => ['CANELA (CANELA BAJA)', 'MINCHA'],
  'PETORCA' => ['PETORCA', 'CHINCOLCO'],
  'ZAPALLAR' => ['ZAPALLAR', 'CATAPILCO'],
  'LOS ANDES' => ['LOS ANDES', 'ALTO ACONCAGUA'],
  'NOGALES' => ['NOGALES', 'EL MELON'],
  'VALPARAISO' => ['EL PUERTO', 'BARON', 'PLAYA ANCHA', 'PLACILLA DE PENUELAS', 'LAGUNA VERDE'],
  'VINA DEL MAR' => ['SAUSALITO', 'FORESTAL', 'AGUA SANTA', 'MIRAFLORES'],
  'SAN ANTONIO' => ['SAN ANTONIO', 'CUNCUMEN'],
  'QUILPUE' => ['QUILPUE', 'EL BELLOTO', 'LOS MOLLES'],
  'RANCAGUA' => ['RANCAGUA', 'RANCAGUA ORIENTE'],
  'MACHALI' => ['MACHALI', 'COYA'],
  #ISSUE!!!!! MAYBE THE PARENTHESIS IS CAUSING THE ISSSUE. EX A0626006.pdf_pages_96.txt
  #The suolution was to use Regexp.quote(c)
  'OLIVAR' => ['OLIVAR (ALTO)', 'GULTRO'],
  'REQUINOA' => ['REQUINOA', 'LOS LIRIOS'],
  'RENGO' => ['RENGO', 'ROSARIO', 'ESMERALDA'],
  'MALLOA' => ['MALLOA', 'PELEQUEN'],
  'SAN VICENTE' => ['SAN VICENTE', 'ZUNIGA'],
  'DONIHUE' => ['DONIHUE', 'LO MIRANDA'],
  'LAS CABRAS' => ['LAS CABRAS', 'LAGO RAPEL (EL MANZANO)'],
  'SAN FERNANDO' => ['SAN FERNANDO', 'PUENTE NEGRO'],
  'PAREDONES' => ['PAREDONES', 'SAN PEDRO DE ALCANTARA'],
  'MOLINA' => ['MOLINA', 'LONTUE', 'TRES ESQUINAS'],
  'SAGRADA FAMILIA' => ['SAGRADA FAMILIA', 'VILLA PRAT'],
  'HUALANE' => ['HUALANE', 'LA HUERTA'],
  'LICANTEN' => ['LICANTEN', 'ILOCA'],
  'VICHUQUEN' => ['VICHUQUEN', 'LLICO DE MATAQUITO'],
  'SAN CLEMENTE' => ['SAN CLEMENTE', 'VILCHES'],
  'MAULE' => ['MAULE', 'DUAO', 'COLIN'],
  'PENCAHUE' => ['PENCAHUE', 'CORINTO', 'TOCONEY'],
  'CONSTITUCION' => ['CONSTITUCION', 'PUTU', 'SANTA OLGA'],
  'CUREPTO' => ['CUREPTO', 'HUAQUEN', 'GUALLECO'],
  'YERBAS BUENAS' => ['YERBAS BUENAS', 'ORILLA DEL MAULE'],
  'PARRAL' => ['PARRAL', 'CATILLO'],
  'SAN JAVIER' => ['SAN JAVIER', 'NIRIVILO', 'HUERTA DEL MAULE', 'MELOZAL'],
  'CAUQUENES' => ['CAUQUENES', 'SAUZAL', 'POCILLAS'],
  'CHILLAN' => ['CHILLAN', 'QUINCHAMALI'],
	'SAN CARLOS' => ['SAN CARLOS', 'CACHAPOAL'],
	'COIHUECO' => ['COIHUECO', 'BUSTAMANTE'],
	'PINTO' => ['PINTO', 'RECINTO'],
	'SAN IGNACIO' => ['SAN IGNACIO', 'PUEBLO SECO'],
	'YUNGAY' => ['YUNGAY', 'CAMPANARIO'],
	'BULNES' => ['BULNES', 'SANTA CLARA'],
	'QUILLON' => ['QUILLON', 'CERRO NEGRO' ],
  'QUILLOTA' => ['QUILLOTA', 'SAN PEDRO DE QUILLOTA'],
	'RANQUIL' => ['RANQUIL (NIPAS)'],
	'COELEMU' => ['COELEMU', 'VEGAS DE ITATA', 'GUARILIHUE'],
	'SAN NICOLAS' => ['SAN NICOLAS', 'PUENTE NUBLE'],
	'CHILLAN VIEJO' => ['CHILLAN VIEJO', 'RUCAPEQUEN'],
	'CONCEPCION' => ['CONCEPCION CENTRO', 'ANDALIEN'],
	'TALCAHUANO' => ['TALCAHUANO', 'LOS CERROS', 'MEDIO CAMINO'],
	'PENCO' => ['PENCO', 'LIRQUEN'],
	'TOME' => ['TOME', 'DICHATO', 'RAFAEL'],
	'FLORIDA' => ['FLORIDA', 'COPIULEMU'],
	'HUALQUI' => ['HUALQUI', 'TALCAMAVIDA'],
	'CORONEL' => ['CORONEL', 'LAGUNILLAS', 'ISLA SANTA MARIA'],
	'SAN PEDRO DE LA PAZ' => ['SAN PEDRO DE LA PAZ', 'LOMAS COLORADAS'],
	'LOS ANGELES' => ['LOS ANGELES', 'SANTA FE'],
	'CABRERO' => ['CABRERO', 'MONTE AGUILA'],
	#SIMILIAR CHEAT AS RIO HURTADO
	# (HUEPIL) INSTEAD OF TUCAPEL (HUEPIL)
	#91807 A0835003.PDF
	'TUCAPEL' => ['TUCAPEL', 'TUCAPEL (HUEPIL)', 'POLCURA', 'TRUPAN'],
	'QUILLECO' => ['QUILLECO', 'LAS CANTERAS'],
	#ESTACION INSTEAD OF YUMBEL ESTACION A0835013.PDF
	'YUMBEL' => ['YUMBEL', 'RERE', 'RIO CLARO', 'YUMBEL ESTACION', 'TOMECO'],
	'LEBU' => ['LEBU', 'ISLA MOCHA'],
	'ARAUCO' => ['ARAUCO', 'LARAQUETE', 'CARAMPANGUE', 'LLICO'],
	'LOS ALAMOS' => ['LOS ALAMOS', 'ANTIHUALA'],
	'ANGOL' => ['ANGOL', 'HUEQUEN'],
	'RENAICO' => ['RENAICO', 'TIJERAL'],
	'COLLIPULLI' => ['COLLIPULLI', 'MININCO'],
	'LONQUIMAY' => ['LONQUIMAY', 'LIUCURA', 'ICALMA'],
	'CURACAUTIN' => ['CURACAUTIN', 'MALALCAHUELLO'],
	'ERCILLA' => ['ERCILLA', 'PAILAHUEQUE'],
	'VICTORIA' => ['VICTORIA', 'SELVA OBSCURA'],
	'LUMACO' => ['LUMACO', 'PICHIPELLAHUEN', 'CAPITAN PASTENE'],
	'TEMUCO' => ['TEMUCO CENTRO', 'CERRO NIELOL', 'PEDRO DE VALDIVIA (TEMUCO)', 'LABRANZA'],
	'LAUTARO' => ['LAUTARO', 'PILLANLELBUN'],
	'VILCUN' => ['VILCUN', 'CAJON', 'CHERQUENCO'],
	'CUNCO' => ['CUNCO', 'LOS LAURELES'],
	'VILLARRICA' => ['VILLARRICA', 'LICAN-RAY', 'NANCUL'],
	'FREIRE' => ['FREIRE', 'QUEPE', 'RADAL'],
	'PITRUFQUEN' => ['PITRUFQUEN', 'COMUY'],
	'GORBEA' => ['GORBEA', 'LASTARRIA', 'QUITRATUE'],
	'LONCOCHE' => ['LONCOCHE', 'HUISCAPI'],
	'TOLTEN' => ['TOLTEN', 'QUEULE'],
	'TEODORO SCHMIDT' => ['TEODORO SCHMIDT', 'HUALPIN', 'BARROS ARANA'],
	'SAAVEDRA' => ['SAAVEDRA', 'PUERTO DOMINGUEZ'],
	'CARAHUE' => ['CARAHUE', 'TROVOLHUE', 'NEHUENTUE'],
	'PADRE LAS CASAS' => ['PADRE LAS CASAS', 'SAN RAMON (Padre las Casas)'],
	'OSORNO' => ['OSORNO', 'RAHUE'],
	'SAN PABLO' => ['SAN PABLO', 'QUILACAHUIN'],
	'PUERTO OCTAY' => ['PUERTO OCTAY', 'LAS CASCADAS'],
	'PUYEHUE' => ['PUYEHUE (ENTRE LAGOS)'],
	'PURRANQUE' => ['PURRANQUE', 'HUEYUSCA', 'CORTE ALTO'],
	'RIO NEGRO' => ['RIO NEGRO', 'RIACHUELO' ],
	'SAN JUAN DE LA COSTA' => ['SAN JUAN DE LA COSTA', 'BAHIA MANSA', 'MISION DE LA COSTA'],
	'PUERTO MONTT' => ['PUERTO MONTT', 'LENCA', 'ALERCE', 'LA VARA', 'CHAMIZA', 'ISLA MAILLEN', 'HUELMO', 'LAS QUEMAS'],
	'PUERTO VARAS' => ['PUERTO VARAS', 'PEULLA', 'ENSENADA', 'NUEVA BRAUNAU', 'RALUN'],
	'COCHAMO' => ['COCHAMO', 'PUELO', 'LLANADA GRANDE'],
	'CALBUCO' => ['CALBUCO', 'ISLA GUAR', 'ISLA PULUQUI', 'COLACO', 'PARGUA'],
	'MAULLIN' => ['MAULLIN', 'CARELMAPU', 'QUENUIR'],
	'LOS MUERMOS' => ['LOS MUERMOS', 'CANITAS'],
  'FRESIA' => ['FRESIA', 'TEGUALDA'],
	'FRUTILLAR' => ['FRUTILLAR', 'CASMA'],
	'CASTRO' => ['CASTRO', 'QUEHUI', 'RILAN'],
	'ANCUD' => ['ANCUD', 'CHACAO'],
	'QUEMCHI' => ['QUEMCHI', 'LLIUCO', 'MECHUQUE', 'MONTEMAR', 'METAHUE'],
	'DALCAHUE' => ['DALCAHUE', 'TENAUN'],
	'QUINCHAO' => ['QUINCHAO (ACHAO)', 'CHAULINEC', 'QUENAC'],
	'CHAITEN' => ['CHAITEN', 'AYACARA', 'VILLA SANTA LUCIA'],
  #UALAIHUE PUERTO INSTEAD OF HUALAIHUE PUERTO A1043002.PDF 120033/217760
	'HUALAIHUE' => ['HUALAIHUE', 'HUALAIHUE PUERTO', 'CONTAO', 'ROLECHA'],
	'COYHAIQUE' => ['COYHAIQUE', 'VALLE SIMPSON', 'NIREHUAO', 'BALMACEDA'],
	'LAGO VERDE' => ['LAGO VERDE', 'LA TAPERA'],
	'AISEN' => ['AISEN', 'PUERTO CHACABUCO', 'MANIHUALES', 'PUERTO AGUIRRE'],
	'CISNES' => ['CISNES', 'CORCOVADO', 'LA JUNTA', 'PUYUHUAPI'],
	'CHILE CHICO' => ['CHILE CHICO', 'PUERTO GUADAL'],
	'RIO IBANEZ' => ['RIO IBANEZ', 'BAHIA MURTA', 'VILLA CERRO CASTILLO', 'RIO TRANQUILO'],
	'NATALES' => ['NATALES', 'PUERTO EDEN'],
	'TORRES DEL PAINE' => ['TORRES DEL PAINE (C. CASTILLO)'],
	'CABO DE HORNOS' => ['CABO DE HORNOS (NAVARINO)'],
	'COLINA' => ['COLINA', 'CHICUREO'],
	'LAMPA' => ['LAMPA', 'BATUCO', 'VALLE GRANDE'],
	'SANTIAGO' => ['EL CENTRO', 'PARQUE ALMAGRO', "PARQUE O'HIGGINS"],
	'RECOLETA' => ['RECOLETA SUR', 'RECOLETA NORTE'],
	'ESTACION CENTRAL' => ['ALAMEDA', 'LAS AMERICAS'],
	'CONCHALI' => ['LO NEGRETE', 'EL CORTIJO'],
	'HUECHURABA' => ['HUECHURABA', 'LOS LIBERTADORES'],
  #UDAHUEL SUR INSTEAD OF PUDAHUEL SUR
	'PUDAHUEL' => ['PUDAHUEL', 'CIUDAD DE LOS VALLES', 'PUDAHUEL SUR'],
	#AIPU PONIENTE INSTEAD OF MAIPU PONIENTE
	'MAIPU' => ['MAIPU', 'CIUDAD SATELITE', 'MAIPU PONIENTE', 'LOS PAJARITOS', ],
	'LO ESPEJO' => ['LO VALLEDOR', 'ESTACION LO ESPEJO' ],
	'EL BOSQUE' => ['LUIS CRUZ MARTINEZ', 'CAPITAN AVALOS' ],
	'PEDRO AGUIRRE CERDA' => ['P AGUIRRE CERDA S.', 'P AGUIRRE CERDA N.'],
	'LA FLORIDA' => ['BELLAVISTA', 'TRINIDAD', 'SAN JOSE DE LA ESTRELLA'],
	'NUNOA' => ['PLAZA NUNOA', 'ESTADIO NACIONAL', 'PLAZA EGANA'],
	'MACUL' => ['MACUL', 'JOSE PEDRO ALESSANDRI'],
	'PENALOLEN' => ['PENALOLEN', 'SAN LUIS', 'CONSISTORIAL'],
	'LAS CONDES' => ['EL GOLF', 'APOQUINDO'],
	'PUENTE ALTO'=> ['PUENTE ALTO', 'SOTERO DEL RIO', 'BAJOS DE MENA'],
	'PAINE' => ['PAINE', 'HUELQUEN', 'CHAMPA'],
	'VALDIVIA' => ['VALDIVIA', 'LAS ANIMAS', 'NIEBLA'],
	#PELCHUQUÍN HAS A SPECIAL CHARACTER. i NEED TO REPLACE IT WITH AN i
	#MEANING THAT i HAVE TO REDUE THE PDF CONVERSION FOR A1439002.PDF
	'MARIQUINA' => ['MARIQUINA', 'MEHUIN', 'CIRUELOS', 'PELCHUQUIN'],
	'LANCO' => ['LANCO', 'MALALHUE'],
	'LOS LAGOS' => ['LOS LAGOS', 'ANTILHUE', 'RINIHUE', 'FOLILCO'],
	'CORRAL' => ['CORRAL', 'ISLA DEL REY'],
	'PANGUIPULLI' => ['PANGUIPULLI', 'CHOSHUENCO', 'CONARIPE', 'LIQUINE', 'NELTUME'],
	'PAILLACO' => ['PAILLACO', 'REUMEN', 'PICHIRROPULLI'],
	#CURRINÉ HAS AN ACCENTED HARECTER THAT NEEDS TO BE REPLACED
	#CONVERT A01453001.PDF
	'FUTRONO' => ['FUTRONO', 'LLIFEN', 'NONTUELA', 'CURRINE'],
	'LA UNION' => ['LA UNION', 'PUERTO NUEVO'],
	'RIO BUENO' => ['RIO BUENO', 'CRUCERO', 'CAYURRUCA', 'MANTILHUE'],
	'LAGO RANCO' => ['LAGO RANCO', 'RININAHUE'],
  #ARICA NORTE IS RICA NORTE
	'ARICA' => ['ARICA', 'ARICA NORTE', 'SAN MIGUEL DE AZAPA'],
	'CAMARONES' => ['CAMARONES', 'CODPA'],
	'PUTRE' => ['PUTRE', 'BELEN']
}

def string_to_csv(string, comuna)
  text = string

  rut = string[/(\d+\.)?(\d+\.)?\d+-\S+/]
  text = text[0...text.index(rut)] + '   ' + text[(text.index(rut)+rut.length)...text.length]
  name = text[0...text.index(/   /)]
  text = text[name.strip.length...text.length]
  sexo = text[/\s\sVAR\s|\s\sMUJ\s/]
  text = text[text[(text.index(sexo) + sexo.length)...text.length]]
  mesa = text[text.rindex(/   /)...text.length]
  text = text[0...text.rindex(mesa)].strip
  if comuna.kind_of?(Array)
    identifier = {}
    comuna.each {|i|  identifier[i] = text.rindex(i)}
    identifier.map {|k,v| v.nil? ? identifier[k] = 0 : identifier[k] = v}
    pot_circ = []
    identifier.each { |k,v| ((text.length - k.length) == text.rindex(k)) ? pot_circ << k : nil}
		circ = pot_circ.max_by {|i| i.length}
  else
    circ = text[text.rindex(comuna)...text.length]
  end

  text = text[0...text.rindex(circ)]
  domicilio = text
  record = "\n#{name};#{rut.strip};#{sexo.strip};#{domicilio.strip};#{circ.strip};#{mesa.strip}"
  print record
  return record
end

def identify_comuna_and_header(page)
  comuna = ''
  lasthead = 0
  (0...page.length).each do |i|
    if page[i].include?("COMUNA:") & page[i].include?("PAGINA")
      comuna = page[i]
    end
    if page[i].include?('MESA') & page[i].include?('CIRCUNSCRIPCI')
      lasthead = i
    end
  end
  comuna = comuna[/COMUNA:.+PAGINA/]
  comuna =  comuna[7...(comuna.length-6)].strip
  return [comuna, lasthead]
end

#starter should be lasthead + 1
def parse_line_for_csv_record(page, start_line, comuna)
  page_as_csv = ""
  last_record = ""
  (start_line...page.length).each {|i|
    print "\nline #{i} of #{page.length}"
    if (page[i] =~ /\s/) != 0
      if Comunas.include?(comuna)
        if !Comunas[comuna].any? { |c| page[i].strip =~ /#{Regexp.quote(c)}\s\s\s+./} & ((page[i+1] =~ /\n/) == 0)
          name = last_record[0...last_record.index(';')]
          remain = last_record[last_record.index(';')...last_record.length]
          new_record = name + ' ' + page[i].strip + remain
          page_as_csv.gsub!(last_record, new_record)
        elsif (!Comunas[comuna].any? { |c| page[i].strip =~ /#{Regexp.quote(c)}\s\s\s+./} | !(Comunas[comuna].any? {|c| page[i].rindex(c).nil? ? false : page[i].index(/(\d+\.)?(\d+\.)?\d+-\S+/) < page[i].rindex(c) }))
          string = page[i].strip
          counter = i + 1
          until ((Comunas[comuna].any? { |c| string =~ /#{Regexp.quote(c)}\s\s\s+./} ) & !(string =~ /(\d+\.)?(\d+\.)?\d+-\S+/).nil? & Comunas[comuna].any? {|c| string.rindex(c).nil? ? false : string.index(/(\d+\.)?(\d+\.)?\d+-\S+/) < string.rindex(c) } ) | (counter == page.length)
            if page[counter][0] != "\n"
              string += '  ' + page[counter].strip
            end
            counter += 1
          end
          last_record = string_to_csv(string, Comunas[comuna])
          page_as_csv += last_record
        elsif (Comunas[comuna].any? { |c| page[i].include?(c)} ) & !(page[i] =~ /(\d+\.)?(\d+\.)?\d+-\S+/).nil?
          last_record = string_to_csv(page[i], Comunas[comuna])
          page_as_csv += last_record
        end
      else
        if !page[i].include?(comuna) & ((page[i+1] =~/\n/) == 0)
          name = last_record[0...last_record.index(';')]
          remain = last_record[last_record.index(';')...last_record.length]
          new_record = name + ' ' + page[i].strip + remain
          page_as_csv.gsub!(last_record, new_record)
        elsif ((page[i] =~ /#{Regexp.quote(comuna)}\s\s\s+./).nil? | ( page[i].rindex(comuna).nil? ? false : page[i].index(/(\d+\.)?(\d+\.)?\d+-\S+/) > page[i].rindex(comuna)))
          string = page[i].strip
          counter = i + 1
          until (!(string =~ /#{Regexp.quote(comuna)}\s\s\s+./).nil? & !(string =~ /(\d+\.)?(\d+\.)?\d+-\S+/).nil? & (string.rindex(comuna).nil? ? false : string.index(/(\d+\.)?(\d+\.)?\d+-\S+/) < string.rindex(comuna)) ) | (counter == page.length)
            if page[counter][0] != "\n"
              string += '  ' + page[counter].strip
            end
            counter += 1
          end
          last_record = string_to_csv(string, comuna)
          page_as_csv += last_record
        elsif (page[i].include?(comuna)) & !(page[i] =~ /(\d+\.)?(\d+\.)?\d+-\S+/).nil?
          last_record = string_to_csv(page[i], comuna)
          page_as_csv += last_record
        end
      end
    end
  }
  page_as_csv
end

x = Dir.entries('C:\Users\bortiz\Documents\pages_no_accents')

(2...x.length).each do |blob|
	page = IO.readlines('C:\Users\bortiz\Documents\pages_no_accents\\' + x[blob])
#  page = IO.readlines('C:\Users\bortiz\Documents\pages_no_accents\A1439004.pdf_page_128.txt')
  info = identify_comuna_and_header(page)
  comuna = info[0]
  lasthead = info[1]
  puts "\n\n#{blob} of #{x.length} documents: #{x[blob]}"
  record = parse_line_for_csv_record(page, (lasthead+1), comuna)
  File.open('C:\Users\bortiz\Desktop\rut_csv_rough.txt', 'a+') {|s| s << record }
end
