//
//  NewToDoView.swift
//  ToDoList_Help
//
//  Created by scholar on 6/19/23.
//

//** This file contains all the code for the "popup" screen where users can add their own ToDo Item**

import SwiftUI

struct NewToDoView: View {
    
    //In Iteration 2, add @Environment here
    
    
    //Add a State property called title that will hold a String
    @State var title: String
   
    //Add a State property called isImportant that will hold a Boolean
    @State var isImportant: Bool
    //Bind the ToDoItems array here
        //Delete the ToDoItems array binding in iteration 2
    
    //Bind the showNewTask property here
    
    var body: some View {
        VStack {
            //Add Text View containing "Task title" here
            Text("Task Title")
                .font(.system(size: 30))
                .fontWeight(.bold)
                .foregroundColor(Color(hue: 1.0, saturation: 0.886, brightness: 0.573))
            
            
            //Add TextField here with the Text "Enter task description" and binded to the title state property (text: $title)
            TextField("Enter task desription...", text: $title)
                .frame(width: 350.0, height: /*@START_MENU_TOKEN@*/50.0/*@END_MENU_TOKEN@*/)
                .border(Color.gray)
                .padding()
               
            
            //Add Toggle here that is binded to isImportant (isOn: $isImportant) and the text "Is it important?"
            
            Toggle(isOn: $isImportant) {
                Text("Is it important?")
            }
            .padding()
            //Add a padding modifier
            
            //Add Button here, delete any code in the action and with the text "Add"
            Button(action: {
              
            }) {
                Text("Add")
                    .fontWeight(.bold)
                    .border(Color.gray)
                
                
            }
            
            //Add a padding modifier
            .padding()
            .frame(width: /*@START_MENU_TOKEN@*/200.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/50.0/*@END_MENU_TOKEN@*/)
            .background(Color.red)
            .foregroundColor(.white)
            .cornerRadius(15)
        }
    }
    //Add the private function addTask here
        //In Iteration 2, update the function to save input to Core Data
}

struct NewToDoView_Previews:
    PreviewProvider {
    static var previews: some View {
        NewToDoView(title: "", isImportant: false)
            //Add toDoItems: .constant([]) here (Iteration 1)
            //Add showNewTask: .constant(true) (Iteration 1)
            //Delete toDoItems: .constant([]) (Iteration 2_
    }
}
