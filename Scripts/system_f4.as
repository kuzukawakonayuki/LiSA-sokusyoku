stop();
order_top_txt.text = order_top;
order_down_txt.text = order_down;
score_print = String(score);
score_txt.text = score_print;
score_rate_print = String(score_rate);
score_rate_txt.text = score_rate_print;
var order_last01:String = "test"
var time_bonus_print:String = "not"
var time_bonus_or_print:String = "not"

r_order = Math.floor(Math.random() * 5);
if(user_ans == ans){
	var SE01_T:Sound = new Sound();
	var request_SE01_T:URLRequest = new URLRequest("se_quizright_1.mp3");
	SE01_T.load(request_SE01_T);
	SE01_T.play(0,1);
	time_s = time_s + 1;
	bonus = bonus + 1;
	var s_score:Number = 0;
	s_score = 100 + bonus;
	score = score + s_score * score_rate;

	score_rate = time_s - 30;
	if(score_rate <= 0){
		score_rate = score_rate * -1;
	}
	if(score_rate == 0){
		score_rate = 1;
	}
	score_rate = score_rate * s_score * wait;
	time_bonus_or_print = "+"
	time_bonus_print = "1.0 SEC"
	wait_set = wait_set - 1;
	if(r_order == 0){
		order_last01 = "ありがとう！";
	}else if(r_order == 1){
		order_last01 = "また来ますね！";
	}else if(r_order == 2){
		order_last01 = "どうもです！";
	}else if(r_order == 3){
		order_last01 = "お金置いておきます～";
	}else if(r_order == 4){
		order_last01 = "ありがとナス！"
	}
}else{
	var SE01_F:Sound = new Sound();
	var request_SE01_F:URLRequest = new URLRequest("se_quizmistake_1.mp3");
	SE01_F.load(request_SE01_F);
	SE01_F.play(0,1);
	time_s = time_s - 1;
	bonus = 0;
	time_bonus_or_print = "-";
	time_bonus_print = "1.0 SEC";
	score_rate = 1;
	if(r_order == 0){
		order_last01 = "違いますけど…";
	}else if(r_order == 1){
		order_last01 = "売り切れですか？";
	}else if(r_order == 2){
		order_last01 = "コレジャナイ！";
	}else if(r_order == 3){
		order_last01 = "ないみたいですね";
	}else if(r_order == 4){
		order_last01 = "あのさぁ…　　（呆れ）"
	}
}
order_last_txt.text = order_last01;
bonus_print = String(bonus);
bonus_txt.text = bonus_print;
score_print = String(score);
score_txt.text = score_print;
or_txt.text = time_bonus_or_print;
time_bonus_txt.text = time_bonus_print;
if (max_rate <= score_rate){
	max_rate = score_rate;
}
if (max_bonus <= bonus){
	max_bonus = bonus;
}
