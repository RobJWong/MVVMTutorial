//
//  CourseCell.swift
//  MVVMDemo
//
//  Created by Robert Wong on 1/10/19.
//  Copyright © 2019 Robert Wong. All rights reserved.
//

import UIKit

//responsibile for rendering rows
class CourseCell: UITableViewCell {
    
    var course: Course! {
        didSet {
            textLabel?.text = course.name
            
            if course.number_of_lessons > 35 {
                accessoryType = .detailDisclosureButton
                detailTextLabel?.text = "Lessons 30+ Check it out!"
            } else {
                detailTextLabel?.text = "Lessons: \(course.number_of_lessons)"
                accessoryType = .none
            }
        }
    }
    
    override func setHighlighted(_ highlighted: Bool, animated: Bool) {
        super.setHighlighted(highlighted, animated: animated)
        contentView.backgroundColor = isHighlighted ? .highlightColor : .white
        textLabel?.textColor = isHighlighted ? UIColor.white : .mainTextBlue
        detailTextLabel?.textColor = isHighlighted ? .white : .black
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: .subtitle, reuseIdentifier: reuseIdentifier)
        
        //cell customization
        textLabel?.font = UIFont.boldSystemFont(ofSize: 24)
        textLabel?.numberOfLines = 0
        detailTextLabel?.textColor = .black
        detailTextLabel?.font = UIFont.systemFont(ofSize: 20, weight: .light)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError()
    }
}
