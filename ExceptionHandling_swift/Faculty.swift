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
    case invalidSalarywithmessage(messaege : String)
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
    
    
    func setSalary(salary : Double) throws
    {
        if salary < 1000
        {
            //throw FacultyError.invalidSalary(facultySalary: salary)
            throw FacultyError.invalidSalarywithmessage(messaege : "Invalid Salary Input : \(salary)")
        }
    }
    
    func setFacultyName(facultyName : String)
    {
        do {
            if facultyName.count  < 10
            {
                throw FacultyError.invalidEmployeeName(employeeName: facultyName)
            }
            self.facultyName = facultyName
            print("name changed")
        }catch FacultyError.invalidEmployeeName(let facultyName){
            print("Name should be greater than 10 charachter")
        }catch
        {
            print(error.localizedDescription)
        }
        
        
        
    }
}
