db.Cvs.find({}, { archivo: 1, presentacion: 1, "idiomas_Cv.idioma": 1, "experiencia_Cv.sector_laboral": 1 })

db.Cvs.find({
    'experiencia_Cv.sector_laboral': 'Tecnologia',
    'experiencia_Cv.duracion': '2 años'
  })
  
