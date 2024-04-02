//
//  DetailEditView.swift
//  Scrumdinger
//
//  Created by Nova on 4/2/24.
//

import SwiftUI

struct DetailEditView: View {
    @State private var scrum = DailyScrum.emptyScrum
    
    var body: some View {
        Form {
            Section {
                TextField("Title", text: $scrum.title)
                
                HStack {
                    Slider(value: $scrum.lengthInMinutesAsDouble, in: 5...30, step: 1) {
                        Text("Length")
                    }
                    
                    Spacer()
                    
                    Text("\(scrum.lengthInMinutes) minutes")
                }
            } header: {
                Text("Meeting Info")
            }

        }
    }
}

#Preview {
    DetailEditView()
}
