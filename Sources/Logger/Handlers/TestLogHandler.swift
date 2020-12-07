//
//  TestLogHandler.swift
//  Logger
//
//
//  Created by Madimo on 2019/12/11.
//  Copyright © 2019 Madimo. All rights reserved.
//

import Foundation

final class TestLogHandler: LogHandler {

    var identifier: String
    var outputLevel = Level.trace
    var isEnabled = true
    public lazy var filter: LogFilter = AllAcceptLogFilter()

    var lastLog: Log?

    init(identifier: String = "com.Madimo.Logger.TestLogHandler") {
        self.identifier = identifier
    }

    func write(_ log: Log) {
        lastLog = log
    }

}
