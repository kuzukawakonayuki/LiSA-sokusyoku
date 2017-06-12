stop();
import flash.net.URLRequest;
import flash.net.navigateToURL;
import flash.utils.escapeMultiByte;

channel_M.stop();
var BGM_E:Sound = new Sound();
var request_BGM_E:URLRequest = new URLRequest("arasuji_11.mp3");
BGM_E.load(request_BGM_E);
var channel_E : SoundChannel = BGM_E.play(0,9999);

Tweet_Button.addEventListener(MouseEvent.CLICK,TweetBc);
function TweetBc(event:MouseEvent):void {
	var tweet_score:String = String(total_score);
	var s:String = "https://twitter.com/intent/tweet?text=" +
	escapeMultiByte("【高速食堂-ｿｸｼｮｸ- for LiSA】\nScore:" + tweet_score + "Pt を獲得しました。\n https://goo.gl/pgzNNV");
	navigateToURL( new URLRequest(s), "_blank" )
}

Title_Button.addEventListener(MouseEvent.CLICK,TitleBc);
function TitleBc(event:MouseEvent):void {
	gotoAndPlay(1);
	channel_E.stop();
	gotoAndPlay(260);
}
