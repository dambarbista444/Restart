//
//  HomeView.swift
//  Restart
//
//  Created by Dambar Bista on 2/5/22.
//
//Circle()
//    .stroke(.white.opacity(0.2), lineWidth: 40)
//    .frame(width: 260, height: 260, alignment: .center)
//Circle()
//    .stroke(.white.opacity(0.2), lineWidth: 80)
//    .frame(width: 260, height: 260, alignment: .center)
import SwiftUI

struct HomeView: View {
    @AppStorage("onboarding") var isOnboardingViewActive = false
    
    var body: some View {
        VStack(spacing: 20) {
            // Header
            Spacer()
            ZStack {
                CircleGroupView(ShapeColor: .gray, ShapeOpacity: 0.1)
                Image("character-2")
                    .resizable()
                    .scaledToFit()
                .padding()
            }
            //: ZStack
            
            // Body
            Text("The Time that leads to mastery is dependent on the intenstiy of our focus.")
                .font(.title3)
                .fontWeight(.light)
                .foregroundColor(.secondary)
                .multilineTextAlignment(.center)
                .padding()
            
            Spacer()
        
            // Footer
            Button {
                isOnboardingViewActive = true
            } label: {
                Image(systemName: "arrow.triangle.2.circlepath.circle.fill")
                    .imageScale(.large)
                Text("Restart")
            }
            .buttonStyle(.borderedProminent)
            .buttonBorderShape(.capsule)
            .controlSize(.large)
        }//: VStack
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
