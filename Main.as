package {
	import flash.display.*;
	import flash.events.*;
	import flash.text.*
	
	public class Main extends Sprite {
		private var _cost:Price;
		private var _payment:Price;
		private var _change:Price;
		private var _gameText:TextField;
		
		public function Main():void {
			if (stage) startGame();
			else addEventListener(Event.ADDED_TO_STAGE, startGame);
		}
		
		private function startGame(event:Event = null):void {
			win.visible = false;
			lose.visible = false;
			addListeners();
			removeEventListener(Event.ADDED_TO_STAGE, startGame);
			
			_cost = new Price(randomNumBetween(5, 200));
			_payment = new Price(randomNumBetween(_cost.pounds, _cost.pounds + 100));
			_change = new Price(0);
			_gameText = new TextField();
			stage.addChild(_gameText);
			updateText();
		}
		
		private function updateText():void {
			_gameText.text = "Cost: " + _cost + "\nPayment: " + _payment + "\nChange: " + _change;
		}
		
		private function addListeners():void {
			submit.addEventListener(MouseEvent.CLICK, finishGame);
			add1p.addEventListener(MouseEvent.CLICK, add1penny);
			add2p.addEventListener(MouseEvent.CLICK, add2penny);
			add5p.addEventListener(MouseEvent.CLICK, add5penny);
			add10p.addEventListener(MouseEvent.CLICK, add10penny);
			add20p.addEventListener(MouseEvent.CLICK, add20penny);
			add50p.addEventListener(MouseEvent.CLICK, add50penny);
			addP1.addEventListener(MouseEvent.CLICK, add1pound);
			addP2.addEventListener(MouseEvent.CLICK, add2pound);
			addP5.addEventListener(MouseEvent.CLICK, add5pound);
			addP10.addEventListener(MouseEvent.CLICK, add10pound);
			addP20.addEventListener(MouseEvent.CLICK, add20pound);
			addP50.addEventListener(MouseEvent.CLICK, add50pound);
		}
		
		private function finishGame(e:MouseEvent):void {
			if (_change.pounds == _payment.pounds - _cost.pounds) showWin();
			else showLoss();
		}
		
		private function showWin():void {
			win.visible = true;
		}
		
		private function showLoss():void {
			lose.visible = true;
		}
		
		private function add1penny(e:MouseEvent):void {
			_change.addPennies(1);
			updateText();
		}
		
		private function add2penny(e:MouseEvent):void {
			_change.addPennies(2);
			updateText();
		}
		
		private function add5penny(e:MouseEvent):void {
			_change.addPennies(5);
			updateText();
		}
		
		private function add10penny(e:MouseEvent):void {
			_change.addPennies(10);
			updateText();
		}
		
		private function add20penny(e:MouseEvent):void {
			_change.addPennies(20);
			updateText();
		}
		
		private function add50penny(e:MouseEvent):void {
			_change.addPennies(50);
			updateText();
		}
		
		private function add1pound(e:MouseEvent):void {
			_change.addPounds(1);
			updateText();
		}
		
		private function add2pound(e:MouseEvent):void {
			_change.addPounds(2);
			updateText();
		}
		
		private function add5pound(e:MouseEvent):void {
			_change.addPounds(5);
			updateText();
		}
		
		private function add10pound(e:MouseEvent):void {
			_change.addPounds(10);
			updateText();
		}
		
		private function add20pound(e:MouseEvent):void {
			_change.addPounds(20);
			updateText();
		}
		
		private function add50pound(e:MouseEvent):void {
			_change.addPounds(50);
			updateText();
		}
		
		private function randomNumBetween(minNum:Number, maxNum:Number):Number {
			return Math.floor(Math.random() * (maxNum - minNum + 1)) + minNum;
		}
	}
}