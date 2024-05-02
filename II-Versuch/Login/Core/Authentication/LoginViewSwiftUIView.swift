import SwiftUI

struct LoginViewSwiftUIView: View {
    @State private var email = ""
    @State private var passwort = ""
    @EnvironmentObject var authViewModel: AuthViewModel

    let correctEmail = "T"
    let correctPasswort = "2"

    var body: some View {
        NavigationStack {
            VStack {
                Image("N26Icon")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 100, height: 120)
                    .padding(.vertical, 32)
                
                VStack(spacing: 24) {
                    InputView(text: $email,
                              title: "Email Adresse",
                              placeholder: "name@beispiel.com")
                    
                    InputView(text: $passwort,
                              title: "Passwort",
                              placeholder: "Gebe dein Passwort ein",
                              isSecureField: true)
                }
                //.padding(.horizontal)
                .padding(.top, 12)
                
                Button {
                    handleLogin()
                } label: {
                    HStack {
                        Text("Anmelden")
                            .fontWeight(.semibold)
                        Image(systemName: "arrow.right")
                    }
                    .foregroundColor(.white)
                    .frame(width: UIScreen.main.bounds.width - 32, height: 48)
                }
                .background(Color(.systemBlue))
                .cornerRadius(10)
                .padding(.top, 24)
                
                Spacer()
            }
            .navigationDestination(isPresented: $authViewModel.isUserLoggedIn) { // Corrected
                ContentView()
                    .navigationBarBackButtonHidden(true)
                    .navigationBarHidden(true)
            }
        }
    }

    func handleLogin() {
        if email == correctEmail && passwort == correctPasswort {
            authViewModel.isUserLoggedIn = true  // Corrected access
        }
    }
}

 
#Preview {
    LoginViewSwiftUIView()
        .environmentObject(AuthViewModel())
}


