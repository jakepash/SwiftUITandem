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
			TabbedView {
				ExtractedView()
					.tabItemLabel(
						Text("Home")
					).tag(0)
				SettingsView()
					.tabItemLabel(
						Text("Other")
					).tag(1)
			}
			
			
			
    	}
		//.navigationBarTitle(Text("Tandem"), displayMode: .inline)
		
	}
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
	static var previews: some View {
		Group {
			ContentView()
				.previewDevice(PreviewDevice(rawValue: "iPhone XS Max"))
				.previewDisplayName("iPhone XS Max")
			ContentView()
				.previewDevice(PreviewDevice(rawValue: "iPhone SE"))
				.previewDisplayName("iPhone SE")
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

struct ExtractedView : View {
	let chatImage = Image("chats").resizable()
		.frame(width: 50, height: 33)
    var body: some View {
        return VStack {
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
							
                                //buttons
                                HStack {
                                    extractedButtons(name: "chatButton")
                                    extractedButtons(name: "stravaButton")
                                }
                                .padding(.bottom, 100.0)
                        }
			
                    }
                    .navigationBarTitle(Text("Tandem"), displayMode: .inline)
                    //			NavigationButton(destination: SettingsView(), label: { Text("Settings")})
                    //			.padding(.bottom, 100)
                        .navigationBarItems(
                            leading: NavigationButton(destination: SettingsView()) {
                                Text("Settings")
                                },
                                trailing: Button(action: {}, label: { chatImage }))
                            }
                        }
