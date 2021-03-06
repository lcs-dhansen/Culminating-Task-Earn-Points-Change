//
//  Task.swift
//  Reminders Deovn (iOS)
//
//  Created by Devon Hansen on 2021-03-18.
//

import Foundation

class Task: Identifiable, ObservableObject {
   
    var id = UUID()
    var goalName: String
    var description: String
    var priority: TaskPriority
    var goalValue: GoalValue
    
    @Published var completed: Bool
    @Published var deleted: Bool
    
    internal init(id: UUID = UUID(), goalName: String, description: String, goalValue: GoalValue, priority: TaskPriority, completed: Bool, deleted: Bool) {
        self.id = id
        self.goalName = goalName
        self.description = description
        self.goalValue = goalValue
        self.priority = priority
        self.completed = completed
        self.deleted = deleted
    }
}

let testData = [
    Task(goalName: "Homework", description: "Do homwork", goalValue: .three, priority: .high, completed: true, deleted: false),
    Task(goalName: "First Aid", description: "Finish First Aid", goalValue: .four, priority: .medium, completed: true, deleted: false),
    Task(goalName: "WO", description: "Workout", goalValue: .one, priority: .low, completed: false, deleted: false),
]
