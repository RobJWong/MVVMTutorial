//
//  MVVM1FinalTests.swift
//  MVVM1FinalTests
//
//  Created by Robert Wong on 1/12/19.
//  Copyright © 2019 Robert Wong. All rights reserved.
//

import XCTest
@testable import MVVM1Final

class MVVM1FinalTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testCourseViewModel() {
        let course = Course(id: 0, name: "My Course Name", number_of_lessons: 10)
        let courseViewModel = CourseViewModel(course: course)
        
        // what is it that we want to test?
        XCTAssertEqual(course.name, courseViewModel.name)
        XCTAssertEqual("Lessons: \(course.number_of_lessons)", courseViewModel.detailTextString)
        XCTAssertEqual(.none, courseViewModel.accessoryType)
    }
    
    func testCourseViewModelLessonsOverThreshold() {
        let course = Course(id: 0, name: "My Course Name", number_of_lessons: 100)
        let courseViewModel = CourseViewModel(course: course)
        
        XCTAssertEqual("Lessons 30+ Check it Out!", courseViewModel.detailTextString)
        XCTAssertEqual(.detailDisclosureButton, courseViewModel.accessoryType)
    }

}
