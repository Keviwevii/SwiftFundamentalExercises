//
//  ReservationForm.swift
//  Reservation
//
//  Created by Kevin Floyd on 4/17/23.
//

import SwiftUI

struct ReservationForm: View {
    @State var customerName: String = ""
    var body: some View {
        Form {
            TextField("Type Your Name", text: $customerName,onEditingChanged: { status in print(status)})
                .onChange(of: customerName, perform: { newValue in print(newValue)})
                .onSubmit({
                    print("submitted")
                })
        }
        .padding()
    }
}

struct ReservationForm_Previews: PreviewProvider {
    static var previews: some View {
        ReservationForm()
    }
}
