db.createCollection("Cvs", {
  validator: {
    $jsonSchema: {
      bsonType: 'object',
      required: ['presentacion', 'archivo', 'estado', 'experiencia_Cv', 'idiomas_Cv', 'habilidades_Cv', 'Aspirante'],
      properties: {
        presentacion: {
          bsonType: 'string',
          description: 'La presentación debe ser una cadena de texto'
        },
        archivo: {
          bsonType: 'string',
          description: 'El nombre del archivo debe ser una cadena de texto'
        },
        estado: {
            enum: ['ACEPTADO', 'NO ACEPTADO'],
            description: 'Los valores permitidos son ACEPTADO o NO ACEPTADO'
        },
        experiencia_Cv: {
          bsonType: 'object',
          required: ['sector_laboral', 'descripcion_Experiencia', 'duracion'],
          properties: {
            sector_laboral: {
              bsonType: 'string',
              description: 'El sector laboral debe ser una cadena de texto'
            },
            descripcion_Experiencia: {
              bsonType: 'string',
              description: 'La descripción de la experiencia debe ser una cadena de texto'
            },
            duracion: {
              bsonType: 'string',
              description: 'La duración debe ser una cadena de texto'
            }
          }
        },
        idiomas_Cv: {
          bsonType: 'object',
          required: ['idioma'],
          properties: {
            idioma: {
              bsonType: 'string',
              description: 'El idioma debe ser una cadena de texto'
            }
          }
        },
        habilidades_Cv: {
          bsonType: 'object',
          required: ['habilidades'],
          properties: {
            habilidades: {
              bsonType: 'array',
              description: 'Las habilidades deben ser un arreglo de cadenas de texto',
              items: {
                bsonType: 'string'
              }
            }
          }
        },
        Aspirante: {
          bsonType: 'objectId',
          description: 'El ID del Aspirante debe ser un ObjectId'
        }
      }
    }
  }
})

db.Cvs.insertOne({
  presentacion: 'Soy un desarrollador web con experiencia en tecnologías front-end y back-end.',
  archivo: 'cv_desarrollador_web.pdf',
  estado: 'ACEPTADO',
  experiencia_Cv: {
    sector_laboral: 'Tecnologia',
    descripcion_Experiencia: 'Desarrollador Web en Empresa A (2018-2020) - Desarrollo y mantenimiento de aplicaciones web.',
    duracion: '2 años'
  },
  idiomas_Cv: {
    idioma: 'Ingles'
  },
  habilidades_Cv: {
    habilidades: ['HTML', 'JavaScript', 'CSS']
  },
  Aspirante: ObjectId("65610df7bc89fbc8e9567934")
});

db.Cvs.insertOne({
  presentacion: 'Soy una gerente de marketing con amplia experiencia en estrategias de promoción y ventas.',
  archivo: 'cv_gerente_marketing.pdf',
  estado: 'NO ACEPTADO',
  experiencia_Cv: {
    sector_laboral: 'Marketing',
    descripcion_Experiencia: 'Gerente de Marketing en Empresa B (2015-2021) - Estrategias de marketing digital y gestión de equipos.',
    duracion: '6 años'
  },
  idiomas_Cv: {
    idioma: 'Inglés, Francés'
  },
  habilidades_Cv: {
    habilidades: ['Marketing estratégico', 'Gestión de equipos', 'Campañas publicitarias']
  },
  Aspirante: ObjectId("65610df7bc89fbc8e9567935")
});

db.Cvs.insertOne({
  presentacion: 'Soy una analista de datos con experiencia en análisis estadístico y modelado predictivo.',
  archivo: 'cv_analista_datos.pdf',
  estado: 'ACEPTADO',
  experiencia_Cv: {
    sector_laboral: 'Tecnología',
    descripcion_Experiencia: 'Analista de Datos en Empresa D (2019-presente) - Análisis de datos y desarrollo de modelos predictivos.',
    duracion: '3 años'
  },
  idiomas_Cv: {
    idioma: 'Inglés'
  },
  habilidades_Cv: {
    habilidades: ['Análisis estadístico', 'Python para análisis de datos', 'Machine Learning']
  },
  Aspirante: ObjectId("65610df7bc89fbc8e9567937")
});

db.Cvs.insertOne({
  presentacion: 'Soy un consultor financiero con experiencia en planificación financiera y asesoramiento en inversiones.',
  archivo: 'cv_consultor_financiero.pdf',
  estado: 'ACEPTADO',
  experiencia_Cv: {
    sector_laboral: 'Finanzas',
    descripcion_Experiencia: 'Consultor Financiero en Empresa E (2017-presente) - Asesoramiento financiero a empresas y particulares.',
    duracion: '4 años'
  },
  idiomas_Cv: {
    idioma: 'Inglés, Español'
  },
  habilidades_Cv: {
    habilidades: ['Análisis financiero', 'Gestión de carteras', 'Planificación fiscal']
  },
  Aspirante: ObjectId("65610df7bc89fbc8e9567938")
});

db.Cvs.insertOne({
  presentacion: 'Soy un jefe de proyecto con habilidades en liderazgo y gestión de equipos multidisciplinarios.',
  archivo: 'cv_jefe_proyecto.pdf',
  estado: 'ACEPTADO',
  experiencia_Cv: {
    sector_laboral: 'Tecnología',
    descripcion_Experiencia: 'Jefe de Proyecto en Empresa F (2016-presente) - Gestión de proyectos de desarrollo de software.',
    duracion: '6 años'
  },
  idiomas_Cv: {
    idioma: 'Inglés, Portugués'
  },
  habilidades_Cv: {
    habilidades: ['Gestión de proyectos', 'Liderazgo de equipos', 'Metodologías ágiles']
  },
  Aspirante: ObjectId("65610df7bc89fbc8e9567939")
});

