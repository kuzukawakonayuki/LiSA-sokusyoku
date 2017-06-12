stop();

var ans:int = 0;
var r_order:int = 0;
var user_ans:int =0;

var bonus_print:String = "not";
var score_rate_print:String = "not";
var score_print:String = "not";
var order_top:String = "not";
var order_down:String = "not";

if(score_rate == 0){
	score_rate = 1;
}

score_print = String(score);
score_txt.text = score_print;
score_rate_print = String(score_rate);
score_rate_txt.text = score_rate_print;
bonus_print = String(bonus);
bonus_txt.text = bonus_print;
//注文内容を決定する
ans = Math.floor(Math.random() * 4);
if(ans == 0){
	order_top = "ウインナーパン";
}else if(ans == 1){
	order_top = "フライドチキン";
}else if(ans == 2){
	order_top = "ポテト";
}else if(ans == 3){
	order_top = "から揚げ";
}
order_top_txt.text = order_top;
//文章表示
r_order = Math.floor(Math.random() * 5);
if(r_order == 0){
	order_down = "を下さい！！";
}else if(r_order == 1){
	order_down = "はありますか？";
}else if(r_order == 2){
	order_down = "をお願いします";
}else if(r_order == 3){
	order_down = "まだ残ってますか？";
}else if(r_order == 4){
	order_down = " オッス、お願い しま～す！"
}
order_down_txt.text = order_down;

B1.addEventListener(MouseEvent.CLICK,fc1);
function fc1(event:MouseEvent):void {
	user_ans = 0;
	gotoAndPlay(4);
}
B2.addEventListener(MouseEvent.CLICK,fc2);
function fc2(event:MouseEvent):void {
	user_ans = 1;
	gotoAndPlay(4);
}
B3.addEventListener(MouseEvent.CLICK,fc3);
function fc3(event:MouseEvent):void {
	user_ans = 2;
	gotoAndPlay(4);
}
B4.addEventListener(MouseEvent.CLICK,fc4);
function fc4(event:MouseEvent):void {
	user_ans = 3;
	gotoAndPlay(4);
}
