//
//  BriefDescriptionView.swift
//  Moonshot
//
//  Created by Andrii Kyrychenko on 06/08/2022.
//

import SwiftUI

struct BriefDescriptionView: View {
    
    let displayName: String
    let formattedLaunchDate: String
    
    var body: some View {
        VStack {
            Text(displayName)
                .font(.headline)
                .foregroundColor(.white)

            Text(formattedLaunchDate)
                .font(.caption)
                .foregroundColor(.white.opacity(0.5))
        }
        .padding(.vertical)
        .frame(maxWidth: .infinity)
        .background(.lightBackground)
    }
}

struct BriefDescriptionView_Previews: PreviewProvider {
    static var previews: some View {
        BriefDescriptionView(displayName: "", formattedLaunchDate: "")
    }
}
