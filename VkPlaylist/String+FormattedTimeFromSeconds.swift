//
//  String+FormattedTimeFromSeconds.swift
//  VkPlaylist
//
//  MIT License
//
//  Copyright (c) 2016 Ilya Khalyapin
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in all
//  copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
//  SOFTWARE.
//

import Foundation

extension String {
    
    static func formattedTimeFromSeconds(seconds: Double) -> String {
        let date = NSDate(timeIntervalSince1970: seconds)
        
        if seconds >= 3600 {
            timeFromSecondsDateFormatter.dateFormat = "HH:mm:ss"
        } else {
            timeFromSecondsDateFormatter.dateFormat = "mm:ss"
        }
        
        let result = timeFromSecondsDateFormatter.stringFromDate(date)
        
        return result.hasPrefix("0") ? result.substringWithRange(Range<String.Index>(result.startIndex.advancedBy(1)..<result.endIndex)) : result
    }
    
}