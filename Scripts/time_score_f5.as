stop();
import flash.utils.Timer;
import flash.events.TimerEvent;

var total_score:Number = 0;
var last_bonus:Number = 0;


var result_timer1:Timer = new Timer(1000,1);
result_timer1.addEventListener(TimerEvent.TIMER,function (e:TimerEvent):void{
	trace("タイマー繰り返し実行:" + result_timer1.currentCount);
});
result_timer1.addEventListener(TimerEvent.TIMER_COMPLETE,function (e:TimerEvent):void{
	trace("タイマー完了");
	var SE_R1:Sound = new Sound();
	var request_SE_R1:URLRequest = new URLRequest("se_coinget_1.mp3");
	SE_R1.load(request_SE_R1);
	SE_R1.play(0,1);
	var score_print_2 = String(score);
	result_score_txt.text = score_print;
});
result_timer1.start();

var result_timer2:Timer = new Timer(2000,1);
result_timer2.addEventListener(TimerEvent.TIMER,function (e:TimerEvent):void{
	trace("タイマー繰り返し実行:" + result_timer2.currentCount);
});
result_timer2.addEventListener(TimerEvent.TIMER_COMPLETE,function (e:TimerEvent):void{
	trace("タイマー完了");
	var SE_R1:Sound = new Sound();
	var request_SE_R1:URLRequest = new URLRequest("se_coinget_1.mp3");
	SE_R1.load(request_SE_R1);
	SE_R1.play(0,1);
	var print_max_rate:String = String(max_rate);
	max_rate_txt.text = print_max_rate;
	max_rateto_txt.text = print_max_rate;
});
result_timer2.start();

var result_timer3:Timer = new Timer(3000,1);
result_timer3.addEventListener(TimerEvent.TIMER,function (e:TimerEvent):void{
	trace("タイマー繰り返し実行:" + result_timer3.currentCount);
});
result_timer3.addEventListener(TimerEvent.TIMER_COMPLETE,function (e:TimerEvent):void{
	trace("タイマー完了");
	var SE_R1:Sound = new Sound();
	var request_SE_R1:URLRequest = new URLRequest("se_coinget_1.mp3");
	SE_R1.load(request_SE_R1);
	SE_R1.play(0,1);
	var print_max_bonus:String = String(max_bonus);
	max_bonus_txt.text = print_max_bonus;
	max_bonusto_txt.text = print_max_bonus;
});
result_timer3.start();

var result_timer4:Timer = new Timer(4000,1);
result_timer4.addEventListener(TimerEvent.TIMER,function (e:TimerEvent):void{
	trace("タイマー繰り返し実行:" + result_timer4.currentCount);
});
result_timer4.addEventListener(TimerEvent.TIMER_COMPLETE,function (e:TimerEvent):void{
	trace("タイマー完了");
	var SE_R1:Sound = new Sound();
	var request_SE_R1:URLRequest = new URLRequest("se_coinget_1.mp3");
	SE_R1.load(request_SE_R1);
	SE_R1.play(0,1);
	last_bonus = 100 * max_rate * max_bonus;
	total_score = score + last_bonus;
	var print_total_score:String = String(total_score);
	total_score_txt.text = print_total_score;
});
result_timer4.start();
