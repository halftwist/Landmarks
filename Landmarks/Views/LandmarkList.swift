//
//  LandmarkList.swift
//  Landmarks
//
//  Created by John Kearon on 4/16/25.
//

//  Lists work with identifiable data. You can make your data identifiable in one of two ways: by passing along with your data a key path to a property that uniquely identifies each element, or by making your data type conform to the Identifiable protocol.
//  The navigation split view takes a second input that’s a placeholder for the view that appears after someone makes a selection. On iPhone, the split view doesn’t need the placeholder, but on iPad the detail pane can be present before someone makes a selection, as you’ll see later in this tutorial.

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        
        NavigationSplitView {

            List(landmarks) { landmark in  // landmark is Identifiable
                NavigationLink {
//  wrap the returned row in a NavigationLink, specifying the LandmarkDetail view as the destination.
                    LandmarkDetail(landmark: landmark)
                } label: {
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationTitle("Landmarks")
            
        } detail: {
            Text("Select a Landmark")
        }
        
    }
}

#Preview {
    LandmarkList()
}
