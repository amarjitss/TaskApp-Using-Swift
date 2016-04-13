//
//  TaskManager.swift
//  Simple Task App
//
//  Created by amarjit singh on 4/12/16.
//  Copyright © 2016 amarjit singh. All rights reserved.
//

import UIKit

var taskMgr: TaskManager = TaskManager()

struct task{
    var name = "un-named"
    var desc = "un-described"
}

class TaskManager: NSObject {
    
    var tasks = [task]()
    
    func addTask(name: String, description: String)
    {
        tasks.append(task (name: name, desc: description))
    }

}
