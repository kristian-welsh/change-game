package  {
	public class Price {
		private var _price:Number;
		public function Price(price:Number) {
			_price = Math.floor(price * 100) / 100;
		}
		
		public function get pounds():int {
			return Math.floor(_price);
		}
		
		public function get pennies():Number {
			return Math.floor((_price - pounds) * 100);
		}
		
		public function toString():String {
			return pennies < 10 ? "£" + pounds + ".0" + pennies : "£" + pounds + "." + pennies;
		}
		
		public function addPennies(number:uint):void {
			_price += (number / 100);
		}
		
		public function addPounds(number:uint):void {
			_price += number;
		}
	}
}