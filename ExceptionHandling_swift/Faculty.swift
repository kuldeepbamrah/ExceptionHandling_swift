//
//  Faculty.swift
//  ExceptionHandling_swift
//
//  Created by MacStudent on 2019-10-21.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation

enum FacultyError : Error
{
    case invalidSalary(facultySalary : Double)
    case invalidEmployeeId(employeeId : Int)
    case invalidEmployeeName(employeeName : String)
}

class Faculty
{
    var facultyId : Int
    var facultyName : String
    var salary : Double
    
    
    init(facultyId : Int, falcultyName : String,salary : Double) throws {
        if facultyId <= 0
        {
            throw FacultyError.invalidEmployeeId(employeeId: facultyId)
        }
        self.facultyId = facultyId
        if falcultyName.count < 10
        {
            throw FacultyError.invalidEmployeeName(employeeName: falcultyName)
        }
        self.facultyName = falcultyName
        if salary < 1000
        {
            throw FacultyError.invalidSalary(facultySalary : salary)
        }
        self.salary = salary
    }
    
}
