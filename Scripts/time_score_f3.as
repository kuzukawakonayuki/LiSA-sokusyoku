import flash.utils.Timer;
import flash.events.TimerEvent;

stop();

var wait:int = wait_set;
var count_timer:Timer = new Timer(100);
count_timer.addEventListener(TimerEvent.TIMER,function (e:TimerEvent):void{
	if(time_s == 0){
		if(time_m == 0){
			//gameover
			count_timer.stop();
			gotoAndPlay(240);
		}
	}

	if(time_s < 0){
		//gameover
		count_timer.stop();
		gotoAndPlay(240);
	}


	if(wait == 0){
		//gameset
		count_timer.stop();
		user_ans = 99;
		wait = 0;
		gotoAndPlay(4);
	}else{
		if(time_m <= 0){
			time_m = 9;
			time_s = time_s - 1;
			}else{
			time_m = time_m - 1;
		}
	}
	wait = wait - 1;

time_print = String(time_s) + "." + String(time_m) + " SEC";
wait_print = String(wait) + "00 MSEC";
time_txt.text = time_print;
wait_txt.text = wait_print;
});
count_timer.start();
