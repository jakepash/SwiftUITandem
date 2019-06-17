//
//  ContentView.swift
//  TandemTest
//
//  Created by Jacob Pashman on 6/16/19.
//  Copyright © 2019 jacobpashman. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    var body: some View {
		NavigationView {
			VStack {
				ZStack {
					Image("background").resizable()
						.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: Alignment.topLeading)
						.scaledToFill()
					Image("arrows").resizable()
						.frame(minWidth: 0, maxWidth: 300, minHeight: 0, maxHeight: 200, alignment: Alignment.topLeading)
					Image("mtb sample")
						.cornerRadius(20)
				}

				VStack {
					//name and location
					VStack {
						Text("Jacob Pashman")
							.bold()
						Text(" Mill Valley, CA")
					}
					.padding()
					//stats
					VStack {
						Text("Rides 3-5 days a week")
						Text("Rides 50-70 miles a week")
						Text("Has been riding for 3-4 years")
					}
					.padding()
					//buttons
					HStack {
						extractedButtons(name: "chatButton")
						extractedButtons(name: "stravaButton")
					}
					.padding(.bottom)
				}
			}
			.navigationBarTitle(Text("Landmarks"))
    	}
	}
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
	static var previews: some View {
		Group {
			ContentView()
				.previewDevice(PreviewDevice(rawValue: "iPhone XS Max"))
				.previewDisplayName("iPhone XS Max")
		}
	}
}
#endif

struct extractedButtons : View {
	var name: String
	
    var body: some View {
        return Image(name).resizable()
            .frame(minWidth: 0, maxWidth: 100, minHeight: 0, maxHeight: 66, alignment: Alignment.topLeading)
		
    }
}
