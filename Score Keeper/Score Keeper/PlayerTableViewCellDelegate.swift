//
//  PlayerTableViewCellDelegate.swift
//  Score Keeper
//
//  Created by sam long on 11/13/23.
//

import UIKit

protocol PlayerTableViewCellDelegate: AnyObject {
    func didUpdateScore(_ newScore: Int, forPlayerAt indexPath: IndexPath)
    }


  
