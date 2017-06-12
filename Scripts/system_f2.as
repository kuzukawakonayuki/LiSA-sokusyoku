stop();
var channel_M : SoundChannel;
var BGM_T:Sound = new Sound();
var request_BGM_T:URLRequest = new URLRequest("bgm_stagebgm_09_hq.mp3");
BGM_T.load(request_BGM_T);
var channel_T : SoundChannel = BGM_T.play(0,9999);
SB2.addEventListener(MouseEvent.CLICK,SB2c);
function SB2c(event:MouseEvent):void {
	channel_T.stop();

	gotoAndPlay(220);
}
