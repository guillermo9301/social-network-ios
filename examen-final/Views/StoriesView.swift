//
//  StoriesView.swift
//  examen-final
//
//  Created by Guillermo on 14/12/23.
//

import SwiftUI
//para llamar las imagenes de manera asincrona se uso la libreria URLImage
//ya que el desarrollo se hizo en xCode 12.5, el cual no trae el componente
//AsycImage de manera nativa
import URLImage

struct StoriesView: View {
    @Binding var user: UserData
    
    var body: some View {
        VStack {
            URLImage(URL(string: user.userPhoto)!) { image in
                image.storyThumbnail()
            }
            Text("\(user.name) \(user.lastname)").storyUserName()
        }
    }
}

/*struct StoriesView_Previews: PreviewProvider {
    static var previews: some View {
        StoriesView()
    }
}*/
