package {
	import flash.display.*;
	import flash.events.*;
	import flash.text.*
	import flash.utils.Dictionary;
	
	public class Main extends Sprite {
		private var _cost:Price = new Price(Util.randomNumBetween(5, 200));
		private var _payment:Price = new Price(Util.randomNumBetween(_cost.pounds + 5, _cost.pounds + 100));
		private var _change:Price = new Price(0);
		private var _gameText:TextField = new TextField();
		
		public function Main():void {
			if (stage) startGame();
			else addEventListener(Event.ADDED_TO_STAGE, startGame);
		}
		
		private function startGame(event:Event = null):void {
			removeEventListener(Event.ADDED_TO_STAGE, startGame);
			
			setupStage();
			
			_cost.addPennies(Util.randomNumBetween(0, 99));
			_payment.addPennies(Util.randomNumBetween(0, 99));
			updateText();
		}
		
		private function setupStage():void {
			win.visible = false;
			lose.visible = false;
			addListeners();
			stage.addChild(_gameText);
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
			if (_change.pounds == _payment.pounds - _cost.pounds && _change.pennies == _payment.pennies - _cost.pennies) showWin();
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
		
		private function updateText():void {
			_gameText.text = "Cost: " + _cost + "\nPayment: " + _payment + "\nChange: " + _change;
		}
	}
}