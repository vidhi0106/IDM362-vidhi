import SwiftUI

struct ContentView: View {
    // State property to hold the selected mood
    @State private var selectedMood: String?

    let moods = [
        ("sparkly", "Sparkly", Color(red: 1.0, green: 0.7137254901960784, blue: 0.592156862745098)),
        ("sunny", "Sunny", Color(red: 1.0, green: 0.8117647058823529, blue: 0.592156862745098)),
        ("pleasant", "Pleasant", Color(red: 1.0, green: 0.9176470588235294, blue: 0.7019607843137254)),
        ("cloudy", "Cloudy", Color(red: 0.8352941176470589, green: 0.9411764705882353, blue: 1.0)),
        ("rainy", "Rainy", Color(red: 0.9333333333333333, green: 0.8235294117647058, blue: 1.0)),
        ("stormy", "Stormy", Color(red: 1.0, green: 0.7372549019607844, blue: 0.9098039215686274))
    ]
     

    var body: some View {
        
        HStack{
//            Image("backfinal")
//                .resizable(capInsets: EdgeInsets(top: 0.0, leading: 0.0, bottom: 0.0, trailing: 0.0))
//                .foregroundColor(Color.primary)
//                .frame(width: 60.0, height: 60.0)
            //Spacer()
            Text("MoodCloud")
                .frame(maxWidth:.infinity)
                .multilineTextAlignment(.center)
            Spacer()
            
        
        }
        .padding()
        
        
        VStack {
            
            Text("Pick the cloud that matches your mood!")
                .font(.title3)
                .fontWeight(.semibold)
                .multilineTextAlignment(.leading)
                .padding(20)
            
            
            

            // Create the grid of buttons
            LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 20) {
                ForEach(moods, id: \.1) { mood in
                    Button(action: {
                        // Update the selected mood
                        selectedMood = mood.1
                    }) {
                        ZStack {
                            // Background rectangle for the button
                            RoundedRectangle(cornerRadius: 12)
                                .fill(mood.2) // Use the background color from the mood tuple
                                .frame(width: 160, height: 90) // Adjust size as needed
                            
                            VStack(spacing: -30) {
                                // Mood illustration
                                Image(mood.0) // Use the image name from the mood tuple
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 120, height: 90) // Adjust size as needed
                                    .offset(y: -40)
                                    .padding(.bottom, 4)
                                
                                    .zIndex(1) // Ensure it appears on top

                                // Mood text
                                Text(mood.1) // Use the mood text from the tuple
                                    .font(.headline)
                                    .foregroundColor(.black)
                                    .padding(.top, -10)
                                    .padding(.bottom, 4)
                                    .zIndex(0) // Ensure text stays behind the image
                            }
                            .padding(20)
                        }
                    }
                }
            }
            .padding()
            
//            if let mood = selectedMood {
//                Text("\(mood) mood selected!")
//                    .font(.headline)
//                    .padding()
//            }
            Spacer()
        }
        
    }
}


#Preview {
    ContentView()
}

