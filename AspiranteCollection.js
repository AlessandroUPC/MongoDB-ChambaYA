db.createCollection("Aspirante", {
  validator: {
    $jsonSchema: {
      bsonType: 'object',
      required: ['nombres', 'apellidos', 'edad', 'direccion', 'telefono', 'TipoTrabajo'],
      properties: {
        nombres: {
          bsonType: 'string',
          description: 'El nombre debe ser una cadena de texto'
        },
        apellidos: {
          bsonType: 'string',
          description: 'Los apellidos deben ser una cadena de texto'
        },
        edad: {
          bsonType: 'int',
          description: 'La edad debe ser un número entero'
        },
        direccion: {
          bsonType: 'string',
          description: 'La dirección debe ser una cadena de texto'
        },
        telefono: {
          bsonType: 'string',
          description: 'El teléfono debe ser una cadena de texto'
        },
        TipoTrabajo: {
          bsonType: 'object',
          properties: {
            tipo: {
              bsonType: 'string',
              description: 'El tipo de trabajo debe ser una cadena de texto'
            },
            descripcion: {
              bsonType: 'string',
              description: 'La descripción del trabajo debe ser una cadena de texto'
            }
          },
          required: ['tipo', 'descripcion']
        }
      }
    }
  }
})




var Aspirante = {
  nombres: 'Juan',
  apellidos: 'García Pérez', 
  correo: 'juangarcia@example.com',
  edad: 18,
  direccion: 'Calle Principal 123',
  telefono: '555-123-4567',

  TipoTrabajo: {
    tipo: 'Jefatura',
    descripcion: 'Jefatura en desarrollo web'
  }
};

[
  {
    nombres: 'Juan',
    apellidos: 'García Pérez', 
    correo: 'juangarcia@example.com',
    edad: 18,
    direccion: 'Calle Principal 123',
    telefono: '555-123-4567',
    TipoTrabajo: {
      tipo: 'Jefatura',
      descripcion: 'Jefatura en desarrollo web'
    }
  },
  {
    nombres: 'Ana',
    apellidos: 'López Martínez', 
    correo: 'analopez@example.com',
    edad: 25,
    direccion: 'Avenida Central 456',
    telefono: '555-987-6543',
    TipoTrabajo: {
      tipo: 'Gerencia',
      descripcion: 'Gerencia de Marketing'
    }
  },
  {
    nombres: 'Pedro',
    apellidos: 'Ramírez González', 
    correo: 'pedroramirez@example.com',
    edad: 30,
    direccion: 'Plaza Mayor 789',
    telefono: '555-456-7890',
    TipoTrabajo: {
      tipo: 'Desarrollador',
      descripcion: 'Desarrollo de Software'
    }
  },
  {
    nombres: 'María',
    apellidos: 'Díaz Rodríguez', 
    correo: 'mariadiaz@example.com',
    edad: 22,
    direccion: 'Paseo del Sol 246',
    telefono: '555-222-3333',
    TipoTrabajo: {
      tipo: 'Analista',
      descripcion: 'Análisis de Datos'
    }
  },
  {
    nombres: 'Luis',
    apellidos: 'Hernández Sánchez', 
    correo: 'luishernandez@example.com',
    edad: 28,
    direccion: 'Calle Nueva 101',
    telefono: '555-876-5432',
    TipoTrabajo: {
      tipo: 'Consultoría',
      descripcion: 'Consultoría Financiera'
    }
  }
]

db.runCommand({
  collMod: 'books',
  validator: {
    $jsonSchema: {
      bsonType: 'object',
      required: ['nombres', 'apellidos', 'edad', 'direccion', 'telefono', 'TipoTrabajo'],
      properties: {
        nombres: {
          bsonType: 'string',
          description: 'El nombre debe ser una cadena de texto'
        },
        apellidos: {
          bsonType: 'string',
          description: 'Los apellidos deben ser una cadena de texto'
        },
        edad: {
          bsonType: 'int',
          description: 'La edad debe ser un número entero'
        },
        direccion: {
          bsonType: 'string',
          description: 'La dirección debe ser una cadena de texto'
        },
        telefono: {
          bsonType: 'string',
          description: 'El teléfono debe ser una cadena de texto'
        },
        TipoTrabajo: {
          bsonType: 'object',
          properties: {
            tipo: {
              bsonType: 'string',
              description: 'El tipo de trabajo debe ser una cadena de texto'
            },
            descripcion: {
              bsonType: 'string',
              description: 'La descripción del trabajo debe ser una cadena de texto'
            }
          },
          required: ['tipo', 'descripcion']
        }
      }
    }
  },
  validationAction:'error'
})










{
    "Cvs": [
      {
        "presentacion": "Soy un desarrollador web con experiencia en tecnologías front-end y back-end.",
        "experiencia": "Desarrollador Web en Empresa A (2018-2020) - Desarrollo y mantenimiento de aplicaciones web.",
        "id_tipo_trabajo": {
          "$oid": "6550998a51a6b01f37704a57"
        },
        "archivo": "cv_desarrollador_web.pdf"
      },
      {
        "presentacion": "Soy un diseñador gráfico con experiencia en branding y diseño de interfaces.",
        "experiencia": "Diseñador Gráfico en Empresa B (2016-2021) - Creación de identidades de marca y diseño de interfaces de usuario.",
        "id_tipo_trabajo": {
          "$oid": "655099a351a6b01f37704a59"
        },
        "archivo": "cv_disenador_grafico.pdf"
      },
      {
        "presentacion": "Soy un ingeniero de datos con experiencia en procesamiento y análisis de grandes volúmenes de datos.",
        "experiencia": "Ingeniero de Datos en Empresa C (2017-2022) - Diseño e implementación de pipelines de datos y análisis de datos masivos.",
        "id_tipo_trabajo": {
          "$oid": "655099b351a6b01f37704a5b"
        },
        "archivo": "cv_ingeniero_datos.pdf"
      },
      {
        "presentacion": "Soy un analista de marketing con experiencia en estrategias digitales y análisis de datos.",
        "experiencia": "Analista de Marketing en Agencia Digital D (2019-2022) - Gestión de campañas digitales y análisis de rendimiento.",
        "id_tipo_trabajo": {
          "$oid": "6551098b15d00b133b110f72"
        },
        "archivo": "cv_analista_marketing.pdf"
      },
      {
        "presentacion": "Soy un desarrollador móvil especializado en aplicaciones para iOS y Android.",
        "experiencia": "Desarrollador Móvil en Empresa E (2018-2021) - Creación de aplicaciones nativas para dispositivos móviles.",
        "id_tipo_trabajo": {
          "$oid": "6551099315d00b133b110f74"
        },
        "archivo": "cv_desarrollador_movil.pdf"
      },
      {
        "presentacion": "Soy un especialista en recursos humanos con enfoque en desarrollo organizacional.",
        "experiencia": "Especialista en Recursos Humanos en Empresa F (2017-2020) - Desarrollo de programas de capacitación y gestión del talento.",
        "id_tipo_trabajo": {
          "$oid": "6551099e15d00b133b110f76"
        },
        "archivo": "cv_especialista_rrhh.pdf"
      },
      {
        "presentacion": "Soy un científico ambiental comprometido con la conservación del medio ambiente.",
        "experiencia": "Científico Ambiental en Organización Ambiental G (2016-2022) - Investigación y proyectos de conservación.",
        "id_tipo_trabajo": {
          "$oid": "655109a915d00b133b110f78"
        },
        "archivo": "cv_cientifico_ambiental.pdf"
      },
      {
        "presentacion": "Soy un ingeniero de software embebido con experiencia en sistemas integrados.",
        "experiencia": "Ingeniero de Software Embebido en Empresa H (2018-2023) - Desarrollo de software para sistemas embebidos.",
        "id_tipo_trabajo": {
          "$oid": "655109af15d00b133b110f7a"
        },
        "archivo": "cv_ingeniero_embebido.pdf"
      },
      {
        "presentacion": "Soy un especialista en seguridad informática enfocado en la prevención de amenazas cibernéticas.",
        "experiencia": "Especialista en Seguridad Informática en Empresa I (2017-2022) - Implementación de medidas de ciberseguridad.",
        "id_tipo_trabajo": {
          "$oid": "655109b715d00b133b110f7c"
        },
        "archivo": "cv_seguridad_informatica.pdf"
      },
      {
        "presentacion": "Soy un gestor de proyectos con experiencia en la ejecución exitosa de iniciativas.",
        "experiencia": "Gestor de Proyectos en Consultora J (2019-2023) - Coordinación y seguimiento de proyectos diversos.",
        "id_tipo_trabajo": {
          "$oid": "655109bd15d00b133b110f7e"
        },
        "archivo": "cv_gestor_proyectos.pdf"
      }
      
    ]
  }
  
