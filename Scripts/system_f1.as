stop();
SB.addEventListener(MouseEvent.CLICK,SBc);
function SBc(event:MouseEvent):void {
	var SE_S:Sound = new Sound();
	var request_SE_S:URLRequest = new URLRequest("bgm_coinin_3.mp3");
	SE_S.load(request_SE_S);
	SE_S.play(0,1);
	gotoAndPlay(200);
}
