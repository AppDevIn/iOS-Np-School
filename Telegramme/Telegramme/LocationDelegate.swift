//
//  LocationDelegate.swift
//  Telegramme
//
//  Created by Jeya Vishnu on 8/1/21.
//

import Foundation
import CoreLocation

class LocationDelegate : NSObject, CLLocationManagerDelegate
{
    var locationCallback: ((CLLocation) -> ())? = nil
    
    func locationManager(_ manager:CLLocationManager, didUpdateLocations locations: [CLLocation])
    {
        guard let currentLocation = locations.last else { return }
        locationCallback?(currentLocation)
        
    }
}
