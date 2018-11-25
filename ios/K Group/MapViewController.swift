//
//  MapViewController.swift
//  K Group
//
//  Created by Yaroslav on 11/24/18.
//  Copyright © 2018 Mountain Viewer. All rights reserved.
//

import UIKit
import MapKit

struct Shop {
    var latitude: Double
    var longitude: Double
    var title: String
    var address: String
    var opens: String
    var closes: String
    
    init(_ latitude: Double,
         _ longitude: Double,
         _ title: String,
         _ address: String,
         _ opens: String,
         _ closes: String) {
        self.latitude = latitude
        self.longitude = longitude
        self.title = title
        self.address = address
        self.opens = opens
        self.closes = closes
    }
}

class MapViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpShops()
    }
    
    func setUpShops() {
        let shops = [
            Shop(60.186152, 24.824001, "K-Market Otaniemi", "Otaniementie 12", "10:00", "21:00"),
            Shop(60.180428000000006, 24.6785064, "K-Supermarket Malminmäki", "Malminkorpi 2", "09:00", "22:00"),
            Shop(60.333779299999996, 24.3191819, "K-Supermarket Nummela", "Keskikuja 3", "10:00", "20:00"),
            Shop(60.268841099999996, 24.443631699999997, "K-Supermarket Veikkola", "Koskentie 6", "10:00", "21:00"),
            Shop(60.205540299999996, 24.655344699999997, "K-Market Espoon keskus", "Virastopiha 1", "10:00", "22:00"),
            Shop(60.154235, 24.545219, "K-Market Kartanonranta", "Kartanontie 2", "10:00", "21:00"),
            Shop(60.216828500000005, 24.7815109, "K-Market Kilo", "Kilonpuistonkatu 14", "10:00", "21:00"),
            Shop(60.155694999999994, 24.63064, "K-Market Kivenlahdenkatu", "Kivenlahdenkatu 1", "10:00", "22:00"),
            Shop(60.29548670000001, 24.2072466, "K-Market Lohjanportti", "Seisaketie 1", "11:00", "21:00"),
            Shop(60.153827, 24.742225, "K-Market Matinkylä", "Leenankuja 4", "09:00", "23:00"),
            Shop(60.168071, 24.662343, "K-Market Nöykkiö", "Oxfotintie 1", "09:00", "22:00"),
            Shop(60.191458999999995, 23.998571, "K-Market Tietolantie", "Tietolantie 1", "09:00", "22:00"),
            Shop(60.123206, 24.469314999999998, "K-Market Tolsa", "Tolsantie 16", "10:00", "21:00"),
            Shop(60.16182220000001, 24.737745, "K-Citymarket Espoo Iso Omena", "Piispansilta 11", "10:00", "22:00"),
            Shop(60.22789960000001, 24.0255501, "K-Citymarket Lohja", "Ojamonharjuntie 61", "10:00", "21:00"),
            Shop(60.332369799999995, 24.3288737, "K-Citymarket Vihti Nummela", "Tuusankaari 1", "10:00", "21:00"),
            Shop(60.240537100000005, 24.700504199999997, "K-Supermarket Aurora", "Kylänportti 16", "10:00", "21:00"),
            Shop(59.979525300000006, 23.449151899999997, "K-Supermarket Ekenäs", "Rautatienkatu 19", "10:00", "18:00"),
            Shop(60.16300570000001, 24.7076376, "K-Supermarket Merituuli", "Finnoonlaaksontie 9", "10:00", "20:00"),
            Shop(60.14216120000001, 24.6698025, "K-Supermarket Soukka", "Soukantie 16", "10:00", "18:00"),
            Shop(60.185753000000005, 24.746922, "K-Supermarket Suurpelto", "Kynäkatu 6", "10:00", "22:00"),
            Shop(60.210277000000005, 24.729001999999998, "K-Supermarket Grani", "Kauniaistentie 7", "09:00", "21:00"),
            Shop(60.131145, 23.543631, "K-Market Fiskars", "Fiskarsintie 34", "11:00", "20:00"),
            Shop(60.160827000000005, 24.739638, "K-Market Iso Omena", "Suomenlahdentie 1", "10:00", "22:00"),
            Shop(60.193284999999996, 24.599887, "K-Market Kauklahti", "Klippinkitie 9", "10:00", "22:00"),
            Shop(60.211765, 24.768157000000002, "K-Market Lansa", "Lansantie 23", "09:00", "23:00"),
            Shop(60.341924, 24.323506, "K-Market Nummela", "Ojakkalantie 1", "09:00", "21:00"),
            Shop(60.20026360000001, 24.6699048, "K-Market Suvela", "Sokinsuontie 4", "09:00", "21:00"),
            Shop(60.247461, 24.096167, "K-Market Veijolantie", "Veijolantie 7", "10:00", "19:00"),
            Shop(60.070693500000004, 23.663092600000002, "K-Supermarket Karis-Karjaa", "Ratakatu 59", "11:00", "19:00"),
            Shop(59.978524, 23.463893, "K-Supermarket Popsi", "Raaseporintie 14", "12:00", "18:00"),
            Shop(60.1484712, 24.657302800000004, "K-Supermarket Seilori", "Ulappakatu 2", "11:00", "19:00"),
            Shop(60.15447370000001, 24.634674800000003, "K-Market Kivenlahti", "Merivalkama 2", "09:00", "22:00"),
            Shop(60.176539, 24.655556, "K-Market Latokaski", "Kaskipiha 1", "09:00", "21:00"),
            Shop(60.2496, 24.063297, "K-Market Laurinkatu", "Laurinkatu 47", "09:00", "22:00"),
            Shop(60.243765, 24.080842999999998, "K-Market Puistokatu Lohja", "Puistokatu 23", "09:00", "22:00"),
            Shop(60.2290377, 24.7149639, "K-Market Ravioli", "Lippajärventie 29-31", "11:00", "21:00"),
            Shop(60.162992599999995, 24.7530053, "Neste K Matinkylä", "Gräsanlaakso 2", "09:00", "23:00"),
            Shop(60.2394968, 24.7408649, "K-Supermarket Lähderanta", "Lähderannantie 22", "10:00", "22:00"),
            Shop(60.17094399999999, 24.763773, "K-Supermarket Ruokaniitty", "Merituulentie 36", "10:00", "21:00"),
            Shop(60.1490534, 24.6915301, "K-Market Iivisniemi", "Iivisniemenkatu 3", "10:00", "22:00"),
            Shop(60.3803427, 23.9577645, "K-Market Landen", "Kauppakuja 1", "10:00", "18:00"),
            Shop(60.1578162, 24.535431699999997, "K-Market Masala", "Tinankuja 1", "10:00", "20:00"),
            Shop(60.13901, 23.868948, "K-Market Mustio", "Askersintie 44", "10:00", "20:00"),
            Shop(60.368891000000005, 24.392495, "K-Market Ojakkala", "Enätie 24", "09:00", "21:00"),
            Shop(60.1525428, 24.6630313, "Neste K Kivenlahdentie", "Kivenlahdentie 5", "09:00", "23:00"),
            Shop(60.1703918, 24.7475782, "Neste K Olari", "Uuskartanontie 2", "09:00", "23:00"),
            Shop(60.1616206, 24.700795, "Neste K Suomenoja", "Martinsillantie 2 B", "08:00", "00:00"),
            Shop(60.226381599999996, 24.7423999, "Neste K Viherlaakso", "Rajamännynahde 1", "09:00", "23:00"),
            Shop(60.12014010000001, 24.4437984, "K-Citymarket Kirkkonummi", "Asemankulma 2", "10:00", "21:00"),
            Shop(60.203824, 24.6568388, "K-Supermarket Kulinaari", "Kamreerintie 3", "10:00", "20:00"),
            Shop(60.272230799999996, 24.1212488, "K-Supermarket Lempola", "LEHMIJÄRVENTIE 2", "10:00", "21:00"),
            Shop(60.2042679, 24.7679401, "K-Supermarket Mankkaa", "Sinikalliontie 1", "10:00", "21:00"),
            Shop(60.175852600000006, 24.8050676, "K-Supermarket Tapiola", "Tapionaukio 4 (Postitusosoite: Länsituulentie 12)", "10:00", "21:00"),
            Shop(60.4175877, 24.3247551, "K-Supermarket Vihti", "Kirjavantie 2", "10:00", "21:00"),
            Shop(60.200738, 24.705451, "K-Market Kuurinniitty", "Kuurinmäki 1", "10:00", "21:00"),
            Shop(60.18288489999999, 24.7944784, "K-Market Pohjantähti", "Louhentie 2", "10:00", "21:00"),
            Shop(60.162174300000004, 24.786026100000004, "K-Market Sorsakivi", "Toppelundinportti 3", "10:00", "21:00"),
            Shop(60.274602, 24.421947, "K-Market Veikkola", "Turuntie 563", "09:00", "22:00")
            ]
        
        for shop in shops {
            setUpShop(shop)
        }
    }

    func setUpShop(_ shop: Shop) {
        let annotation = MKPointAnnotation()
        annotation.coordinate = CLLocationCoordinate2D(latitude: shop.latitude, longitude: shop.longitude)
        annotation.title = shop.title
        annotation.subtitle = "Address: \(shop.address)\nOpens: \(shop.opens)\nCloses: \(shop.closes)"
        mapView.addAnnotation(annotation)
    }
}
