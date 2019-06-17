//
//  SettingsView.swift
//  TandemTest
//
//  Created by Jacob Pashman on 6/17/19.
//  Copyright © 2019 jacobpashman. All rights reserved.
//

import SwiftUI

struct SettingsView : View {
	@State var firstName: String = ""
	@State var gender = 0
	@State var distance: String = ""
    var body: some View {
		VStack {
			HStack {
				TextField($firstName, placeholder: Text("First Name"))
					.textFieldStyle(.roundedBorder)
					.padding()
				TextField($firstName, placeholder: Text("Last Name"))
					.textFieldStyle(.roundedBorder)
					.padding()
			}
			HStack {
				Text("Gender:")
				SegmentedControl(selection: $gender) {
					Text("Male").tag(0)
					Text("Female").tag(1)
					Text("Other").tag(2)
				}

			}
			.padding()
			TextField($firstName, placeholder: Text("Birthday"))
				.textFieldStyle(.roundedBorder)
				.padding()
			HStack {
				TextField($firstName, placeholder: Text("City"))
					.textFieldStyle(.roundedBorder)
					.padding()
				TextField($firstName, placeholder: Text("State"))
					.textFieldStyle(.roundedBorder)
					.padding()
			}
			HStack {
				Text("Discipline:")
				SegmentedControl(selection: $gender) {
					Text("Mountain").tag(0)
					Text("Road").tag(1)
				}
				}
				.padding()
			VStack {
				Text("Experience:")
				SegmentedControl(selection: $gender) {
					Text("<6 months").tag(0)
					Text("1-2 years").tag(1)
					Text("3-4 years").tag(2)
					Text(">5 years").tag(3)
				}
			}
			.padding()
			VStack {
				Text("Rides per week:")
				SegmentedControl(selection: $gender) {
					Text("<1").tag(0)
					Text("1-2").tag(1)
					Text("3-4").tag(2)
					Text("5+").tag(3)
				}
			}
			.padding()
			
			
		}
    }
}

#if DEBUG
struct SettingsView_Previews : PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
#endif
