//
//  LogUtil.swift
//  Created by Michael L on 2017. 6. 9..
//  Copyright © 2017년. All rights reserved.
//

import Foundation

extension LogUtil{
    
    class func todoLog(_ msg: String)
    {
        print("☠️☠️☠️TODO ==============☠️☠️☠️\n\(msg)");
    }
    
    class func todoLog(_ msg: String,_ file: String = #file,_ functionName: String = #function,_ line: Int = #line)
    {
        print("☠️☠️☠️TODO ==============☠️☠️☠️\n\(file):\(functionName):\(line)\n\(msg))");
    }
    
    class func w(_ msg: String)
    {
        print("😡😡😡😡😡 warn : \(msg)")
    }

    
    class func d(_ msg: String)
    {
        print("🤜🏻🤜🏻🤜🏻 : \(msg)")
    }

    class func detail(_ format: String, _ arguments: CVarArg...) {
        print("😡😡😡😡😡 warn : \(logString(format: format, arguments))")
    }

    static func logString(format: String, _ arguments: CVarArg...) -> String {
        let fmt = DateFormatter()
        fmt.dateFormat = "yyyy-MM-dd HH:mm:ss.SSS"
        let timestamp = fmt.string(from: Date())
        
        let pinfo = ProcessInfo()
        let pname = pinfo.processName
        let pid = pinfo.processIdentifier
        var tid = UInt64(0)
        pthread_threadid_np(nil, &tid)
        
        return "\(timestamp) \(pname)[\(pid):\(tid)] " + String(format: format, arguments: arguments)
    }
}
