//
//  PostAmigosModel.swift
//  NUUP_Challenge
//
//  Created by Damaris Cortés on 06/11/24.
//

import Foundation

struct Post: Identifiable {
    
    let id = UUID()
    let name: String
    let username: String
    let userProfileImage: String
    let postImageName: String
    let description: String
    
    init(name: String, username: String,userProfileImage: String, postImageName: String, description: String) {
        self.name = name
        self.username = username
        self.userProfileImage = userProfileImage
        self.postImageName = postImageName
        self.description = description
    }
    
}

let posts = [
    Post(
        name: "Sara",
        username: "sara_derechos",
        userProfileImage:"Sara",
        postImageName: "educacion_derechos",
        description: "Hoy impartimos un taller sobre derechos humanos en la comunidad. Es fundamental empoderar a las personas con el conocimiento necesario para defender sus derechos."

      ) ,
    Post(
        name: "Raquel",
        username: "raquel_refugio",
        userProfileImage:"Raquel",
        postImageName: "refugio_animales",
        description: "Pasamos el día cuidando a los animales del refugio. Ver la sonrisa de los perritos y gatitos cuando reciben cariño es impagable."

     ) ,
    Post(
        name: "Ana",
        username: "ana_reforestadora",
        userProfileImage:"Ana",
        postImageName: "Reforestación",
        description: "Participamos en una jornada de reforestación en las zonas afectadas por el incendio del año pasado. Cada árbol plantado es un paso más hacia la recuperación del ecosistema."

     ) ,
    Post(
        name: "Lucía",
        username: "lucia_ecologista",
        userProfileImage:"Lucia",
        postImageName: "limpieza_parque",
        description: "Realizamos una jornada de limpieza en el parque local. Un pequeño esfuerzo puede transformar un espacio y hacerlo más accesible para todos."


     ) ,
    Post(
        name: "Marcos",
        username: "marcos_talleres",
        userProfileImage:"Marcos",
        postImageName: "Taller_educativo",
        description: "Hoy compartimos un taller educativo con los niños de. Es un placer ver cómo aprenden y se divierten al mismo tiempo."
        
    ) ,
   Post(
       name: "José",
       username: "jose_voluntario",
       userProfileImage:"Jose",
       postImageName: "Comedor_social",
       description: "Hoy tuve la oportunidad de servir comida en el comedor comunitario. Cada plato que compartimos es un paso hacia un futuro mejor para todos."


    ) ,
   Post(
       name: "Carla",
       username: "carla_ayuda",
       userProfileImage:"Carla",
       postImageName: "ropa_donada",
       description: "Gracias a todos los que participaron en nuestra recolecta de ropa. Este invierno, muchas personas podrán abrigarse gracias a su generosidad."


    )

    ]
