//
//  ImageMissionView.swift
//  Moonshot
//
//  Created by Andrii Kyrychenko on 06/08/2022.
//

import SwiftUI

struct ImageMissionView: View {
    
    var nameImage: String
    
    var body: some View {
        Image(nameImage)
            .resizable()
            .scaledToFit()
    }
}

struct ImageMissionView_Previews: PreviewProvider {
    static var previews: some View {
        ImageMissionView(nameImage: "")
    }
}
