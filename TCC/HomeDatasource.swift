//
//  HomeDatasource.swift
//  TCC
//
//  Created by Gabriel M on 26/03/17.
//  Copyright © 2017 Gabriel M. All rights reserved.
//

import LBTAComponents

class HomeDatasource: Datasource {
    
    let users: [User] = {
        let maliUser = User(name: "Gabriel Malinosqui", username: "@malinosqui", bioText: "SOME MORE BIO TEXT", profileImage: #imageLiteral(resourceName: "profile_image"))
        let maliUser2 = User(name: "Gabriel Malinosqui", username: "@malinosqui", bioText: "SOME MORE BIO TEXT SOME MORE BIO TEXT SOME MORE BIO TEXT SOME MORE BIO TEXT SOME MORE BIO TEXT SOME MORE BIO TEXT ", profileImage: #imageLiteral(resourceName: "profile_image"))

        return [maliUser, maliUser2]
    }()
    
//    let words = ["Gabriel Malinosqui", "Gabriel Malinosqui", "Gabriel Malinosqui"]
    
    override func footerClasses() -> [DatasourceCell.Type]? {
        return [UserFooter.self]
    }
    
    override func headerClasses() -> [DatasourceCell.Type]? {
        return [UserHeader.self]
    }
    
    override func cellClasses() -> [DatasourceCell.Type] {
        return [UserCell.self]
    }
    
    override func numberOfItems(_ section: Int) -> Int {
        return users.count
    }
    
    override func numberOfSections() -> Int {
        return 2
    }
    
    override func item(_ indexPath: IndexPath) -> Any? {
        return users[indexPath.item]
    }
}
