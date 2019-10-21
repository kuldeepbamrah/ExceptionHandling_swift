//
//  main.swift
//  ExceptionHandling_swift
//
//  Created by MacStudent on 2019-10-21.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation
do{
    var f =  try Faculty(facultyId: 001, falcultyName: "Kuldeepppp", salary: 10000)
    print("Object created")
   //try f.setSalary(salary: 900)
    try f.setFacultyName(facultyName: "Kuldeep")
    
}catch(FacultyError.invalidEmployeeName( let fname))
{
    print("Faculty Name : \(fname) is Invalid" )
}catch(FacultyError.invalidEmployeeId(let fid))
{
    print("Faculty Id  \(fid) is invalid. Make sure it is grester than 0")
}catch(FacultyError.invalidSalary(let fsalary))
{
    print("Salary assigned for the faculty is ; \(fsalary), make sure it is more than 1000")
}
catch(FacultyError.invalidSalarywithmessage(let message))
{
    print(message)
}
