stop();
var BGM_M:Sound = new Sound();
var request_BGM_M:URLRequest = new URLRequest("bgm_stagebgm_10_hq.mp3");
BGM_M.load(request_BGM_M);
channel_M = BGM_M.play(0,9999);
gotoAndPlay(3);
