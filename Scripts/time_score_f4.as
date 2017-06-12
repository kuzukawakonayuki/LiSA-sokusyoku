import flash.utils.Timer;
import flash.events.TimerEvent;
stop();
count_timer.stop();
//新規に〇を生成
var r:maru = new maru();

if(ans == 0){
	r.x = 44;
	r.y = 87;
}else if(ans == 1){
	r.x = 295.2;
	r.y = 87;
}else if(ans == 2){
	r.x = 44;
	r.y = 351.7;
}else if(ans == 3){
	r.x = 295.2;
	r.y = 351.7;
}

//〇を書くよ
this.addChild(r);

time_print = String(time_s) + "." + String(time_m) + " SEC";
wait_print = String(wait) +  "00 MSEC";
time_txt.text = time_print;
wait_txt.text = wait_print;
if(wait_set <= 3){
	wait_set = 3;
}

var wait_timer:Timer = new Timer(1000,1);
wait_timer.addEventListener(TimerEvent.TIMER,function (e:TimerEvent):void{

	trace("タイマー繰り返し実行:" + wait_timer.currentCount);

});

wait_timer.addEventListener(TimerEvent.TIMER_COMPLETE,function (e:TimerEvent):void{
	if(time_s == 0){
			if(time_m == 0){
				//gameover
				count_timer.stop();
				gotoAndPlay(320);
			}
	}

	if(time_s < 0){
		//gameover
		count_timer.stop();
		gotoAndPlay(320);
	}

	trace("タイマー完了");
	removeChild(r);
	gotoAndPlay(3);

});

wait_timer.start();
