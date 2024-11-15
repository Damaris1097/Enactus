//
//  UserLinkedInData.swift
//  NUUP_Challenge
//
//  Created by Damaris Cortés on 04/11/24.
//

import Foundation


var userDataCurrent: UserLinkedInResponse = UserLinkedInResponse (
    id: UUID(),
    fullname: "Sara Gutirrez",
    type: 1,
    profileImage: "Yo",
    imageCover: "https://images.pexels.com/photos/256381/pexels-photo-256381.jpeg?auto=compress&cs=tinysrgb&w=600",
    headLineBio: "Astrophysicist and Engineer | Exploring the stars",
    companyName: "Deep Space Research Center",
    companyLocation: "Colorado Springs, CO",
    gender: "Female",
    totalFollowers: 34000
)
var userLinkedInData: [UserLinkedInResponse] = [
    UserLinkedInResponse (
        id: UUID(),
        fullname: "Carla Vargas",
        type: 2,
        profileImage: "Carla",
        imageCover: "https://images.pexels.com/photos/4974914/pexels-photo-4974914.jpeg?auto=compress&cs=tinysrgb&w=600",
        headLineBio: "Freelance UI/UX Designer",
        companyName: "Designs by Bob",
        companyLocation: "New York, NY",
        gender:"Male",
        totalFollowers: 980
        ),
    UserLinkedInResponse (
        id: UUID(),
        fullname: "José Lopéz ",
        type: 2,
        profileImage: "Jose",
        imageCover:"https://www.pexels.com/photo/guanajuato-cityscape-in-mexico-17146786/",
        headLineBio: "App Developer",
        companyName: "AppForge Studio",
        companyLocation: "León, Guanajuato",
        gender: "Female",
        totalFollowers: 2200
    ),
    UserLinkedInResponse (
    id: UUID(),
        fullname: "Marcos Gómez",
        type: 2,
        profileImage:
          "Marcos",
        imageCover:
         "https://www.pexels.com/es-es/foto/gente-cerca-de-la-bandera-mexicana-1573471/",
        headLineBio: "Desarrollador Web Full Stack", companyName: "Soluciones Web MX",
        companyLocation: "Ciudad de México, CDMX",
        gender: "Male",
        totalFollowers: 1320
    ),

    UserLinkedInResponse (
         id: UUID(),
        fullname: "Lucía Rivera",
        type: 1,
        profileImage: "Lucia",
        imageCover:
         "https://www.pexels.com/es-es/foto/mexicano-iglesia-cruzar-cruz-12028960/",
        headLineBio: "Consultora en Diseño de Experiencia de Usuario (UX)",
        companyName: "UX Studio",
        companyLocation: "Mérida, Yucatán",
        gender: "Female",
        totalFollowers: 2200
    ),
    UserLinkedInResponse (
    id: UUID(),
    fullname: "Sara Gutirrez",
    type: 1,
    profileImage: "Sara",
    imageCover: "https://images.pexels.com/photos/256381/pexels-photo-256381.jpeg?auto=compress&cs=tinysrgb&w=600",
    headLineBio: "Astrophysicist and Engineer | Exploring the stars",
    companyName: "Deep Space Research Center",
    companyLocation: "Colorado Springs, CO",
    gender: "Female",
    totalFollowers: 34000
    )
    ]
