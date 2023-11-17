//
//  DetailTableViewController.swift
//  sams social media APP part 2
//
//  Created by sam long on 11/16/23.
//

import UIKit

class DetailTableViewController: UITableViewController {

    var posts: [Post] = [
        Post(title: "Volunteering Experience", bodyText: "Spent the day volunteering at a local shelter. Helping others is truly fulfilling!", date: "9/30/24", user: "CommunityHelper", comments: 8),
        Post(title: "Dance Workshop", bodyText: "Joined a contemporary dance workshop. It's amazing how movement tells a story!", date: "12/15/23", user: "DanceEnthusiast", comments: 6),
        Post(title: "Photography Expedition", bodyText: "Captured stunning landscapes on a photography expedition. Nature's beauty knows no bounds!", date: "1/8/24", user: "Shutterbug", comments: 11),
        Post(title: "Yoga Retreat", bodyText: "Found inner peace at a serene yoga retreat. Namaste!", date: "2/20/24", user: "ZenSeeker", comments: 7),
        Post(title: "DIY Craft Session", bodyText: "Crafted handmade decorations for the house. Creativity knows no limits!", date: "3/10/24", user: "CraftyCreator", comments: 5),
        Post(title: "Culinary Exploration", bodyText: "Explored exotic cuisines from around the world. Each dish was a flavor adventure!", date: "4/5/24", user: "FoodieExplorer", comments: 8),
        Post(title: "Music Jam Session", bodyText: "Had an incredible jam session with fellow musicians. Music truly unites!", date: "5/19/24", user: "MelodyMaker", comments: 10),
        Post(title: "Acting Workshop", bodyText: "Explored the art of theater at an acting workshop. Stepping into different characters is thrilling!", date: "6/7/24", user: "StageStar", comments: 13),
        Post(title: "Gardening Adventure", bodyText: "Dug into gardening, planting a variety of blooms. Nature's beauty in my backyard!", date: "7/22/24", user: "GreenThumb", comments: 6),
        Post(title: "Adventure Park Thrills", bodyText: "Conquered thrilling rides at an adventure park. Adrenaline rush at its peak!", date: "8/14/24", user: "ThrillSeeker", comments: 12),
    ]

    var selectedPost: Post?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return posts.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "postID", for: indexPath) as! PostTableViewCell
        let post = posts[indexPath.row]
        cell.titleLabel.text = post.title
        cell.bodyTextView.text = post.bodyText
        cell.commentsLabel.text = "\(post.comments)"
        cell.userLabel.text = post.user
        cell.dateLabel.text = post.date
        cell.bodyTextView.isEditable = false
        

        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "postID", for: indexPath)
        return 250
    }
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
