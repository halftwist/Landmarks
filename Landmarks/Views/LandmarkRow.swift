//
//  LandmarkRow.swift
//  Landmarks
//
//  Created by John Kearon on 4/15/25.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark
    
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
             Text(landmark.name)
            Spacer()
        }
    }
}

//  Xcode automatically recognizes any previews that you declare with a preview macro in a view’s source file.
// The canvas displays only one preview at a time, but you can define multiple previews and choose among them in the canvas. Alternatively, you can group views together to create a single preview of more than one version of a view.
//  Adding previews enables you to see how your views behave with different data.
//  The preview macro takes an optional name parameter that you can use to label a preview.
//  When you want to preview different versions of a view side by side, you can instead group them together in a single collection view.

#Preview {
    Group {
        LandmarkRow(landmark: landmarks[0])
        LandmarkRow(landmark: landmarks[1])
    }
}

//#Preview("Salmon") {
//    LandmarkRow(landmark: landmarks[1])
//}

