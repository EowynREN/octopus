

import Foundation



// If "iAP_Enabled" value is set "true", you have to set "iAP_ID" value. This iAP provides RemoveAds. So you should get product_id from iTunesConnect for Non-Consumable iAP.

var iAP_Enabled = false
var iAP_ID = "Your product_id here for iAP"




// You should set your game link instead of  below link is mine

var YourGameLinkOnAppleStore = "https://itunes.apple.com/app/jetpack-challenge/id980879957?mt=8"




// You should set your link instead of  below link which is mine

var YourLinkOnAppleStore = "https://itunes.apple.com/us/artist/sabri-emre-esen/id970483133"





// If you want to show AdMob Ads you should set "AdMob_Enabled" to True. Then set your AdMob_ID instead of below id. 
// "Show_AdMobAd_TimePerFinishGame" value is very powerfull property. You can set what you want. I sugguest below setting. You should avoid showing ads each end of game.

var AdMob_Enabled = false
var AdMob_ID = "ca-app-pub-6086398049834837/1889299508"
var Show_AdMobAd_TimePerFinishGame = 3




// If you want to use PushNotification, you should set "Parse_SetApplicationId" and "Parse_ClientKey" instead of below values which are mines.
// If you dont want to use Push Notification, you just set "PushNotification_Enabled" value to false

var PushNotification_Enabled = false
var Parse_SetApplicationId = "mCWGeaYdfyGL8wztFoYPT2A0RA9W5wvVcWgj4YyE"
var Parse_ClientKey = "uPaQS3MuLRSwJ8gBEzKZ1ngLuOdS4CHbzNrIL0ZN"




// You should set "LeaderBoard_ID" . Below value is mine.

var LeaderBoard_ID = "JetPackChallengeLeaderboard2"


// You can configure when levels will be open with below values.

var level2UnlockValue = 50
var level3UnlockValue = 1500
//var level4UnlockValue = 25
//var level5UnlockValue = 35
//var level6UnlockValue = 45
//var level7UnlockValue = 55



