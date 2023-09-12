//
//  ContentView.swift
//  JobAll
//
//  Created by DARYL AGUSTIN on 9/12/23.
//

import SwiftUI
import CoreData

struct ContentView: View {
    @State var title: String = ""
    @State var date: String = ""
    @State var status: String = ""
    
    @Environment(\.managedObjectContext) private var viewContext
    
    @FetchRequest(entity: Job.entity(), sortDescriptors: [])
    
    private var jobs: FetchedResults<Job>
    
    
    var body: some View {
        NavigationView {
            VStack {
                TextField("Job title", text: $title)
                TextField("Date applied", text: $date)
                TextField("Application status", text: $status)
                
                HStack {
                    Spacer()
                    Button("Add") {
                        
                    }
                    Spacer()
                    Button("Clear") {
                        title = ""
                        date = ""
                        status = ""
                        
                    }
                    Spacer()
                }
                .padding()
                .frame(maxWidth: .infinity)
                
                List {
                    ForEach(jobs) { job in
                        HStack {
                            Text(job.title ?? "Not found")
                            Spacer()
                            Text(job.date ?? "Not found")
                            Spacer()
                            Text(job.status ?? "Not found")
                        }
                    }
                }
                .navigationTitle("Job Applications")
            }
            .padding()
            .textFieldStyle(RoundedBorderTextFieldStyle())
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
