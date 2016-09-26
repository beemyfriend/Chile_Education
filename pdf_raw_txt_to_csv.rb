#a change for git
def string_to_csv(string, comuna)
	text = string
	rut = string[/\d+\.\d+\.\d+-\S+/]
	text = text[0...text.index(rut)] + '   ' + text[(text.index(rut)+rut.length)...text.length]
	name = text[0...text.index(/   /)]
	text = text[name.strip.length...text.length]
	sexo = text[/\s\sVAR\s|\s\sMUJ\s/]
    text = text[text[(text.index(sexo) + sexo.length)...text.length]]
    mesa = text[text.rindex(/   /)...text.length]
    text = text[0...text.rindex(mesa)]
    if comuna.kind_of?(Array)
    	identifier = {}
    	comuna.each {|i| identifier[i] = text.rindex(i)}
    	identifier.map {|k,v| v.nil? ? identifier[k] = 0 : identifier[k] = v}
    	circ = identifier.max_by{|k,v| v}[0]

    else

    	circ = text[text.rindex(comuna)...text.length]
    end
    text = text[0...text.rindex(circ)]
    domicilio = text
		puts("#{name};#{rut.strip};#{sexo.strip};#{domicilio.strip};#{circ.strip};#{mesa.strip}")
	File.open('C:\Users\bortiz\Documents\FINALRUTHOPEFULLY.txt', 'a+') {|s| s << "\n#{name};#{rut.strip};#{sexo.strip};#{domicilio};#{comuna};#{mesa.strip}"}
end

comunas = {
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
	'RIO HURTADO' => ['(SAMO ALTO)', 'HURTADO'],
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
	'VALPARAISO' => ['EL PUERTO', 'BARON', 'PLAYA ANCHA', 'PLACILLA DE PENUELAS']
}

x = Dir.entries('C:\Users\bortiz\Documents\pages_no_accents')




#(29530...x.length).each do |blob|
(29551...29553).each do |blob|
	page = IO.readlines('C:\Users\bortiz\Documents\pages_no_accents\\' + x[blob])
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


	((lasthead + 1)...page.length).each {|i|
	    puts "#{blob} of #{x.length} documents: #{x[blob]}: line #{i} of #{page.length} "
	    if (page[i] =~ /\s/) != 0
		    if comunas.include?(comuna)
					if !comunas[comuna].any? { |c| page[i].strip =~ /#{c}\s\s\s+./}
					  	string = page[i].strip
				    	counter = i + 1
		          until ((comunas[comuna].any? { |c| string =~ /#{comuna}\s\s\s+./} ) & !(string =~ /\d+\.\d+\.\d+-\S+/).nil?) | (counter == page.length)
								if page[counter][0] != "\n"
				    			string += '  ' + page[counter].strip
				    		end
#=begin USE THIS TO DEBUG THE HURTADO PROBLEM
								puts "until repeat loop: #{counter - i}"
								p (comunas[comuna].any? { |c| string =~ /#{comuna}\s\s\s+./} )
#								p string =~ /(SAMO ALTO)\s\s\s+./
#								p string =~ /(SAMO ALTO)\s\s\s/
#								p string =~ /(SAMO ALTO)/
#								p string.include?('(SAMO ALTO)')
								p !(string =~ /\d+\.\d+\.\d+-\S+/).nil?
#=end
				    		counter += 1
				    	end
				    string_to_csv(string, comunas[comuna])
					elsif (comunas[comuna].any? { |c| page[i].include?(c)} ) & !(page[i] =~ /\d+\.\d+\.\d+-\S+/).nil?
						string_to_csv(page[i], comunas[comuna])
					end
			  else
				  if (page[i] =~ /#{comuna}\s\s\s+./).nil?
					    string = page[i].strip
					    counter = i + 1
							until (!(string =~ /#{comuna}\s\s\s+./).nil? & !(string =~ /\d+\.\d+\.\d+-\S+/).nil?) | (counter == page.length)
					    	if page[counter][0] != "\n"
					    		string += '  ' + page[counter].strip
					    	end
					    	counter += 1
					    end
					   	string_to_csv(string, comuna)
					elsif (page[i].include?(comuna)) & !(page[i] =~ /\d+\.\d+\.\d+-\S+/).nil?
							string_to_csv(page[i], comuna)
					end
			  end
		  end
	}
end
