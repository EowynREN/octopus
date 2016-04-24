//
//  MainMenuViewController.swift
//  DenemeGameWithBurak
//
//  Created by emre esen on 08/02/15.
//  Copyright (c) 2015 emre esen. All rights reserved.
//

import UIKit
import GameKit
import SpriteKit

class MainMenuViewController: UIViewController,GKGameCenterControllerDelegate {

    var BgTag: Int!
    var QuickPlayRandom:Int = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
//        if Model.sharedInstance == 
        
        
        if NSUserDefaults.standardUserDefaults().objectForKey("totalscore") != nil
        {
            
            Model.sharedInstance.totalscore = NSUserDefaults.standardUserDefaults().objectForKey("totalscore") as! Int
            
        }
        
        if NSUserDefaults.standardUserDefaults().objectForKey("ADCount") != nil
        {
            
            Model.sharedInstance.ADCount = NSUserDefaults.standardUserDefaults().objectForKey("ADCount") as! Int
            
        }
      
        if Model.sharedInstance.sound == true {
//        if GameScene.accessInstanceVariablesDirectly(bg_flag)
            SKTAudio.sharedInstance().playBackgroundMusic("backgroundmusic1.mp3")
//            SKTAudio.sharedInstance().playBackgroundMusic("haha.m4a")
            
        }
        
        
        
        if let storyboard = storyboard {
            _ = storyboard.instantiateViewControllerWithIdentifier("GameViewController") as! GameViewController

       
            
         if  Model.sharedInstance.totalscore > 50
            
        {
            
           QuickPlayRandom = 2
        }
            
         if  Model.sharedInstance.totalscore > 100
            
        {
            
            QuickPlayRandom = 3
        }
         if  Model.sharedInstance.totalscore > 200
            
        {
            
            QuickPlayRandom = 4
        }
        
        
        
        }
      
    
        let RandomBg = arc4random() % UInt32(QuickPlayRandom)
         BgTag = Int(RandomBg)
    
      
        authenticateLocalPlayer()
        // Do any additional setup after loading the view.
    }
    
  
    
    @IBAction func RateIt(sender: AnyObject) {
        
        var url:NSURL
        url = NSURL(string: YourGameLinkOnAppleStore)!
        UIApplication.sharedApplication().openURL(url)
       
    }
    

    
    @IBAction func GoInfoPage(sender: AnyObject) {
        
        if let storyboard = storyboard {
            let gameviewController1 = storyboard.instantiateViewControllerWithIdentifier("InfoPageViewController") as! InfoPageViewController
            navigationController?.pushViewController(gameviewController1, animated: true)
          
        }
        
    }
    //initiate gamecenter
    func authenticateLocalPlayer(){
        
        let localPlayer = GKLocalPlayer.localPlayer()
        
        localPlayer.authenticateHandler = {(viewController, error) -> Void in
            
            if (viewController != nil) {
                self.presentViewController(viewController!, animated: true, completion: nil)
            }
                
            else {
                //println((GKLocalPlayer.localPlayer().authenticated))
            }
        }
    }
    
    
    @IBAction func goToGameCenter(sender: AnyObject) {
        showLeader()
        
    }
    
    
    
    @IBAction func MoreGames(sender: AnyObject) {
        
        
        
        var url:NSURL
        url = NSURL(string: YourLinkOnAppleStore)!
        UIApplication.sharedApplication().openURL(url)
    }
    
    
    
    func showLeader() {
        let vc = self.view?.window?.rootViewController
        let gc = GKGameCenterViewController()
        gc.gameCenterDelegate = self
        vc?.presentViewController(gc, animated: true, completion: nil)
    }
    
    
    func gameCenterViewControllerDidFinish(gameCenterViewController: GKGameCenterViewController)
    {
        gameCenterViewController.dismissViewControllerAnimated(true, completion: nil)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
 

    
    func textFieldShouldReturn() -> Bool {
        self.view.endEditing(true)
        return false
    }
    
   
    override func prefersStatusBarHidden() -> Bool {
        return  true
    }
    
    @IBAction func startGame(sender: UIButton) {
        
        
              SKTAudio.sharedInstance().playSoundEffect("button_press.wav")
        if let storyboard = storyboard {
            let gameviewController1 = storyboard.instantiateViewControllerWithIdentifier("DifficultyViewController") as! DifficultyViewController
            
            navigationController?.pushViewController(gameviewController1, animated: true)
            
        }


        
        
    }
    

  

}
