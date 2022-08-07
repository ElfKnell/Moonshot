//
//  TextView.swift
//  Moonshot
//
//  Created by Andrii Kyrychenko on 06/08/2022.
//

import SwiftUI

struct TextView: View {
    
    let title: String
    
    var body: some View {
        Text(title)
            .font(.title.bold())
            .padding(.bottom, 5)
    }
}

struct TextView_Previews: PreviewProvider {
    static var previews: some View {
        TextView(title: "Mission Highlights")
    }
}
