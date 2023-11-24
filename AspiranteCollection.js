db.createCollection("Aspirantes", {
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
          required: ['tipo', 'descripcion'],
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
         
        }
      }
    }
  }
})
show collections

db.Aspirantes.insertOne({
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
}
)

db.Aspirantes.insertOne({
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
 })
 
db.Aspirantes.insertOne( {
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
 })

db.Aspirantes.insertOne({
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
  })
